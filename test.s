
#test.s

.section .text
.globl _start
_start:
	movl %esp,%ebp
	subl $10000,%esp

	call allocate_init


	#begin allocate id = 1
		pushl $262
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 2
		pushl $260
		call allocate
		addl $4,%esp
		movl %eax,8(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 8(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 4(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 3
		pushl $517
		call allocate
		addl $4,%esp
		movl %eax,12(%ebp)
	#end allocate
			

	movl %ebp,%esp
	popl %ebp
	ret

	

	#END OF THE TEST
	movl $0, %ebx
	movl $1, %eax
	int $0x80
