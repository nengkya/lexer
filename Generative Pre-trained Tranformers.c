#include<time.h>/*time((void*)0)*/
#include"stdlib.h"/*srand()*/
#include<stdio.h>
#define vocabulary_size 8
#define embedded_dimension 4
#define sequence_length 3
double token_embedding[vocabulary_size][embedded_dimension];
double weighted_query[embedded_dimension][embedded_dimension];
double weighted_key[embedded_dimension][embedded_dimension];
double weighted_value[embedded_dimension][embedded_dimension];
double weighted_output[embedded_dimension][vocabulary_size];
/*
to generate a number between 0 and n-1: rand() % n
generate random between 0 and 10
rand() % 10;
int rand(void);
*/
/*utility*/
double random_weight(){return(double)rand()/RAND_MAX-.5;}
void init_weights(){
    for(int i=0;i<vocabulary_size;++i)for(int j=0;j<embedded_dimension;++j)printf("%f\n",token_embedding[i][j]=random_weight());
    for(int i=0;i<embedded_dimension;++i)for(int j=0;j<embedded_dimension;++j){
        weighted_query[i][j]=random_weight();
        weighted_key[i][j]=random_weight();
        weighted_value[i][j]=random_weight();
    }
    for(int i=0;i<embedded_dimension;++i)for(int j=0;j<vocabulary_size;++j)weighted_output[i][j]=random_weight();
}
int main(){
    /*void srand(unsigned int seed)*/
    srand(time((void*)0));
    init_weights();
    int input[sequence_length]={1,2,3};
    double embeddings[sequence_length][embedded_dimension];
    for(int i=0;i<sequence_length;++i)for(int j=0;j<embedded_dimension;++j)
    return 0;
}
