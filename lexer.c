#include"stddef.h"/*size_t*/
#include<ctype.h>/*isspace();*/
enum token_type{token_int,token_identifier,token_end_of_file};
struct lexer{const char*input;size_t position;};
struct token{enum token_type token_type;};


char peek(struct lexer*lexer_is_a_pointer_to_a_struct_lexer){

    return (*lexer_is_a_pointer_to_a_struct_lexer).input[(*lexer_is_a_pointer_to_a_struct_lexer).position];

}


char advance(struct lexer*lexer_is_a_pointer_to_a_struct_lexer){

    return (*lexer_is_a_pointer_to_a_struct_lexer).input[(*lexer_is_a_pointer_to_a_struct_lexer).position++];

}


void skip_whitespace(struct lexer*lexer_is_a_pointer_to_a_struct_lexer){

    while(isspace(peek(lexer_is_a_pointer_to_a_struct_lexer)))advance(lexer_is_a_pointer_to_a_struct_lexer);

}


struct token make_token(enum token_type token_type, const char*start,size_t length){









}




struct token get_next_token(struct lexer*lexer_is_a_pointer_to_a_struct_lexer){

    skip_whitespace(lexer_is_a_pointer_to_a_struct_lexer);

    size_t start=(*lexer_is_a_pointer_to_a_struct_lexer).position;

    char character=advance(lexer_is_a_pointer_to_a_struct_lexer);

    //if (character=='\0') return make_token(token_end_of_file,"",0);



}


int main(){

    struct lexer lexer={.input=(const char*)"sum=10+value*3",.position=(size_t)0};
    struct token token;

    do{
        token=get_next_token(&lexer);



    }while(token.token_type!=token_end_of_file);

    


}
