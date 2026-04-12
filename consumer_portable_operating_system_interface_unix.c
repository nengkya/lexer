#include <stdio.h>
#include <pthread.h>
#include <stdbool.h>
#include <assert.h>

const int PRODUCE_COUNT = 5;
bool is_produced = false;
pthread_mutex_t mtx = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t prod_cond = PTHREAD_COND_INITIALIZER;
pthread_cond_t cons_cond = PTHREAD_COND_INITIALIZER;

void* consumer_routine_1(void* arg)
{
 while (1)
 {
  pthread_mutex_lock(&mtx);
  while (!is_produced)
  {
   pthread_cond_wait(&cons_cond, &mtx);
  }
  is_produced = false;
  puts("Production consumed by consumer 1!");
  pthread_cond_signal(&prod_cond);
  pthread_mutex_unlock(&mtx);
 }
 return NULL;
}

void* consumer_routine_2(void* arg)
{
 while (1)
 {
  pthread_mutex_lock(&mtx);
  while (!is_produced)
  {
   pthread_cond_wait(&cons_cond, &mtx);
  }
  is_produced = false;
  puts("Production consumed by consumer 2!");
  pthread_cond_signal(&prod_cond);
  pthread_mutex_unlock(&mtx);
 }
 return NULL;
}

void* producer_routine(void* arg)
{
 for (int i = 0; i < PRODUCE_COUNT; ++i)
 {
  pthread_mutex_lock(&mtx);
  while (is_produced)
  {
   pthread_cond_wait(&prod_cond, &mtx);
  }
  is_produced = true;
  puts("Production made !");
  pthread_cond_signal(&cons_cond);
  pthread_mutex_unlock(&mtx);
 }
 pthread_t* consumer_thds = (pthread_t*)arg;
 pthread_cancel(consumer_thds[0]);
 pthread_cancel(consumer_thds[1]);
 
 return NULL;
}

int main()
{
 pthread_t consumer_thds[2];
 pthread_t producer_thd;
 pthread_create(&consumer_thds[0], NULL, consumer_routine_1, NULL);
 pthread_create(&consumer_thds[1], NULL, consumer_routine_2, NULL);
 pthread_create(&producer_thd, NULL, producer_routine, 
  consumer_thds);
 pthread_join(consumer_thds[0], NULL);
 pthread_join(consumer_thds[1], NULL);
 pthread_join(producer_thd, NULL);
 
 puts("Process ended.");
 return 0;
}
