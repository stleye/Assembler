global _start

section .text

_start:

	; print on screen

  mov al, 1
  mov rdi, 1
  mov rsi, hello_world
  mov rdx, length
  syscall

  mov rax, [var1]
  mov rbx, [var2]

	; exit gracefully

  mov rax, 60
  mov rdi, 0
  syscall


section .data

	hello_world: db 'Hello World!!', 0xA
  length: equ $-hello_world

  var1: db 0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88
  var2: db 0x88,0x77,0x66,0x55,0x44,0x33,0x22,0x11
