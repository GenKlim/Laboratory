.def temp = r17	//Биндим регистры
.def A = r18
.def B = r19

.dseg

.cseg
.org 0
rjmp Init	//Начало программы

Init:
	//Распределение входов/выходов и установка начальных значений
	ldi temp, 0x00
	out DDRA, temp
	out DDRB, temp

	ldi temp, 0xff
	out DDRD, temp
	out PORTA, temp
	out PORTB, temp
	rjmp LedReset

//Основной цикл программы
Loop:
	sbis PINA, 0	//Если кнопка 0 нажата
	rjmp LedSet
	sbis PINA, 1
	rjmp LedReset	//Если кнопка 1 нажата
	rjmp Loop

//Зажигает все диоды, кроме 1
LedSet:
	in temp, PINB	//Чтение с порта
	ldi A, 0x01
	cpi temp, 0x00

	LedSet_Shift:	//Сдвиг
		breq LedSet_End
		ROL A
		dec temp
		brne LedSet_Shift
		
	LedSet_End:
		andi A, 0xff	//Включение нужных диодов
		com A
		out PORTD, A

	rjmp Loop

//Зажигает все светодиоды
LedReset:
	ldi temp, 0xff
	out PORTD, temp
	rjmp Loop