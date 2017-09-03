
#test.s
msg:
	.asciz "brk(0):%d\n"
.section .text
.globl _start
_start:
	movl %esp,%ebp
	subl $500,%esp

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
			
	#begin allocate id = 2
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,8(%ebp)
	#end allocate
			
	#begin allocate id = 3
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,12(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 4(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 4
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,16(%ebp)
	#end allocate
			
	#begin allocate id = 5
		pushl $1
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
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,24(%ebp)
	#end allocate
			
	#begin allocate id = 7
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,28(%ebp)
	#end allocate
			
	#begin allocate id = 8
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,32(%ebp)
	#end allocate
			
	#begin allocate id = 9
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,36(%ebp)
	#end allocate
			
	#begin allocate id = 10
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,40(%ebp)
	#end allocate
			
	#begin allocate id = 11
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,44(%ebp)
	#end allocate
			
	#begin allocate id = 12
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,48(%ebp)
	#end allocate
			
	#begin allocate id = 13
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,52(%ebp)
	#end allocate
			
	#begin allocate id = 14
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,56(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 32(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 15
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,60(%ebp)
	#end allocate
			
	#begin allocate id = 16
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,64(%ebp)
	#end allocate
			
	#begin allocate id = 17
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,68(%ebp)
	#end allocate
			
	#begin allocate id = 18
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,72(%ebp)
	#end allocate
			
	#begin allocate id = 19
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,76(%ebp)
	#end allocate
			
	#begin allocate id = 20
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,80(%ebp)
	#end allocate
			
	#begin allocate id = 21
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,84(%ebp)
	#end allocate
			
	#begin allocate id = 22
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,88(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 88(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 23
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,92(%ebp)
	#end allocate
			
	#begin allocate id = 24
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,96(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 12(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 25
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,100(%ebp)
	#end allocate
			
	#begin allocate id = 26
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,104(%ebp)
	#end allocate
			
	#begin allocate id = 27
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,108(%ebp)
	#end allocate
			
	#begin allocate id = 28
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,112(%ebp)
	#end allocate
			
	#begin allocate id = 29
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,116(%ebp)
	#end allocate
			
	#begin allocate id = 30
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,120(%ebp)
	#end allocate
			
	#begin allocate id = 31
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,124(%ebp)
	#end allocate
			
	#begin allocate id = 32
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,128(%ebp)
	#end allocate
			
	#begin allocate id = 33
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,132(%ebp)
	#end allocate
			
	#begin allocate id = 34
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,136(%ebp)
	#end allocate
			
	#begin allocate id = 35
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,140(%ebp)
	#end allocate
			
	#begin allocate id = 36
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,144(%ebp)
	#end allocate
			
	#begin allocate id = 37
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,148(%ebp)
	#end allocate
			
	#begin allocate id = 38
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,152(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 8(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 39
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,156(%ebp)
	#end allocate
			
	#begin allocate id = 40
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,160(%ebp)
	#end allocate
			
	#begin allocate id = 41
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,164(%ebp)
	#end allocate
			
	#begin allocate id = 42
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,168(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 28(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 43
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,172(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 20(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 44
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,176(%ebp)
	#end allocate
			
	#begin allocate id = 45
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,180(%ebp)
	#end allocate
			
	#begin allocate id = 46
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,184(%ebp)
	#end allocate
			
	#begin allocate id = 47
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,188(%ebp)
	#end allocate
			
	#begin allocate id = 48
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,192(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 108(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 49
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,196(%ebp)
	#end allocate
			
	#begin allocate id = 50
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,200(%ebp)
	#end allocate
			
	#begin allocate id = 51
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,204(%ebp)
	#end allocate
			
	#begin allocate id = 52
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,208(%ebp)
	#end allocate
			
	#begin allocate id = 53
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,212(%ebp)
	#end allocate
			
	#begin allocate id = 54
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,216(%ebp)
	#end allocate
			
	#begin allocate id = 55
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,220(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 204(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 56
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,224(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 172(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 57
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,228(%ebp)
	#end allocate
			
	#begin allocate id = 58
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,232(%ebp)
	#end allocate
			
	#begin allocate id = 59
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,236(%ebp)
	#end allocate
			
	#begin allocate id = 60
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,240(%ebp)
	#end allocate
			
	#begin allocate id = 61
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,244(%ebp)
	#end allocate
			
	#begin allocate id = 62
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,248(%ebp)
	#end allocate
			
	#begin allocate id = 63
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,252(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 168(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 64
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,256(%ebp)
	#end allocate
			
	#begin allocate id = 65
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,260(%ebp)
	#end allocate
			
	#begin allocate id = 66
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,264(%ebp)
	#end allocate
			
	#begin allocate id = 67
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,268(%ebp)
	#end allocate
			
	#begin allocate id = 68
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,272(%ebp)
	#end allocate
			
	#begin allocate id = 69
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,276(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 96(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 70
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,280(%ebp)
	#end allocate
			
	#begin allocate id = 71
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,284(%ebp)
	#end allocate
			
	#begin allocate id = 72
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,288(%ebp)
	#end allocate
			
	#begin allocate id = 73
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,292(%ebp)
	#end allocate
			
	#begin allocate id = 74
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,296(%ebp)
	#end allocate
			
	#begin allocate id = 75
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,300(%ebp)
	#end allocate
			
	#begin allocate id = 76
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,304(%ebp)
	#end allocate
			
	#begin allocate id = 77
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,308(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 272(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 78
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,312(%ebp)
	#end allocate
			
	#begin allocate id = 79
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,316(%ebp)
	#end allocate
			
	#begin allocate id = 80
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,320(%ebp)
	#end allocate
			
	#begin allocate id = 81
		pushl $1
		call allocate
		addl $4,%esp
		movl %eax,324(%ebp)
	#end allocate
			
	#begin allocate id = 82
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,328(%ebp)
	#end allocate
			
	#begin allocate id = 83
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,332(%ebp)
	#end allocate
			
	#begin allocate id = 84
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,336(%ebp)
	#end allocate
			
	#begin allocate id = 85
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,340(%ebp)
	#end allocate
			
	#begin allocate id = 86
		pushl $2
		call allocate
		addl $4,%esp
		movl %eax,344(%ebp)
	#end allocate
			

#last print brk(0)
	movl $45, %eax
	movl $0, %ebx
	int $0x80

	pushl %eax
	pushl $msg
	call printf
	addl $8,%esp


	movl %ebp,%esp

	#END OF THE TEST
	movl $0, %ebx
	movl $1, %eax
	int $0x80
