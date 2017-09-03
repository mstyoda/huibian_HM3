
#test.s
msg:
	.asciz "brk(0):%d\n"
.section .text
.globl _start
_start:
	movl %esp,%ebp
	subl $5000,%esp

	call allocate_init


#first print brk(0)
	pushl %eax
	pushl $msg
	call printf
	addl $8,%esp


	#begin allocate id = 1
		pushl $13
		call allocate
		addl $4,%esp
		movl %eax,4(%ebp)
	#end allocate
			
	#begin allocate id = 2
		pushl $80
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
		pushl $97
		call allocate
		addl $4,%esp
		movl %eax,12(%ebp)
	#end allocate
			
	#begin allocate id = 4
		pushl $72
		call allocate
		addl $4,%esp
		movl %eax,16(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 12(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 16(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 5
		pushl $47
		call allocate
		addl $4,%esp
		movl %eax,20(%ebp)
	#end allocate
			
	#begin allocate id = 6
		pushl $22
		call allocate
		addl $4,%esp
		movl %eax,24(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 20(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 24(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 7
		pushl $26
		call allocate
		addl $4,%esp
		movl %eax,28(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 28(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 8
		pushl $68
		call allocate
		addl $4,%esp
		movl %eax,32(%ebp)
	#end allocate
			
	#begin allocate id = 9
		pushl $46
		call allocate
		addl $4,%esp
		movl %eax,36(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 36(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 10
		pushl $33
		call allocate
		addl $4,%esp
		movl %eax,40(%ebp)
	#end allocate
			
	#begin allocate id = 11
		pushl $55
		call allocate
		addl $4,%esp
		movl %eax,44(%ebp)
	#end allocate
			
	#begin allocate id = 12
		pushl $91
		call allocate
		addl $4,%esp
		movl %eax,48(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 44(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 32(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 48(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 13
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,52(%ebp)
	#end allocate
			
	#begin allocate id = 14
		pushl $3
		call allocate
		addl $4,%esp
		movl %eax,56(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 40(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 56(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 15
		pushl $37
		call allocate
		addl $4,%esp
		movl %eax,60(%ebp)
	#end allocate
			
	#begin allocate id = 16
		pushl $94
		call allocate
		addl $4,%esp
		movl %eax,64(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 60(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 64(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 52(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 17
		pushl $11
		call allocate
		addl $4,%esp
		movl %eax,68(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 68(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 18
		pushl $7
		call allocate
		addl $4,%esp
		movl %eax,72(%ebp)
	#end allocate
			
	#begin allocate id = 19
		pushl $60
		call allocate
		addl $4,%esp
		movl %eax,76(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 76(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 72(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 20
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,80(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 80(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 21
		pushl $88
		call allocate
		addl $4,%esp
		movl %eax,84(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 84(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 22
		pushl $100
		call allocate
		addl $4,%esp
		movl %eax,88(%ebp)
	#end allocate
			
	#begin allocate id = 23
		pushl $18
		call allocate
		addl $4,%esp
		movl %eax,92(%ebp)
	#end allocate
			
	#begin allocate id = 24
		pushl $85
		call allocate
		addl $4,%esp
		movl %eax,96(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 88(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 92(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 25
		pushl $10
		call allocate
		addl $4,%esp
		movl %eax,100(%ebp)
	#end allocate
			
	#begin allocate id = 26
		pushl $51
		call allocate
		addl $4,%esp
		movl %eax,104(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 104(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 27
		pushl $16
		call allocate
		addl $4,%esp
		movl %eax,108(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 96(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 108(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 100(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 28
		pushl $53
		call allocate
		addl $4,%esp
		movl %eax,112(%ebp)
	#end allocate
			
	#begin allocate id = 29
		pushl $44
		call allocate
		addl $4,%esp
		movl %eax,116(%ebp)
	#end allocate
			
	#begin allocate id = 30
		pushl $37
		call allocate
		addl $4,%esp
		movl %eax,120(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 112(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 31
		pushl $47
		call allocate
		addl $4,%esp
		movl %eax,124(%ebp)
	#end allocate
			
	#begin allocate id = 32
		pushl $65
		call allocate
		addl $4,%esp
		movl %eax,128(%ebp)
	#end allocate
			
	#begin allocate id = 33
		pushl $27
		call allocate
		addl $4,%esp
		movl %eax,132(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 124(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 120(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 34
		pushl $46
		call allocate
		addl $4,%esp
		movl %eax,136(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 116(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 35
		pushl $46
		call allocate
		addl $4,%esp
		movl %eax,140(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 132(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 136(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 36
		pushl $52
		call allocate
		addl $4,%esp
		movl %eax,144(%ebp)
	#end allocate
			
	#begin allocate id = 37
		pushl $3
		call allocate
		addl $4,%esp
		movl %eax,148(%ebp)
	#end allocate
			
	#begin allocate id = 38
		pushl $74
		call allocate
		addl $4,%esp
		movl %eax,152(%ebp)
	#end allocate
			
	#begin allocate id = 39
		pushl $96
		call allocate
		addl $4,%esp
		movl %eax,156(%ebp)
	#end allocate
			
	#begin allocate id = 40
		pushl $18
		call allocate
		addl $4,%esp
		movl %eax,160(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 156(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 128(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 41
		pushl $55
		call allocate
		addl $4,%esp
		movl %eax,164(%ebp)
	#end allocate
			
	#begin allocate id = 42
		pushl $50
		call allocate
		addl $4,%esp
		movl %eax,168(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 160(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 43
		pushl $39
		call allocate
		addl $4,%esp
		movl %eax,172(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 148(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 44
		pushl $9
		call allocate
		addl $4,%esp
		movl %eax,176(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 176(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 45
		pushl $92
		call allocate
		addl $4,%esp
		movl %eax,180(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 164(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 46
		pushl $41
		call allocate
		addl $4,%esp
		movl %eax,184(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 184(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 168(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 47
		pushl $55
		call allocate
		addl $4,%esp
		movl %eax,188(%ebp)
	#end allocate
			
	#begin allocate id = 48
		pushl $35
		call allocate
		addl $4,%esp
		movl %eax,192(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 180(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 152(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 49
		pushl $77
		call allocate
		addl $4,%esp
		movl %eax,196(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 144(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 50
		pushl $90
		call allocate
		addl $4,%esp
		movl %eax,200(%ebp)
	#end allocate
			
	#begin allocate id = 51
		pushl $25
		call allocate
		addl $4,%esp
		movl %eax,204(%ebp)
	#end allocate
			
	#begin allocate id = 52
		pushl $72
		call allocate
		addl $4,%esp
		movl %eax,208(%ebp)
	#end allocate
			
	#begin allocate id = 53
		pushl $19
		call allocate
		addl $4,%esp
		movl %eax,212(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 196(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 200(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 54
		pushl $100
		call allocate
		addl $4,%esp
		movl %eax,216(%ebp)
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
