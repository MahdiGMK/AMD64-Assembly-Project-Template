global asm_main
section .text
asm_main:

    mov rax, 10
    call func
    ; rax = 20

    ret

func: ; rax *= 2
    add rax, rax
    ret
