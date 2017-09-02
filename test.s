
#test.s
msg:
	.ascii "brk(0):%d\n\0"

.section .text
.globl _start
_start:
	movl %esp,%ebp
	subl $10000,%esp

	call allocate_init


#first print brk(0)
	pushl %eax
	pushl $msg
	call printf
	addl $8,%esp

	#begin allocate id = 1
		pushl $710
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
		pushl $515
		call allocate
		addl $4,%esp
		movl %eax,8(%ebp)
	#end allocate
			
	#begin allocate id = 3
		pushl $350
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
		pushl $803
		call allocate
		addl $4,%esp
		movl %eax,16(%ebp)
	#end allocate
			
	#begin allocate id = 5
		pushl $683
		call allocate
		addl $4,%esp
		movl %eax,20(%ebp)
	#end allocate
			
	#begin allocate id = 6
		pushl $859
		call allocate
		addl $4,%esp
		movl %eax,24(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 8(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 20(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			

#last print brk(0)
	
	movl $45,%eax
	movl 0,%ebx
	int $0x80

	pushl %eax
	pushl $msg
	call printf
	addl $8,%esp

	#END OF THE TEST
	movl $0, %ebx
	movl $1, %eax
	int $0x80
