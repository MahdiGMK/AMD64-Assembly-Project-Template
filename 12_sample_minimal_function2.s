global asm_main
section .text
asm_main:
    xor rbx, rbx
    xor rax, rax

    mov ebx, 5
    call func

    ret

func: ; eax := ebx!
    cmp ebx, 0
    jle func_base
    sub rsp, 8
    mov [rsp], ebx
    dec ebx
    call func
    mov ebx, [rsp]
    mul ebx
    add rsp, 8
    ret
func_base:
    mov eax, 1
    ret
