;Инструкции процессора Pentium
.586P

;Плоская модель памяти, соглашение о вызовах в стиле С
.MODEL FLAT,C

;Сегмент данных
DATA SEGMENT
PUBLIC a, b
a dd ?
b dd ?

DATA ENDS
CODE SEGMENT

PUBLIC swap1

swap1 PROC 			;определение функции
	MOV ecx, a	;Загружаем адреса
	MOV edx, b
	MOV al, byte ptr [ecx]	;Загружаем значения
	MOV bl, byte ptr [edx]
	MOV byte ptr [edx], al	;Записываем значения в память по другим адресам
	MOV byte ptr [ecx], bl
RET
swap1 ENDP

CODE ENDS
END
