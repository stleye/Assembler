section .bss
  result resq 2 ; Reserve 2 qwords

section .text
  extern exit
  global main
  global power

power:

  mov qword [result], 0
  mov qword [result+8], 0
  
  mov rax, 1
  imul rdi      ;rdx:rax = rax * rdi
  mov [result], rdx
  mov [result+8], rax

  ret

main:

  mov rdi, -3
  mov rsi, 5
  call power

  mov rdi, 0
  call exit
