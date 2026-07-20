; hello.asm
; BIT4220 Task 1
; Simple Hello World program (64-bit Linux)

section .data
    message db "Hello, World!", 10
    length equ $ - message

section .text
    global _start

_start:

    ; write(stdout, message, length)

    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, message
    mov rdx, length
    syscall

    ; exit(0)

    mov rax, 60         ; sys_exit
    xor rdi, rdi
    syscall
