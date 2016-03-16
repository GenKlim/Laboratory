#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string"
#include "sstream"
#include "conio.h"

using namespace std;
#define maxStringSize 256

void filter();
void textLen();

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	while (true)
	{
		cout << "1. Дан текст. Определить его текущую длину." << endl;
		cout << "2. Дано предложение. Удалить из предложения все слова, равные заданному слову" << endl;
		cout << "0. Выход" << endl << endl;

		switch (getch())
		{
		case '1':
			textLen();
			break;
		case '2':
			filter();
			break;
		case '0':
			return 0;
		}
		system("pause");
		system("cls");
	}
}

void textLen()
{
	char* str1 = new char[maxStringSize];

	cout << "Введите текст (текст должен заканчиватся '...'):" << endl;

	int j = 0;
	while (true)
	{
		cin >> str1;
		int i2 = 0;
		while (str1[i2])
			i2++;

		j += 1 + i2;

		if (i2 >= 3 && str1[i2 - 1] == '.' && str1[i2 - 2] == '.' && str1[i2 - 3] == '.')
			break;
	}

	cout << "Длина текста: " << j << endl;
	delete[] str1;
}

void filter()
{
	string input, result, toDelete;

	cout << "Введите предложение:" << endl;
	getline(cin, input);
	cout << "Введите слово:" << endl;
	getline(cin, toDelete);

	stringstream ss(input);
	string item;

	while (getline(ss, item, ' '))
	{
		string itemF;
		string itemS;
		for (string::iterator i = item.begin(); i != item.end(); i++)
		{
			if (*i != ',' && *i != '.' && *i != ':' && *i != ';')
				itemF += *i;
			else
				itemS += *i;
		}
		if (itemF != toDelete)
			result += item + ' ';
		else
			result += itemS;
	}

	cout << "Результат: " << result << endl;
}