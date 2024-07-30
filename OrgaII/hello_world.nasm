global _start

section .text
_start:
    
    mov rax, 4
    mov rbx, 1
    mov rcx, helloWorld
    mov rdx, len
    times 20 int 0x80

    mov rax, 0x1
    mov rbx, 0
    int 0x80

section .data
    helloWorld: db "Hello World!", 0xA
    len: equ $-helloWorld
