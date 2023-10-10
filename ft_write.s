section .text
	global ft_write
extern errno_helper
; extern int errno


ft_write: 
	mov rax, 1
	syscall
	cmp rax, 0
	jl error
	ret

error :
	neg		rax
	push 	rax
	call	errno_helper
	pop		qword[rax]
	mov		rax, -1
	ret