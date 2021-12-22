section .data
msg     db      'Hello World!', 10     ; 

section .text
global  _start
 
_start:
 
    mov     edx, 15     
    mov     ecx, msg    
    mov     ebx, 1      ; STDOUT
    mov     eax, 4      ; SYS_WRITE (opcode 4)
    int     80h

end:
    mov     ebx, 0      ; code 0
    mov     eax, 1      ; STD_EXIT
    int     80h