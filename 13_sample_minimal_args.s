extern printf
global asm_main
section .text
asm_main:
    sub rsp, 8
    mov rsi, [rsi]; read argv[0]
    mov rdi, format
    call printf
    add rsp, 8
    xor rax, rax; zero return code
    ret
section .data
format: db "%s", 10, 0
