/*
.ascii "string"
.asciz "string"
.asciz is just like .ascii, but each string is followed by a zero byte
.string "str", .string8 "str",  .string16 "str", .string32 "str",  .string64 "str"
*/
input:.asciz "ab12$"

.global _start
_start:
    /*
    effective address is a technical term in x86: it means the "offset" part of a segment:offset logical address

    mov vs load effective address:
    the key difference from the mov instruction is that mov with a memory operand (e.g., mov eax, [address]) fetches the value stored at the address,
    while lea (e.g., lea eax, [address]) gets the address itself.

    mov is like dereferencing a pointer *ptr, while lea is like using the address-of operator (&ptr)

    lea instruction places the address specified by its first operand into the register specified by its second operand
    the contents of the memory location are not loaded, only the effective address is computed and placed into the register
    this is useful for obtaining a pointer into a memory region or to perform simple arithmetic operations

    register_source_index = address of register_instruction_pointer
    rsi = pointer to input string
    */
    lea (%rip),%rsi

    /*
    move zero-extended byte to quad word
    movb,movw,movl,movq: move data from source to destination of the same size
    movzbw,movzbl,movzwl,movzbq,movzwq:
        move from shorter to longer (b=8 bit,w=16bit,l=32bit,q=64 bit), extending with zeros movs does the same but with sign-extension
    movzbq (%rsi),%rax
    mov=move
    z=zero-extend
    b=source is byte (8 bits)
    q=destination is quadword (64 bits)
    0x41;ascii'A'
    rax=0x0000000000000041
    load current character into rax
    */
    movzbl (%rsi),%eax

exit:
    mov $0x3c,%rax /*syscall exit*/
    xor %rdi,%rdi  /*return 0;*/
    syscall
