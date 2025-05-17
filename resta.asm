; resta.asm
section .data
    num1 dw 20
    num2 dw 5
    num3 dw 3
    result dw 0

section .text
    global _start

_start:
    mov ax, [num1]
    sub ax, [num2]
    sub ax, [num3]
    mov [result], ax

    ; Salir
    mov eax, 1      ; syscall: exit
    int 0x80
