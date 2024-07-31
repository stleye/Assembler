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

  cmp rsi, 0
  je return_one

loop_start:

  imul rdi

  add [result+8], rax
  adc [result], rdx

  loop loop_start

end_loop:

  ret

return_one:
  mov qword [result], 0
  mov qword [result+8], 1
  jmp end_loop

main:

  mov rdi, -3
  mov rsi, 2
  call power

  mov rdi, 0
  call exit
