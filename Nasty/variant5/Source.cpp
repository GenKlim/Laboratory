#include "iostream"

using namespace std;
typedef unsigned int type;
#define byteCount sizeof(type)
#define hexCount byteCount*2

char* convertToHex(type n);
void printHex(char*);

/*
	����� � hex ������������� ��� ����� �� hexCount ��������
*/

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	while (true)
	{
		int a;
		cout << "�����:" << endl << "> ";
		cin >> a;

		cout << "HEX: ";
		char *hex = convertToHex(a);
		printHex(hex);

		delete[] hex;
	}
	return 0;
}

/*
	������������ type � ����� ��������

	� �������, type = int
	�.�. int 32 ���� ����� 32 �����.
	����� ����� 12 � ������ ����� ��������� ���:
	00000000000000000000000000000101	

	���������� ����� �� 4 �����, ����� �� ��� �������� 8 ��������:
	0000 0000 0000 0000 0000 0000 0000 1100

		������ ��� ������� �����, � ������� "1100"
		1100
		||||
		8421

		8*1 + 4*1 + 2*0 + 1*0 = 12

		���� ��������� ����� ������ 10 �� �������� � ���� ����� ���� � ������� ascii
		���� ������ �� ������� �� ���� 10 � �������� ����� ����� 'A' � ������� ascii
		��������� ����� � ���� ������ ������
*/
char* convertToHex(type n)
{
	char* result = new char[hexCount];

	char* start = (char*)&n;
	int offest = hexCount - 1;

	for (char* i = start; i < start + byteCount; i++)
	{
		for (int x = 0; x < 8; x += 4)
		{
			char f = '0';
			for (int j = 0; j < 4; j++)
				f += (*i >> (j + x) & 1)*(1 << j);

			if (f > '9')
				f += 'A' - '9' - 1;

			result[offest--] = f;
		}
	}

	return result;
}

/*
	�������� ������
*/
void printHex(char* hex)
{
	for (int i = 0; i < hexCount; i++)
		cout << hex[i];
	cout << endl;
}
