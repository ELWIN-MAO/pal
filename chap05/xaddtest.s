.section .data
value:
    .int 10
.section .text
.globl _start
_start:
    nop
    movl $100, %eax
    movl $200, %ebx
    xadd %eax, %ebx
    xadd %ebx, value
    movl $1, %eax
    int $0x80
