as -gstabs -o alloc.o alloc.s --32
as -gstabs -o test.o test.s --32
as -gstabs -o base.o base.s --32
ld -dynamic-linker /lib/ld-linux.so.2 -lc -m elf_i386 -o test test.o alloc.o base.o
time ./test
