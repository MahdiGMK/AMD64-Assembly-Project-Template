global asm_main
section .text
asm_main:

    mov rax, 3
    mov rbx, 7
    mul rbx; RDX:RAX = RAX*SOURC(RBX)
    ;; 21

    ;amd64(X86-64) ASSEMBLY INSTRUCTION REFERENCE
    ;https://www.felixcloutier.com/x86/

    ret
