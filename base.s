.section .data
#This points to the beginning of the memory
heap_begin:
.long 0
#This points to one location past the memory we are managing
current_break:
.long 0

#size of space for memory region header
.equ HEADER_SIZE, 8
#Location of the "available" flag in the header
.equ HDR_AVAIL_OFFSET, 0
#Location of the size field in the header
.equ HDR_SIZE_OFFSET, 4
.equ UNAVAILABLE, 0
.equ AVAILABLE, 1
.equ SYS_BRK, 45
.equ LINUX_SYSCALL, 0x80
#system call number for brk