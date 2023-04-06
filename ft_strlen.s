global _ft_strlen ;must be declared for be used with gcc

_ft_strlen:
    mov rax, 0 ;rax = 0
    jmp loop ; go to loop

loop:
    cmp BYTE[rdi + rax], 0 ;compare rdi[rax] with 0
    je exit ;(rdi[rax] == 0) -> exit 
    inc rax ;i++
    jmp loop

exit:
    ret ;return rax