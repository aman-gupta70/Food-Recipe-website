section .data
    num db 25    ; A number to be moved to registers

section .text
    global _start

_start:
    mov al, [num]   ; Load the number into AL
    mov bl, al      ; Move the value from AL to BL
    mov cl, bl      ; Move the value from BL to CL

    ; Exit system call
    mov eax, 60     ; Exit system call number (sys_exit)
    xor edi, edi    ; Status 0
    syscall