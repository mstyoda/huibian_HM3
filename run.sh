as -gstabs -o alloc.o alloc.s --32
as -gstabs -o test.o test.s --32
as -gstabs -o base.o base.s --32
ld -m elf_i386 -o test test.o alloc.o base.o
