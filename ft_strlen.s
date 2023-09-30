section .text
global ft_strlen

ft_strlen :
	push rbx
	mov	 rbx, rdi

loop :
	cmp byte [rbx], 0
	jz return
	inc rbx
	jmp loop

return :
	sub rbx, rdi
	mov rax, rbx
	pop rbx
	ret