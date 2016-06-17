# cmpxchg8btest.s - An example of the cmpxchg8b instruction
.section .data
data:
    .byte 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88

.section .text
.globl _start
_start:
    nop
    movl $0x44332211, %eax
    movl $0x88776655, %edx
    movl $0x11111111, %ebx
    movl $0x22222222, %ecx
    cmpxchg8b data
    movl $0, %ebx
    movl $1, %eax
    int $0x80
