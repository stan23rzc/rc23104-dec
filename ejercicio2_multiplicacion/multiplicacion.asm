; multiplicacion.asm
section .data
    num1 db 6
    num2 db 7
    result dw 0

section .text
    global _start

_start:
    mov al, [num1]
    mov bl, [num2]
    mul bl          ; AX = AL * BL (resultado en AX)
    mov [result], ax

    ; Salir
    mov eax, 1
    int 0x80
