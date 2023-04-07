global ft_strcmp

ft_strcmp:
    mov rax, 0 ;i = 0
    mov rbx, 0 ;j = 0
    jmp loop

loop:
    cmp BYTE[rsi + rbx], 0
    je exit
    cmp BYTE[rdi + rbx], 0
    je exit
    mov al, BYTE[rsi + rbx]

    cmp BYTE[rsi + rbx], al
    jnz exit
    inc rbx

    jmp loop


exit:
    mov

    ret

