.def temp = r17	//������ ��������
.def A = r18
.def B = r19

.dseg

.cseg
.org 0
rjmp Init	//������ ���������

Init:
	//������������� ������/������� � ��������� ��������� ��������
	ldi temp, 0x00
	out DDRA, temp
	out DDRB, temp

	ldi temp, 0xff
	out DDRD, temp
	out PORTA, temp
	out PORTB, temp
	rjmp LedReset

//�������� ���� ���������
Loop:
	sbis PINA, 0	//���� ������ 0 ������
	rjmp LedSet
	sbis PINA, 1
	rjmp LedReset	//���� ������ 1 ������
	rjmp Loop

//�������� ��� �����, ����� 1
LedSet:
	in temp, PINB	//������ � �����
	ldi A, 0x01
	cpi temp, 0x00

	LedSet_Shift:	//�����
		breq LedSet_End
		ROL A
		dec temp
		brne LedSet_Shift
		
	LedSet_End:
		andi A, 0xff	//��������� ������ ������
		com A
		out PORTD, A

	rjmp Loop

//�������� ��� ����������
LedReset:
	ldi temp, 0xff
	out PORTD, temp
	rjmp Loop