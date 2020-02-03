SECTION .data
    helo:  DB  'Assembler the best',0xA
    len:  EQU $-helo

SECTION .text
    GLOBAL _start


_start:
    mov cx,3            ; Устанавливаем счетчик цикла в значение 3
    print:
        mov eax,4       ; Системный вызов sys_write
        mov ebx,1       ; Выбираем стандартный вывод stdout
        mov ecx,helo    ; Передаем строку в stdout
        mov edx,len     ; Передаем длину строки
        int 80h         ; Вызываем прерываение
        loop print

    mov eax,1           ; Выход из программы с кодом 0
    mov ebx,0
    int 80h

