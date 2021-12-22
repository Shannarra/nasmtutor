section .data
msg:    db      "Some long text idk.", 10

section .text
global  _start


printf:
    mov     ebx, msg        ; point to the msg
    mov     eax, ebx        ; equalize eax and ebx

nextc:
    cmp     byte [eax], 0   ; compare if current char is \0
    jz      finish          ; jump if zero ^
    inc     eax             ; ++ the pointer to msg
    jmp     nextc           ; loop

finish:
    sub     eax, ebx        ; reset ebx, storing "msg.length" in eax 

print:
    mov     edx, eax        ; msg.length
    mov     ecx, msg        
    mov     ebx, 1
    mov     eax, 4
    int     128

    ret
_start:
    call    printf

end:
    mov     ebx, 0
    mov     eax, 1
    int     128             ; same as 80h