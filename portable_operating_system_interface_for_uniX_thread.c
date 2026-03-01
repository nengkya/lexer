#include"pthread.h"/*pthread_t*/
#include<stdio.h>


void*portable_operating_system_interface_for_uniX_thread_worker_function(void*argument){
    int*value=argument;
    printf("%d\n",*value);
}


int main(){
    /*typedef unsigned long int pthread_t*/
    pthread_t portable_operating_system_interface_for_uniX_thread_id;

    /*
    typedef struct __pthread_attr_s{
        int    __detach_state;
        int    __schedule_policy;
        struct __schedule_parameter __schedule_parameter;
        int    __inherit_schedule;
        int    __scope;
        size_t __guardsize;
        int    __stack_address_set;
        void*  __stack_address;
        size_t __stack_size;
    }pthread_attr_t;

    int pthread_create(pthread_t*restrict thread,
                       const pthread_attr_t*restrict attribute,
                       typeof(void*(void*))*start_routine,
                       void*restrict argument)

    typeof(void*(void*))*start_routine means start_routine is a pointer to typeof a function that takesa void* as an argument and returning void*

    int pthread_create(pthread_t*restrict thread,
                       const pthread_attr_t*restrict attribute,
                       void*(*start_routine)(void*),
                       void*restrict argument);

    start_routine is a pointer to a function that takes a void* as an argument, returning void* 

    pthread_create() function starts a new thread in the calling process
    the new thread starts execution by invoking start_routine();
    argument is passed as the sole argument of start_routine()

    if attribute is NULL, then the thread is created with default attributes

    on success, pthread_create() returns 0;
    on error, it returns an error number, and the contents of *thread are undefined
    */
    pthread_create(&portable_operating_system_interface_for_uniX_thread_id,
                   (void*)0,
                   portable_operating_system_interface_for_uniX_thread_worker_function,
                   (void*)0);

    return 0;

}
