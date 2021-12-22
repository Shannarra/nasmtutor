%include './lessons/printfn.asm'


section .data
msg:         db    "Hello", 10, 0 ; NOTE FOR ME: remember to NULL terminate strings like so!
msg2:        db    "Hello 2", 10, 0
msg3:        db    "Hello 3 asm", 10, 0


section .text
global _start

_start:
    mov     rax, msg
    call    printfn

    mov     rax, msg2
    call    printfn

    mov     rax, msg3
    call    printfn

    call    quit