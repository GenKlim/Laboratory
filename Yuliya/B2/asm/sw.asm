;���������� ���������� Pentium
.586P

;������� ������ ������, ���������� � ������� � ����� �
.MODEL FLAT,C

;������� ������
DATA SEGMENT
PUBLIC a, b
a dd ?
b dd ?

DATA ENDS
CODE SEGMENT

PUBLIC swap1

swap1 PROC 			;����������� �������
	MOV ecx, a	;��������� ������
	MOV edx, b
	MOV al, byte ptr [ecx]	;��������� ��������
	MOV bl, byte ptr [edx]
	MOV byte ptr [edx], al	;���������� �������� � ������ �� ������ �������
	MOV byte ptr [ecx], bl
RET
swap1 ENDP

CODE ENDS
END
