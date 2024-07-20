global _start

section .text

_start:

	; print on screen

  mov al, 1
  mov rdi, 1
  mov rsi, hello_world
  mov rdx, length
  syscall

	; exit gracefully

  mov rax, 60
  mov rdi, 0
  syscall


section .data

	hello_world: db 'Hello World!!', 0xA
  length: equ $-hello_world
