OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
OUTPUT_ARCH(i386)

SECTIONS
{
	.text 0x08049000 : { *(.text) }
	__data_begin = .;
	.data 0x0804A000 : AT(ADDR(.text) + SIZEOF(.text))
		{ _data_begin = . ; *(.data); _data_end = .; }
	__data_end = __data_begin + SIZEOF(.data);
}

