#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string"
#include "sstream"
#include "conio.h"

using namespace std;
#define maxStringSize 256

void filter();
void slova();

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	while (true)
	{
		cout << "1. �������� �� ������� ������ ���� �������� �� ������ ������" << endl;
		cout << "2. ������� �� ����������� �����, ���������� � ������������� �� ������ �����" << endl;
		cout << "0. �����" << endl << endl;

		switch (getch())
		{
		case '1':
			filter();
			break;
		case '2':
			slova();
			break;
		case '0':
			return 0;
		}
		system("pause");
		system("cls");
	}
}

void filter()
{
	char* str1 = new char[maxStringSize];
	char* str2 = new char[maxStringSize];
	char* str3 = new char[maxStringSize];

	cout << "������� ������ ������:" << endl;
	cin >> str1;
	cout << "������� ������ ������:" << endl;
	cin >> str2;

	int i = 0, k = 0;
	while (str1[i])
	{
		int j = 0;
		bool valid = true;
		while (str2[j])
		{
			if (str1[i] == str2[j])
			{
				valid = false;
				break;
			}
			j++;
		}
		if (valid)
			str3[k++] = str1[i];
		i++;
	}

	str3[k] = 0;

	cout << "���������: " << str3 << endl;

	delete[] str1;
	delete[] str2;
	delete[] str3;
}

void slova()
{
	string s1, s2;

	cout << "������� �����������:" << endl;
	getline(cin, s1);

	stringstream ss(s1);
	string item;

	while (getline(ss, item, ' '))
	{
		if (item.front() == item.back())
			s2 += item + ' ';
	}

	cout << "���������: " << s2 << endl;
}