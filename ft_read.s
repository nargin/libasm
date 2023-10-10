section .text
	global ft_read
extern errno_helper

ft_read :
	mov rax, 0
	syscall
	cmp rax, 0
	jl error
	ret

error :
	neg 	rax
	push 	rax
	call 	errno_helper
	pop		qword[rax]
	mov		rax, -1
	ret
