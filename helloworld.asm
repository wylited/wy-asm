section .data
    msg db      "hello, world!"

section .text
    global _start
_start:
    mov     rax, 1  ; sys_write
                    ; 
    mov     rdi, 1  ; stdout
    mov     rsi, msg
    mov     rdx, 13
    syscall
    mov    rax, 60
    mov    rdi, 0
    syscall