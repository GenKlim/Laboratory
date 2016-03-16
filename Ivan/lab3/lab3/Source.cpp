#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string"
#include "sstream"
#include "conio.h"

using namespace std;
#define maxStringSize 256

void find();
int find(char* s1, char* s2);
void text();

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	while (true)
	{
		cout << "1. Определить является ли строка S1, подстрокой строки S2. Вывести индекс, начиная с которого строка S1, полностью разместилась в строке S2, или –1, если подстрока не найдена" << endl;
		cout << "2. Дан текст, состоящий из слов. Сформировать массив из слов, в которых заданная подстрока размещается в конце слова" << endl;
		cout << "0. Выход" << endl << endl;

		switch (getch())
		{
		case '1': find(); system("pause"); break;
		case '2': text(); system("pause"); break;
		case '0': return 0;
		}
		system("cls");
	}
}

void find()
{
	char* s1 = new char[maxStringSize];
	char* s2 = new char[maxStringSize];

	cout << "Введите S1:" << endl;
	cin.getline(s1, maxStringSize);
	cout << "Введите S2:" << endl;
	cin.getline(s2, maxStringSize);
	
	int index = find(s1, s2);
	if (index != -1)
		cout << "S1 является подстрокой S2 ничиная с " << index << " символа." << endl;
	else
		cout << "S1 не является подстрокой S2." << endl;

	delete[] s1;
	delete[] s2;
}

int find(char* s1, char* s2)
{
	int offest = -1;
	while (s2[++offest])
	{
		int offest1 = 0;
		bool flag = true;
		while (s1[++offest1])
		{
			if (s1[offest1] != s2[offest + offest1])
			{
				flag = false;
				break;
			}
		}
		if (flag)
			return offest;
	}
	return -1;
}

void text()
{
	string str, text;

	cout << "Введите текст:" << endl;
	getline(cin, text);
	cout << "Введите подстроку:" << endl;
	getline(cin, str);

	int masSize = 0;
	string* mas = new string[text.size()];

	string phrase;
	stringstream stream(text);

	while (getline(stream, phrase, ' '))
	{
		if (phrase.size() >= str.size())
		{
			string s = phrase.substr(phrase.size() - str.size());
			if (s == str)
				mas[masSize++] = phrase;
		}
	}

	cout << "Найденые слова:" << endl;
	for (int i = 0; i < masSize; i++)
	{
		cout << mas[i] << endl;
	}

	delete[] mas;
}
