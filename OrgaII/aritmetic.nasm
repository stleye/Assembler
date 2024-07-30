global _start

section .text
_start:

    mov eax, -32
    mov rsi, bigNumber
    cdqe

    add qword [rsi], rax
    

    mov eax, 60
    xor edi, edi
    SYSCALL

    


section .data
    bigNumber: dq 0xFF23112399882233

    helloWorld: db "Hello World!", 0xA
    len: equ $-helloWorld
