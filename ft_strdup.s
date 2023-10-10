section .text
	global ft_strdup
extern malloc_helper
extern ft_strlen

ft_strdup :
	xor rax, rax
	call ft_strlen
	push rdi
	mov rdi, rax
	call malloc_helper

loop :
	

return :
	mov rax, rcx
	ret
