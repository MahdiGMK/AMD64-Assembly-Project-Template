extern scanf
extern printf
global asm_main
section .text
asm_main:
    sub rsp, 8
    lea rsi, [rsp] ; first input
    mov rdi, format
    call scanf
    mov rsi, [rsp]
    ; while (--rsi > 0) {while_body} while_end
while_cond:
    dec rsi
    jz while_end
while_body:
    mov [rsp], rsi
    mov rdi, print
    call printf
    mov rsi, [rsp]
    jmp while_cond
while_end:

    add rsp, 8
    xor rax, rax ; make return code 0 (no error)
    ret

section .data
format: db "%d", 0,
print: db "Iteration %d", 10, 0,
