
#test.s

.section .text
.globl _start
_start:
	movl %esp,%ebp
	subl $10000,%esp

	call allocate_init


#first print brk(0)
	movl $4, %edx
	movl %eax, %ecx
	movl $1, %ebx
	movl $4, %eax
	int $0x80


	#begin allocate id = 1
		pushl $171
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 4(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 2
		pushl $916
		call allocate
		addl $4,%esp
		movl %eax,8(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 8(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 3
		pushl $220
		call allocate
		addl $4,%esp
		movl %eax,12(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 12(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 4
		pushl $659
		call allocate
		addl $4,%esp
		movl %eax,16(%ebp)
	#end allocate
			
	#begin allocate id = 5
		pushl $947
		call allocate
		addl $4,%esp
		movl %eax,20(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 16(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 6
		pushl $341
		call allocate
		addl $4,%esp
		movl %eax,24(%ebp)
	#end allocate
			
	
#last print brk(0)
	
	movl $SYS_BRK,%eax
	movl 0,%ebx
	int $0x80

	movl $4, %edx
	movl %eax, %ecx
	movl $1, %ebx
	movl $4, %eax
	int $0x80



	#END OF THE TEST
	movl $0, %ebx
	movl $1, %eax
	int $0x80
