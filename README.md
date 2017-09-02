# huibian_HM3

##学号：2015011340 姓名：骆轩源

##以下命令在64位操作系统可以运行

`as -gstabs -o alloc.o alloc.s --32`
`as -gstabs -o test.o test.s --32`
`as -gstabs -o base.o base.s --32`
`ld -m elf_i386 -o test test.o alloc.o base.o`
