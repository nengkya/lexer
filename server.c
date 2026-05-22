#include"stdio.h"
/*
int socket(int domain, int type, int protocol);
struct sockaddr_in;
*/
#include<netinet/in.h>
/*#define AF_INET 2*/
#define __STD_TYPE typedef
/*ssize_t is signed size_t*/
#ifndef __ssize_t_defined
    __STD_TYPE long int __ssize_t
    typedef __ssize_t ssize_t;
    #define __ssize_t_defined
#endif
/*typedef unsigned long int __size_t;*/
typedef uint32_t in_addr_t;
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
typedef unsigned int socklen_t;
int main(){
    struct in_addr {
        in_addr_t s_addr;
    };
    struct sockaddr_in {
        short          sin_family;   //address family (e.g., AF_INET for IPv4.sin_port)
        unsigned short sin_port;     //port number  (in network byte order)
        struct in_addr sin_addr;     //IPv4 address (in network byte order)
        char           sin_zero[8];  //padding to make it same size as sockaddr
    };
    struct sockadrr {
        sa_family_t sa_family;
        char sa_data[14];
    };
    struct sockaddr_in server_address;
    int server_file_descriptor_that_points_to_an_open_resource_socket, bind_status, listen_status, accepted_socket_file_descriptor;
    int server_address_length=sizeof(server_address);

    /*
    create socket file desscriptor
    socket() creates an endpoint for communication and returns a file descriptor that refers to that endpoint
    SOCK_STREAM use Transmission Control Protocol (TCP)
    SOCK_DGRAM use User Datagram Protocol (UDP)
    int socket(int domain, int type, int protocol);
    passing 0 tells the operating system to automatically select the default protocol for the given address family and socket type
    for AF_INET + SOCK_STREAM: the default is TCP
    for AF_INET + SOCK_DGRAM : the default is UDP
    return value on success, a file descriptor for the new socket is returned
    on error, -1 is returned, and errno is set to indicate the error
    */
    server_file_descriptor_that_points_to_an_open_resource_socket=socket(AF_INET,SOCK_STREAM,0);
    printf("server file descriptor number: %d\n",server_file_descriptor_that_points_to_an_open_resource_socket);

    /*
    bind the socket to the port
    int bind(int socket_file_descriptor, const struct sockaddr * socket_address, socklen_t address_length);
    return value on success, 0 returned
    on error, -1 returned and errno is set to indicate the error
    */
    bind_status = bind(server_file_descriptor_that_points_to_an_open_resource_socket, (struct sockaddr*)&server_address, sizeof(server_address));
    printf("bind status: %d\n", bind_status);

    /*
    listening for clients
    int listen(int socket_file_descriptor, int backlog); 
    on success, 0 returned
    on error, -1 returned and errno is set to indicate the error
    */
    listen(server_file_descriptor_that_points_to_an_open_resource_socket, 3);
    printf("listening for clients status: %d\n", listen_status);

    /*
    accept first connection request on the queue for the listening socket, socket file descriptor
    create a new connected socket and returns a new file descriptor refering to that socket
    the newly created socket is not in the listening state
    the original socket file descriptor is unaffected by this call
    int accpet(int socket_file_descriptor, struct sockaddr * _Nullable restrict server_address, socklen_t * _Nullable restrict address_length, int flags);

    return value on success, these system call return a file descriptor for the accepted socket (a non negative integer)
    on error, -1 return and errno is set to indicate the error
    */
    accepted_socket_file_descriptor =
        accept(server_file_descriptor_that_points_to_an_open_resource_socket, (struct sockaddr*)&server_address, (socklen_t*)&server_address_length);
    
    /*
    transmit a message to another socket
    use a semicolon-delimited (defined, marked) parameter list to define a relationship between the size variable and the buffer[] array
    matrix_ * matrix_insert_value(int n; double a[][n], int m, int n);
    ssize_t send(size_t size; int socket_file_descriptor, const void buffer[size], size_t buffer_size, int flags);

    */




}














