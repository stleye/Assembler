global _start

section .bss
  result resq 2 ; Reserve 2 qwords

section .text
  global _start
  global suma

suma:

  mov qword [result], 0

  add qword [result+8], rsi
  adc qword [result+8], rcx

  adc qword [result], rdi
  adc qword [result], rdx

  xor rax, rax

  ret

_start:

  push rbp
  mov rbp, rsp

  mov rdi, [superlong_a]
  mov rsi, [superlong_a + 8]

  mov rdx, [superlong_b]
  mov rcx, [superlong_b + 8]

  call suma

  mov rsp, rbp
  pop rbp

  mov rax, 0

  ret


section .data

  superlong_a:
    dq 0x1122334411223344
    dq 0x4455667744556677

  superlong_b:
    dq 0x8899AABB8899AABB
    dq 0xCCDDEEFFCCDDEEFF
