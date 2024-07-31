section .bss
  result resq 2 ; Reserve 2 qwords

section .text
  extern exit
  global main
  global power

power:

  mov qword [result], 0
  mov qword [result+8], 0
  
  mov rcx, rsi
  mov rax, 1

loop_start:

  dec rcx

  imul rdi

  add [result+8], rax
  adc [result], rdx

  jnz loop_start

  ret

main:

  mov rdi, -3
  mov rsi, 5
  call power

  mov rdi, 0
  call exit
