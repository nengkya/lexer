#include"stdio.h"
/*
int socket(int domain, int type, int protocol);
struct sockaddr_in;
*/
#include<netinet/in.h>
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
typedef unsigned int socklen_t
int main(){
    int server_file_descriptor_that_points_to_an_open_resource_socket;
    struct in_addr{
        in_addr_t s_addr;
    };
    struct sockaddr_in{
        sa_family_t    sin_family; //AF_INET
        in_port_t      sin_port;   //port number
        struct in_addr sin_addr;   //ip4 address
    }; 
    struct sockaddr_in server_address;

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
    printf("%d\n",server_file_descriptor_that_points_to_an_open_resource_socket);

    /*
    struct sockaddr_in {
        short          sin_family;   //address family (e.g., AF_INET for IPv4.sin_port)
        unsigned short sin_port;     //port number  (in network byte order)
        struct in_addr sin_addr;     //IPv4 address (in network byte order)
        char           sin_zero[8];  //padding to make it same size as sockaddr
    };
    */

    /*
    bind the socket to the port
    int bind(int socket_file_descriptor, const struct sockaddr * socket_address, socklen_t address_length);
    */




}














