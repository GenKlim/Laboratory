#include "iostream"

using namespace std;
typedef unsigned int type;
#define byteCount sizeof(type)
#define hexCount byteCount*2

char* convertToHex(type n);
void printHex(char*);

/*
	Число в hex представленно как масив из hexCount символов
*/

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	while (true)
	{
		int a;
		cout << "Число:" << endl << "> ";
		cin >> a;

		cout << "HEX: ";
		char *hex = convertToHex(a);
		printHex(hex);

		delete[] hex;
	}
	return 0;
}

/*
	Конвертирует type в масив сивыолов

	К примеру, type = int
	т.к. int 32 бита будет 32 знака.
	тогда число 12 в памяти будет выглядить так:
	00000000000000000000000000000101	

	Перебираем байты по 4 штуки, нужно из них получить 8 символов:
	0000 0000 0000 0000 0000 0000 0000 1100

		Теперь для каждого блока, к примеру "1100"
		1100
		||||
		8421

		8*1 + 4*1 + 2*0 + 1*0 = 12

		Если полученое число меньше 10 то прибавим к нему номер нуля в таблице ascii
		Если больше то отнимем от него 10 и прибавим номер буквы 'A' в таблице ascii
		Полученое число и есть нужный символ
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
	Печатает массив
*/
void printHex(char* hex)
{
	for (int i = 0; i < hexCount; i++)
		cout << hex[i];
	cout << endl;
}
