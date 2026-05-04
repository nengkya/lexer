/*int socket(int domain, int type, int protocol);*/
#include<sys/socket.h>
int main(){
    int server_file_descriptor_that_points_to_an_open_resource_socket;

    /*int socket(int domain, int type, int protocol);*/
    server_file_descriptor_that_points_to_an_open_resource_socket=socket(AF_INET,SOCK_STREAM,0);


}
