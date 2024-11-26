global asm_main
extern printf
section .text
; SystemV AMD64 ABI 
; Integer Function arguments : RDI, RSI, RDX, RCX, R8, R9, (Extra on stack)
; Float/Double Function arguments : [XYZ]MM[0-7]
; Return value : RAX
; More Info : https://wiki.osdev.org/System_V_ABI#x86-64
asm_main:
    sub rsp, 8 ; fix allignments
    ; we are working with c => rsp % 16 = 0 before any function call
    ; when asm_main is called, return address is pushed on stack
    ; so rsp%16 = 8 => we need to fix this by rsp-=8

    mov rdi, hello_world ; printf format
    mov rsi, 10 ; first printf argument
    call printf


    mov rax, rsp; you can see allignment better using this line
    ; calculate return code % 16 and see the 0
    add rsp, 8
    ret
    
section .data
hello_world: db "hello world %d" , 10 , 0
