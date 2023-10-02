extern ___error

section .text
	global ft_write

ft_write: 
	mov rax, 1
	syscall
	jc error

error :
	mov rdx, rax
	neg rdx
	call ___error
	mov [rax], rdx
	mov rax, -1
	ret