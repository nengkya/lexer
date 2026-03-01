/*
form feed, line feed, and carriage return are all control characters (or non-printing characters)
they dictate cursor or print head movement but serve distinct functions: 
carriage return (CR or \r): moves the cursor/print head to the beginning of the current line without advancing to the next line
line deed (LF or \n): moves the cursor/print head down to the next line while staying at the same horizontal position
                      in unix-like systems, a single LF character is used as a line ending
form feed (FF or \f): instructs a printer to eject the current page and continue printing at the top of the next page
                      this character is rarely used in modern computing, except in some specific legacy or text-processing contexts for page breaks
feature         carriage return (CR)                        line feed (LF)                       form feed (FF)
action          returns to start of current line            moves down one line                  advances to the next page
escape sequence	\r                                          \n                                   \f
modern use      part of Windows line endings (CRLF);        standard line ending in unix/macOS;  rarely used;
                sometimes used for specific cursor control  used in CRLF for Windows             mainly for page breaks in printing or text formatting
the combination of CRLF (\r\n) is the standard line ending for text files on Windows systems and network protocols like http
in contrast, unix and modern macOS use only LF (\n) for a new line

int isspace(int ch);
defined in header <ctype.h>
checks if the given character is either a standard white-space character:
space(0x20,' '),
form_feed(0x0c,'\f'),
line_feed(0x0a,'\n'),
carriage_return(0x0d,'\r'),
horizontal_tab(0x09,'\t'),
vertical_tab(0x0b,'\v'),
or a locale-specific white-space character e.g &nbsp
the behavior is undefined if the value of ch is not representable as unsigned char and is not equal to EOF
return non-zero value if the character is a whitespace character, zero otherwise
*/
#include"ctype.h"
#include<stdio.h>
int main(){
    if (isspace('\r')) printf("space\n");
    return 0;
}
