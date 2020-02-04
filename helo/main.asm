SECTION .data
    helo:  DB  'Assembler the best',0xA
    len:  EQU $-helo

SECTION .text
    GLOBAL _start


_start:
    mov cx, 3           ; Устанавливаем значение счетчика в 3
    print:
        push cx         ; Сохраняем значение счетчика в стек, т.к. для вывода на экран он понадобится
        mov eax,4       ; Системный вызов sys_write
        mov ebx,1       ; Выбираем стандартный вывод stdout
        mov ecx,helo    ; Передаем строку в stdout
        mov edx,len     ; Передаем длину строки
        int 80h         ; Вызываем прерываение
        pop cx          ; Забираем значение счетчика из стека
        dec cx          ; Уменьшаем значение счетчика на 1
        cmp cx, 0       ; Сравниваем значение счетчика с 0
        jne print       ; Делаем переход к print если не равен 0

    mov eax,1           ; Выход из программы с кодом 0
    mov ebx,0
    int 80h

