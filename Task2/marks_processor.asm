; Task 2 - Version 2
; Calculate the total of 10 student marks

section .data

marks db 0,39,40,55,69,70,85,100,62,47
count equ 10
highest db 0
lowest  db 100
average dq 0

total dq 0

section .text
global _start

_start:

    xor rax, rax          ; total = 0
    xor rcx, rcx          ; index = 0

loop_marks:

    cmp rcx, count
    jge done

    ; Load current mark into RBX
    movzx rbx, byte [marks + rcx]

    ; Add mark to total
    add rax, rbx

    ; ----- Highest -----

    cmp bl, [highest]
    jle check_lowest

    mov [highest], bl

check_lowest:

    ; ----- Lowest -----

    cmp bl, [lowest]
    jge continue_loop

    mov [lowest], bl

continue_loop:

    inc rcx
    jmp loop_marks

done:

    mov [total], rax

    ; ----- Average -----

    xor rdx, rdx        ; Clear remainder register
    mov rbx, count      ; Divisor = 10
    div rbx             ; RAX = total / 10

    mov [average], rax

    mov rax, 60
    xor rdi, rdi
    syscall
