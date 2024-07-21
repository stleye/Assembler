section .text
    global _start

  _start:
    mov rdx, 0
    mov rdx, [var1]
    mov [memory], rdx
    xor rdx, rdx
    mov rdx, [var2]
    mov [memory], rdx
    xor rdx, rdx
    

  
  section .data
    var1 db 12h
    var2 db 12h, 34h
    var3 dw 1234h
    var4 dw 1234h, 5678h

  section .bss
    memory: resb 8
