import random
out = open("test.s","w")

out.write('''
#test.s
msg:
	.asciz "brk(0):%d\\n"
.section .text
.globl _start
_start:
	movl %esp,%ebp
	subl $50000,%esp

	call allocate_init

''')

out.write('''
#first print brk(0)
	pushl %eax
	pushl $msg
	call printf
	addl $8,%esp

''')

n = 1000
a = []
cnt = 0
for i in range(0,n):
	per = random.randint(1,100)
	if (per <= 50) or (len(a) == 0):
		cnt += 1
		#cnt = 1
		size = random.randint(1,2)
		a.append(cnt)
		out.write('''
	#begin allocate id = %d
		pushl $%d
		call allocate
		addl $4,%%esp
		movl %%eax,%d(%%ebp)
	#end allocate
			'''%(cnt,size,cnt*4))
	else:
		k = random.randint(1,len(a))
		
		out.write('''
	#begin deallocate
		pushl %d(%%ebp)
		call deallocate
		addl $4,%%esp
	#end deallocate
			'''%(a[k - 1] * 4))
		a.remove(a[k - 1])

out.write('''

#last print brk(0)
	movl $45, %eax
	movl $0, %ebx
	int $0x80

	pushl %eax
	pushl $msg
	call printf
	addl $8,%esp

''')

out.write('''

	#END OF THE TEST
	movl $0, %ebx
	movl $1, %eax
	int $0x80
'''	)
out.close()