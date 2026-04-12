#include"stdio.h"
#include<pthread.h>
/*
c11
provides a way to choose one of several expressions at compile time, based on a type of a controlling expression
syntax
_Generic(controlling-expression,association-list)
where association-list is a comma-separated list of associations, each of which has the syntax
type-name:expression		
default:expression		
where
type-name -	any complete object type that isn't variably-modified (that is, not vla or pointer to vla)
controlling-expression - any expression (except for the comma operator) whose type must be compatible with one of the type-names
                         if the default association is not used
expression - any expression (except for the comma operator) of any type and value category

no two type-names in the association-list may specify compatible types. there may be only one association that uses the keyword default.
if default is not used and none of the type-names are compatible with the type of the controlling expression, the program will not compile.
*/
#define type_of(x) _Generic(x,long unsigned int:"long unsigned integer",char*:"char*",char[]:"char")
int main(){
    char mutable_string[];
    pthread_t portable_operating_system_interface_for_unix_type;
    printf("%s\n",_Generic(portable_operating_system_interface_for_unix_type,long unsigned int:"long unsigend integer"));
    printf("%s\n",type_of("portable_operating_system_interface_for_unix_type"));
}
