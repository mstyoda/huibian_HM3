# newalloc.s

.include "base.s"
.section .text

.globl allocate_init
.type allocate_init,@function
allocate_init:
	pushl %ebp
	movl %esp, %ebp
	#If the brk system call is called with 0 in %ebx, it
	#returns the first invalid address
	movl $SYS_BRK, %eax
	movl $0, %ebx
	int $LINUX_SYSCALL
	
	movl %eax, current_break #%eax now has the first invalid address
	movl %eax, heap_begin
	
	movl %ebp, %esp
	popl %ebp
	ret

.globl allocate
.type allocate, @function
.equ ST_MEM_SIZE, 8
#stack position of the memory size to allocate
allocate:
	pushl %ebp
	movl %esp, %ebp
	movl ST_MEM_SIZE(%ebp), %ecx #%ecx will hold the size

	#we are looking for (which is the first and only parameter)
	movl heap_begin, %eax #%eax will hold the search location
	movl current_break, %ebx #%ebx will hold the current break

loop_begin:#we iterate through memory regions
	cmpl %ebx, %eax #need more memory if these are equal 
	je move_break_init
	
	#grab the size of this memory
	movl HDR_SIZE_OFFSET(%eax), %edx
	cmpl $UNAVAILABLE, HDR_AVAIL_OFFSET(%eax)
	je next_location #If unavailable, go to the next
	cmpl %edx, %ecx #If available, check the size
	jle allocate_here #big enough, go to allocate_here

next_location:
	addl $HEADER_SIZE, %eax
	addl %edx, %eax #The total size of the memory
	jmp loop_begin #go look at the next location

allocate_here:
	#if we’ve made it here, that means that the region header of the
	#region to allocate is in %eax, mark space as unavailable
	#%edx has the size of the region, and %ecx has the size ineed
	movl $HEADER_SIZE,%ebx
	addl %ecx,%ebx
	cmpl %edx,%ebx
	
	jle divide #if curent region is larger than we need,we can divide the region

allocate_end:	
	movl $UNAVAILABLE, HDR_AVAIL_OFFSET(%eax)
	addl $HEADER_SIZE, %eax #move %eax to the usable memory

	movl %ebp, %esp
	popl %ebp
	ret

divide:
	#the left region has size %ecx, the right has size %edx - %ebx
	movl %ecx,HDR_SIZE_OFFSET(%eax)
	
	addl %eax,%ecx
	addl $HEADER_SIZE,%ecx #now %ecx point to the begin of the right region

	movl $AVAILABLE, HDR_AVAIL_OFFSET(%ecx) #set available
	subl %ebx,%edx
	movl %edx, HDR_SIZE_OFFSET(%ecx) #set size of the right region
	jmp allocate_end

move_break_init:
	addl $HEADER_SIZE, %ebx #add space for the headers structure
	movl current_size,%edx #save the last size to %edx
	addl $1,%edx
	cmpl %edx,%ecx #compare the requested size and the last size + 1
	jle changesize

move_break:
	#now ecx has the size need to be added
	movl %ecx,current_size
	addl %ecx, %ebx #add space to the break for the data
					#requested
	pushl %eax #save needed registers
	movl $SYS_BRK, %eax #reset the break
	int $LINUX_SYSCALL
	popl %eax #no error check?

	#set this memory as unavailable, since we’re about to give it away
	movl $UNAVAILABLE, HDR_AVAIL_OFFSET(%eax)
	movl %ecx, HDR_SIZE_OFFSET(%eax) #set the size of the memory
	addl $HEADER_SIZE, %eax #move %eax to the actual start of
							#usable memory.
	movl %ebx, current_break #save the new break
	
	movl %ebp, %esp
	popl %ebp
	ret

changesize:
	movl %edx,%ecx #change ecx to current_size + 1(when current_size + 1 is lagger)
	jmp move_break

.globl deallocate
.type deallocate,@function
.equ ST_MEMORY_SEG, 4

deallocate:
	movl ST_MEMORY_SEG(%esp), %eax 
	#get the pointer to the real beginning of the memory
	subl $HEADER_SIZE, %eax 
	#mark it as available
	movl $AVAILABLE, HDR_AVAIL_OFFSET(%eax)
	
	ret