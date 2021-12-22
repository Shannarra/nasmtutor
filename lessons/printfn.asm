; String length calculation function
strlen:
    push    rdi
    mov     ebx, eax
 
__nextc:
    cmp     byte [eax], 0
    jz      __finish
    inc     eax
    jmp     __nextc
 
__finish:
    sub     eax, ebx
    pop     rdi
    ret
 
 
;------------------------------------------
; void sprint(String message)
; String printing function, inspired by: https://asmtutor.com/#lesson5
; and translated for x86_64 LINUX by Shannarra (https://github.com/Shannarra)
; Gist link:
printfn:
    push    rdx
    push    rsi
    push    rdi
    push    rax
    call    strlen
 
    mov     edx, eax
    pop     rax
 
    mov     ecx, eax
    mov     ebx, 1
    mov     eax, 4
    int     80h
 
    pop     rdi
    pop     rsi
    pop     rdx
    ret
 

; Exit program and restore resources
quit:
    mov     ebx, 0
    mov     eax, 1
    int     80h
    ret