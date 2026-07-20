; Task 2 - Student Marks Processor
; Version 1 - Calculate Total

section .data

marks db 0,39,40,55,69,70,85,100,62,47
count equ 10

total dq 0

section .text
global _start

_start:

    xor rax, rax        ; running total
    xor rcx, rcx        ; array index

sum_loop:

    cmp rcx, count
    jge finished

    movzx rbx, byte [marks + rcx]
    add rax, rbx

    inc rcx
    jmp sum_loop

finished:

    mov [total], rax

    mov rax, 60
    xor rdi, rdi
    syscall
