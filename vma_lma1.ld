OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
OUTPUT_ARCH(i386)

SECTIONS
{
	.text 0x5000	: { *(.text) }
	.data 0x8000	: { *(.data) }
}

