section .text
	global ft_strdup
extern malloc_helper
extern ft_strlen

ft_strdup :
	mov rax, 0

	call ft_strlen ; len rdi

	push rdi ; save rdi
	mov rdi, rax ; save rax
	inc rdi ; add 1 to rdi (1st param) to allocate space for '\0'

	call malloc_helper ; call malloc ret in rax

	pop rdi
	mov rsi, rax
	mov rdx, 0

loop :
	mov al, BYTE[rdi + rdx]
	mov BYTE[rsi + rdx], al

	cmp al, 0
	je return

	inc rdx
	jmp loop

return :
	mov rax, rsi
	ret