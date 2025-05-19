; division.asm
section .data
    num1 dd 100
    num2 dd 5
    result dd 0

section .text
    global _start

_start:
    mov eax, [num1] ; dividendo
    xor edx, edx    ; limpiar edx
    mov ebx, [num2] ; divisor
    div ebx         ; resultado en EAX, resto en EDX
    mov [result], eax

    ; Salir
    mov eax, 1
    int 0x80
