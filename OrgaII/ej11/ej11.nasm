section .bss
  result resq 2 ; Reserve 2 qwords

section .text
  extern printf
  extern exit
  global main
  global suma

suma:

  mov qword [result], 0
  mov qword [result+8], 0

  mov rax, [rdi]
  add rax, [rsi]
  mov [result], rax

  mov rax, [rdi+8]
  adc rax, [rsi+8]
  mov [result+8], rax

  ret

main:

  lea rdi, [superlong_a]
  lea rsi, [superlong_b]
  call suma

  mov rdi, format
  mov rsi, [result+8]
  mov rdx, [result]
  call printf

  mov rdi, 0
  call exit


section .data

  superlong_a:
    dq 0x1122334411223344
    dq 0x4455667744556677

  superlong_b:
    dq 0x8899AABB8899AABB
    dq 0xCCDDEEFFCCDDEEFF

  format db 'Result: %016lx %016lx', 10, 0
