#define _CRT_NONSTDC_NO_DEPRECATE
#define USE_STATICK_STACK 1	// ��� 0 ������ ������������ ���� �� ������ ������������ ������
							// 1 - ������������ ���� �� ������ ���������� �������

using namespace std;

#include "iostream"
#include "string"
#include "conio.h"
#include "StackStatick.h"
#include "StackNode.h"
#include "Parcer.h"

Parcer parcer;
void begin();
string removeSpaces(string);

int main()
{
	setlocale(0, "rus");

	cout << "������� ���������" << endl;

	while (true)
		begin();

	return 0;
}


// ��������� � ������� ������ � ��������� ����� � ���������� �� ����� ������
// ����� ���������� ������ � ���������� �����:
//	 ���� ������ �� ����������
//   ���� ����� �� ���������� � ����
//   ����� ����� �� ����� 2 ������� ����� ������ � ���� ������ �������� � ���������� ������� �� ������� �����
// � ����� ������ ������� 1 ������ � ����� - ��� �����

void begin()
{
	string str;
	Stack stack;

	cout << "> ";
	getline(cin, str);
	str = parcer.begin(removeSpaces(str));

	if (str.empty())
	{
		cout << "�������������� ������." << endl;
		return;
	}

	cout << "����������� �����: " << str << endl;

	for (string::const_iterator i = str.begin(); i != str.end(); i++)
	{
		if (*i == ' ')
			continue;
		if (isdigit(*i))
		{
			string temp;
			while (isdigit(*i) || *i == ',')
			{
				temp += *i;
				i++;
			}
			stack.push(atof(temp.c_str()));
			continue;
		}

		double b = stack.pop();
		double a = stack.pop();
		switch (*i)
		{
		case '+': stack.push(a + b); break;
		case '-': stack.push(a - b); break;
		case '/': stack.push(a / b); break;
		case '*': stack.push(a * b); break;
		default:
			cout << "�������������� ������." << endl;
			return;
		}
	}

	cout << "�����: " << stack.pop() << endl;
}

//������� �������, �������� '.' �� ','
string removeSpaces(string input)
{
	string result;
	for (string::const_iterator i = input.begin(); i != input.end(); i++)
	{
		if (*i == '.')
			result += ',';
		else if (*i != ' ')
			result += *i;
	}
	return result;
}
