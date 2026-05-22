#define AF_INET 2
typedef unsigned short __kernel_socket_address_family_type;
typedef __kernel_socket_address_family_type socket_address_family_type;
struct socket_address_internet {
             short socket_internet_family;
    unsigned short socket_internet_port;
             char  socket_internet_byte_padding[8];
};
struct socket_address {
    socket_address_family_type socket_address_family;
    char socket_address_data[14];
};


int main(){

    struct socket_address_internet server_address;
    
    server_address.socket_internet_family = AF_INET;





}
