#include<stdio.h>/*scanf();*/
int main(){
    int testcase_number;
    printf("input a testcase number : ");
    /*
    since c99, the restrict keyword is a type qualifier used with pointers
    to tell the compiler that the pointer is the only reference to the object it points to for its lifetime in the current scope
    int scanf(const char*format,...);//until c99
    int scanf(const char*restrict format,...);//since c99 
    */
    scanf("%d", &testcase_number);

    printf("input the start_number end_number divisor : ");

    for(int i = 1; i <= testcase_number; i++){

        int start_number, end_number, divisor;

        scanf("%d%d%d", &start_number, &end_number, &divisor);

        int count = (end_number/divisor) - ((start_number - 1) / divisor);

        printf("case %d: %d\n", i, count);

    }

}
