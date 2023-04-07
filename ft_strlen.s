global ft_strlen

ft_strlen:
    mov rax, 0 ;i = 0
    jmp loop ; go to loop

loop:
    cmp BYTE[rdi + rax], 0 ;compare rdi[rax] with 0
    je exit ;(rdi[rax] == 0) -> exit 
    inc rax ;i++
    jmp loop

exit:
    ret ;return rax