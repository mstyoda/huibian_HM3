git pull
as -gstabs -o newalloc.o newalloc.s --32
as -gstabs -o test.o test.s --32
as -gstabs -o base.o base.s --32
ld -dynamic-linker /lib/ld-linux.so.2 -lc -m elf_i386 -o test2 test.o newalloc.o base.o
./test2