#include"stdio.h"
#include<stdlib.h>

struct person {
    int name;
    struct person * friend;
};


int main() {

    struct person * Joanne = (struct person *)malloc(sizeof * Joanne);

    Joanne->name = 1;

    printf("%d\n", Joanne->name);


}
