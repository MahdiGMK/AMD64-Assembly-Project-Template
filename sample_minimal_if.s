global asm_main
section .text
asm_main:
    
    ; if(rax == rbx) {if_body} else {else_body}
;if_check:
    cmp rax, rbx
    jeq if_body
else_body:
    ; else action
    mov rdi, failure
    call printf

    j if_end
if_body:
    ; if action
    mov rdi, success
    call printf
if_end:


    ret

section .data
success: db "rax == rbx", 10, 0
failure: db "rax != rbx", 10, 0
