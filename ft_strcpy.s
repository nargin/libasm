section .text
global ft_strcpy

ft_strcpy :
	mov rax, rdi

loop :
	cmp byte [rsi], 0
	jz return
	mov cx, [rsi]
	mov [rdi], cx
	inc	rsi
	inc	rdi
	jmp loop

return :
	mov byte [rdi], 0
	ret