import random
out = open("test.s","w")
out.write('''
#test.s

.section .text
.globl _start
_start:
	movl %esp,%ebp
	subl $10000,%esp

	call allocate_init

''')

n = 10
a = []
cnt = 0
for i in range(0,n):
	per = random.randint(1,100)
	if (per > 60) or (len(a) == 0):
		cnt += 1
		size = random.randint(100,1000)
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

	#END OF THE TEST
	movl $0, %ebx
	movl $1, %eax
	int $0x80
'''	)