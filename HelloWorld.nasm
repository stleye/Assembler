; HelloWorld.nasm
; Author: Sebastian Tleye

global _start

section .text

_start:
	; write to a file descriptor
	; ssize_t write(int fd, const void *buf, size_t count);

	mov eax, 0x4		; eax has to contain the syscall number (0x4 = write)
	mov ebx, 0x1		; ebx will contain the stdout parameter (fd)
	mov ecx, message	; ecx will contain the pointer to Hello World
	mov edx, messageLen	; edx will contain the length of the text
	int 0x80		; interrupt operating system

	; exit - terminate the calling process
	; void _exit(int status)

	mov eax, 0x1		; eax has to contain the syscall number (0x1 = exit)
	mov ebx, 0		; ebx will contain the status parameter
	int 0x80		; interrupt operating system

section .text

	message: db "Hello World!", 0xA
	messageLen equ $-message
