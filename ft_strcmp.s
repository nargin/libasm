section .text
global ft_strcmp

ft_strcmp :	
	cmp byte [rdi], 0
	jz _end ; if rdi is null, jump to _end
	cmp byte [rsi], 0
	jz _end ; if rsi is null, jump to _end

	mov al, [rdi]
	cmp al, byte [rsi]
	jnz _end ; if not equal, jump to _end
	
	inc rdi
	inc rsi
	jmp ft_strcmp

_end :
	mov rax, [rdi]
	sub rax, [rsi]
	ret