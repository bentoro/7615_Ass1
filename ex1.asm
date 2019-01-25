section .data
        msg: db "hello comp7615", 20
        len: equ $-msg ; dollar sign is memory
section .text
    global main
main:
        mov edx, len    ;register edx
        mov ecx, msg    ;register ecx

        mov ebx, 1      ;move 1 into ebx
        mov eax, 4      ;move 4 into eax
        int 0x80        ;interupt call

        mov ebx, 0
        mov eax, 1
        int 0x80
