
#test.s
msg:
	.ascii "brk(0):%d\n"
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
		pushl $248
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
		pushl $324
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
		pushl $645
		call allocate
		addl $4,%esp
		movl %eax,12(%ebp)
	#end allocate
			
	#begin allocate id = 4
		pushl $904
		call allocate
		addl $4,%esp
		movl %eax,16(%ebp)
	#end allocate
			
	#begin allocate id = 5
		pushl $955
		call allocate
		addl $4,%esp
		movl %eax,20(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 16(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 20(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 6
		pushl $642
		call allocate
		addl $4,%esp
		movl %eax,24(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 12(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 7
		pushl $195
		call allocate
		addl $4,%esp
		movl %eax,28(%ebp)
	#end allocate
			
	#begin allocate id = 8
		pushl $505
		call allocate
		addl $4,%esp
		movl %eax,32(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 28(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 9
		pushl $473
		call allocate
		addl $4,%esp
		movl %eax,36(%ebp)
	#end allocate
			
	#begin allocate id = 10
		pushl $328
		call allocate
		addl $4,%esp
		movl %eax,40(%ebp)
	#end allocate
			
	#begin allocate id = 11
		pushl $774
		call allocate
		addl $4,%esp
		movl %eax,44(%ebp)
	#end allocate
			
	#begin allocate id = 12
		pushl $364
		call allocate
		addl $4,%esp
		movl %eax,48(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 32(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 13
		pushl $834
		call allocate
		addl $4,%esp
		movl %eax,52(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 36(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 52(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 40(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 14
		pushl $747
		call allocate
		addl $4,%esp
		movl %eax,56(%ebp)
	#end allocate
			
	#begin allocate id = 15
		pushl $120
		call allocate
		addl $4,%esp
		movl %eax,60(%ebp)
	#end allocate
			
	#begin allocate id = 16
		pushl $309
		call allocate
		addl $4,%esp
		movl %eax,64(%ebp)
	#end allocate
			
	#begin allocate id = 17
		pushl $169
		call allocate
		addl $4,%esp
		movl %eax,68(%ebp)
	#end allocate
			
	#begin allocate id = 18
		pushl $732
		call allocate
		addl $4,%esp
		movl %eax,72(%ebp)
	#end allocate
			
	#begin allocate id = 19
		pushl $770
		call allocate
		addl $4,%esp
		movl %eax,76(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 72(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 20
		pushl $800
		call allocate
		addl $4,%esp
		movl %eax,80(%ebp)
	#end allocate
			
	#begin allocate id = 21
		pushl $610
		call allocate
		addl $4,%esp
		movl %eax,84(%ebp)
	#end allocate
			
	#begin allocate id = 22
		pushl $919
		call allocate
		addl $4,%esp
		movl %eax,88(%ebp)
	#end allocate
			
	#begin allocate id = 23
		pushl $511
		call allocate
		addl $4,%esp
		movl %eax,92(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 92(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 24
		pushl $806
		call allocate
		addl $4,%esp
		movl %eax,96(%ebp)
	#end allocate
			
	#begin allocate id = 25
		pushl $410
		call allocate
		addl $4,%esp
		movl %eax,100(%ebp)
	#end allocate
			
	#begin allocate id = 26
		pushl $122
		call allocate
		addl $4,%esp
		movl %eax,104(%ebp)
	#end allocate
			
	#begin allocate id = 27
		pushl $401
		call allocate
		addl $4,%esp
		movl %eax,108(%ebp)
	#end allocate
			
	#begin allocate id = 28
		pushl $623
		call allocate
		addl $4,%esp
		movl %eax,112(%ebp)
	#end allocate
			
	#begin allocate id = 29
		pushl $845
		call allocate
		addl $4,%esp
		movl %eax,116(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 108(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 30
		pushl $278
		call allocate
		addl $4,%esp
		movl %eax,120(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 84(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 116(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 31
		pushl $774
		call allocate
		addl $4,%esp
		movl %eax,124(%ebp)
	#end allocate
			
	#begin allocate id = 32
		pushl $674
		call allocate
		addl $4,%esp
		movl %eax,128(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 88(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 33
		pushl $163
		call allocate
		addl $4,%esp
		movl %eax,132(%ebp)
	#end allocate
			
	#begin allocate id = 34
		pushl $522
		call allocate
		addl $4,%esp
		movl %eax,136(%ebp)
	#end allocate
			
	#begin allocate id = 35
		pushl $976
		call allocate
		addl $4,%esp
		movl %eax,140(%ebp)
	#end allocate
			
	#begin allocate id = 36
		pushl $644
		call allocate
		addl $4,%esp
		movl %eax,144(%ebp)
	#end allocate
			
	#begin allocate id = 37
		pushl $222
		call allocate
		addl $4,%esp
		movl %eax,148(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 44(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 60(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 38
		pushl $864
		call allocate
		addl $4,%esp
		movl %eax,152(%ebp)
	#end allocate
			
	#begin allocate id = 39
		pushl $467
		call allocate
		addl $4,%esp
		movl %eax,156(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 120(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 40
		pushl $845
		call allocate
		addl $4,%esp
		movl %eax,160(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 136(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 41
		pushl $850
		call allocate
		addl $4,%esp
		movl %eax,164(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 152(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 42
		pushl $464
		call allocate
		addl $4,%esp
		movl %eax,168(%ebp)
	#end allocate
			
	#begin allocate id = 43
		pushl $846
		call allocate
		addl $4,%esp
		movl %eax,172(%ebp)
	#end allocate
			
	#begin allocate id = 44
		pushl $448
		call allocate
		addl $4,%esp
		movl %eax,176(%ebp)
	#end allocate
			
	#begin allocate id = 45
		pushl $528
		call allocate
		addl $4,%esp
		movl %eax,180(%ebp)
	#end allocate
			
	#begin allocate id = 46
		pushl $673
		call allocate
		addl $4,%esp
		movl %eax,184(%ebp)
	#end allocate
			
	#begin allocate id = 47
		pushl $894
		call allocate
		addl $4,%esp
		movl %eax,188(%ebp)
	#end allocate
			
	#begin allocate id = 48
		pushl $118
		call allocate
		addl $4,%esp
		movl %eax,192(%ebp)
	#end allocate
			
	#begin allocate id = 49
		pushl $999
		call allocate
		addl $4,%esp
		movl %eax,196(%ebp)
	#end allocate
			
	#begin allocate id = 50
		pushl $298
		call allocate
		addl $4,%esp
		movl %eax,200(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 180(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 51
		pushl $651
		call allocate
		addl $4,%esp
		movl %eax,204(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 188(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 52
		pushl $903
		call allocate
		addl $4,%esp
		movl %eax,208(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 160(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 96(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 192(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 53
		pushl $265
		call allocate
		addl $4,%esp
		movl %eax,212(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 196(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 54
		pushl $196
		call allocate
		addl $4,%esp
		movl %eax,216(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 204(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 55
		pushl $750
		call allocate
		addl $4,%esp
		movl %eax,220(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 76(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 56
		pushl $215
		call allocate
		addl $4,%esp
		movl %eax,224(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 156(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 57
		pushl $408
		call allocate
		addl $4,%esp
		movl %eax,228(%ebp)
	#end allocate
			
	#begin allocate id = 58
		pushl $431
		call allocate
		addl $4,%esp
		movl %eax,232(%ebp)
	#end allocate
			
	#begin allocate id = 59
		pushl $891
		call allocate
		addl $4,%esp
		movl %eax,236(%ebp)
	#end allocate
			
	#begin allocate id = 60
		pushl $451
		call allocate
		addl $4,%esp
		movl %eax,240(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 148(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 61
		pushl $549
		call allocate
		addl $4,%esp
		movl %eax,244(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 68(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 62
		pushl $744
		call allocate
		addl $4,%esp
		movl %eax,248(%ebp)
	#end allocate
			
	#begin allocate id = 63
		pushl $322
		call allocate
		addl $4,%esp
		movl %eax,252(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 100(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 216(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin allocate id = 64
		pushl $200
		call allocate
		addl $4,%esp
		movl %eax,256(%ebp)
	#end allocate
			
	#begin deallocate
		pushl 208(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			
	#begin deallocate
		pushl 224(%ebp)
		call deallocate
		addl $4,%esp
	#end deallocate
			

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
