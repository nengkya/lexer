#include<stdio.h>
#include<time.h>
#include<stdlib.h>
int main(){
    size_t random_number;
    srand(time((void*)0));
    /*
    to generate a number between 0 and n-1: rand() % n
    generate random between 0 and 10
    rand() % 10;
    */
    random_number=rand();
    printf("the random number is %ld\n",random_number);
    printf("rand()%%10 is %ld\n", random_number%10);
}
