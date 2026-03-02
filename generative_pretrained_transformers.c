#include<stdlib.h>/*srand*/
#include"time.h"
#define RAND_MAX 2147483647/*0x7FFFFFFF*/
#define vocabulary_size 8
#define embedded_dimension 4
double token_embedding[vocabulary_size][embedded_dimension];
double weight_query_matrix[embedded_dimension][embedded_dimension];
double weight_key___matrix[embedded_dimension][embedded_dimension];
double weight_value_matrix[embedded_dimension][embedded_dimension];
double weight_output_matrix[embedded_dimension][vocabulary_size];

double random_weight(){return ((double)rand()/RAND_MAX)-.5;}
void init_weights(){
    for(int i=0;i<vocabulary_size;++i)for(int j=0;j<embedded_dimension;++j)token_embedding[i][j]=random_weight();
    for(int i=0;i<embedded_dimension;++i)for(int j=0;j<embedded_dimension;++j){
        weight_query_matrix[i][j]=random_weight();
        weight_key___matrix[i][j]=random_weight();
        weight_value_matrix[i][j]=random_weight();
    }







}
int main(){
    srand(time((void*)0));
    init_weights();






}
