
#test.s
msg:
	.asciz "brk(0):%d\n"
.section .text
.globl _start
_start:
	movl %esp,%ebp
	subl $10,%esp

	call allocate_init


#first print brk(0)
	pushl %eax
	pushl $msg
	call printf
	addl $8,%esp


	#begin allocate id = 1
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 1
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 1
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 1
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 1
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 1
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 1
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 1
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 1
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 1
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			

#last print brk(0)
	movl $45, %eax
	movl $0, %ebx
	int $0x80

	pushl %eax
	pushl $msg
	call printf
	addl $8,%esp



	#END OF THE TEST
	movl $0, %ebx
	movl $1, %eax
	int $0x80
