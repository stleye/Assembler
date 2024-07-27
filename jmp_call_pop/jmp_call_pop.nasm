global _start

section .text

_start:

  jmp call_shellcode

shellcode:

  pop rsi

  xor rax, rax
  mov al, 1
  mov rdi, rax
  mov rdx, rdi
  mov rdx, 13
  syscall

  xor rax, rax
  add rax, 60
  xor rdi, rdi

  syscall

call_shellcode:
  call shellcode
	hello_world: db 'Hello World!!', 0xA
