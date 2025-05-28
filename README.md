**UNIVERSIDAD DE EL SALVADOR
Facultad Multidisciplinaria De Occidente
Departamento de Ingeniería y Arquitectura
Ingeniería en Desarrollo de Software**

**Carnet**: rc23104  
**Nombre**: Wilson Stanley Ramirez Capacho

**Asignatura**: Diseño y Estructura de Computadoras  
**Ciclo**: I/2025  

# PORTAFoLIO DE GUIA DE EJERCICIOS EN ENSAMBLADOR DEL 1 AL 3 EN GNU/Linux

Este repositorio contiene tres programas escritos en lenguaje ensamblador utilizando la sintaxis NASM, como parte de una actividad práctica orientada a aplicar los conocimientos básicos de operaciones aritméticas con distintos tamaños de registro (8, 16 y 32 bits).

## Objetivo

Aplicar los conocimientos obtenidos sobre los fundamentos del lenguaje ensamblador en sistemas GNU/Linux para resolver problemas matemáticos básicos.

## Estructura de los programas

### 1. `resta.asm` – Resta de tres enteros (registros de 16 bits)
Resta tres números enteros almacenados en memoria usando registros de 16 bits (`AX`).

- Operación: `result = num1 - num2 - num3`

### 2. `multiplicacion.asm` – Multiplicación de dos enteros (registros de 8 bits)
Multiplica dos números de 8 bits utilizando `AL` y `BL`, resultado en `AX`.

- Operación: `result = num1 * num2`

### 3. `division.asm` – División de dos enteros (registros de 32 bits)
Divide un número entero de 32 bits entre otro, usando `EAX` y `EBX`, resultado en `EAX`.

- Operación: `result = num1 / num2`

---

## Cómo compilar y ejecutar

Asegúrate de tener instalado NASM y usar arquitectura de 32 bits:

###  Compilación

```bash
nasm -f elf32 resta.asm -o resta.o
ld -m elf_i386 resta.o -o resta

nasm -f elf32 multiplicacion.asm -o multiplicacion.o
ld -m elf_i386 multiplicacion.o -o multiplicacion

nasm -f elf32 division.asm -o division.o
ld -m elf_i386 division.o -o division
