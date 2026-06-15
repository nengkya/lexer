#include<stdio.h>
#include"stdlib.h"


struct friend_entity {
    struct person * person;
    struct friend_entity * next;
};


struct person {
    int id;
    struct friend_entity * friends;
};


int main() {

    /*create person*/
    struct person * Alice = (struct person *)malloc(sizeof * Alice); (* Alice).id = 1;
    struct person * Bob   = (struct person *)malloc(sizeof * Bob  ); (* Bob  ).id = 2;
 
    /*create friends entity*/
    struct friend_entity * friend_entity = (struct friend_entity *)malloc(sizeof * friend_entity);

    (* friend_entity).person = Bob;

    (* friend_entity).next   = (* Alice).friends;

    (* Alice).friends = friend_entity;


    printf("(* Alice).id   = %2d\n", (* Alice).id);

    printf("sizeof * Alice = %2d\n", sizeof * Alice);

    free(friend_entity);
    free(Alice);free(Bob);

}
