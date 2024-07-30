global _start

section .bss
  result resb 16 ; Reserve 16 bytes

section .text
  global _start
  global suma

suma:

  mov qword [result], 0

  xor rax, rax
  add rax, [rsi]
  adc rax, [rcx]

  mov [result+8], rax

  xor rax, rax

  adc rax, [rdi]
  adc rax, [rdx]

  mov [result], rax
  adc [result], 0

  xor rax, rax

  ret

_start:

  push ebp
  mov ebp, esp

  mov rdi, [superlong_a]
  mov rsi, [superlong_a + 8]

  mov rdx, [superlong_b]
  mov rcx, [superlong_b + 8]

  call suma

  mov esp, ebp
  pop ebp

  mov rax, 0

  ret


section .data

  superlong_a:
    dq 0x1122334411223344
    dq 0x4455667744556677

  superlong_b:
    dq 0x8899AABB8899AABB
    dq 0xCCDDEEFFCCDDEEFF
