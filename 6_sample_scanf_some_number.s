global asm_main
extern printf 
extern scanf
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

    mov rdi, scanf_format ; scanf format
    mov rsi, rsp ; load to top of stack
    ;lea rsi, [test_number] ; you might also use address to global vars
    call scanf
    mov rdi, hello_world ; printf format
    mov rsi, [rsp] ; load number from stack
    call printf


    mov rax, rsp; you can see allignment better using this line
    ; calculate return code % 16 and see the 0
    add rsp, 8
    ret
    
section .data
scanf_format: db "%d", 0,
hello_world: db "your input was: %d" , 10 , 0,
test_number: dd 123,
