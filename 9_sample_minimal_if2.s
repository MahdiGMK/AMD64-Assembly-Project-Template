extern printf
extern scanf
global asm_main
section .text
asm_main:
    sub rsp, 8
    
    lea rdx, [rsp + 4] ; second input
    lea rsi, [rsp] ; first input
    mov rdi, format
    call scanf
    mov edx, [rsp + 4]
    mov esi, [rsp]

    ; if(esi == edx && esi & 1) {if_body} else {else_body}
;if_check:
    cmp esi, edx
    jne else_body ; pay attention to condition negation
    mov eax, esi
    and eax, 1 ; no need to cmp all the time - many instructions update condition flags
    mov ecx, eax
    jnz if_body
else_body:
    ; else action
    mov rdi, failure
    call printf

    jmp if_end
if_body:
    ; if action
    mov rdi, success
    call printf
if_end:


    add rsp, 8
    ret

section .data
format: db "%d%d", 0
success: db "%d == %d && %d", 10, 0
failure: db "%d != %d || %d", 10, 0
