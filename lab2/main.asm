SECTION .text
    GLOBAL _start

_start:
    mov bx,91h  ; Помещаем 145 в регистр bx
    dec bx      ; Делаем bx--
    mov ax,bx   ; Помещаем значение из bx в ax
    nop         ; Ничего не делаем
    mov eax,1   ; Выход из программы
    mov ebx,0
    int 80h

