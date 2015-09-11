.section .data
value:
	.long 100

.extern __data_begin, 4 
.extern __data_end, 4 

.section .text
.global _start
_start:
	movl $1, %eax
	movl $100, %ebx
	int $0x80
