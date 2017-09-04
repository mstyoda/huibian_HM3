as -gstabs -o alloc_with_clear.o alloc_with_clear.s --32
as -gstabs -o test.o test.s --32
as -gstabs -o base.o base.s --32
ld -dynamic-linker /lib/ld-linux.so.2 -lc -m elf_i386 -o test2 test.o alloc_with_clear.o base.o
./test2
