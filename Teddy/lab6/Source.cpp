/*
	��� �����.
	��������� ��� ������ ���� ��������������� ����������� � ����������� ������ ������� ������
	�� ������� � ������, ���������� ���� ������� � ������� ����������� ������� �������: 
		�) ����������� ������
		�) ����������� ������.
	��������, ��� ������ �+(45-�(�)*(�-�)) ������ ���� ��������: 
		�) 8 10; 12 16; 3 17;
		�) 3 17; 8 10; 12 16.
*/

#include "Header.h"

Stack find1(string str);		//���������� ���� � ������ (������� ����. � ����. ������), ������������ � ������� ����������� ������� ������� ����������� ������
Stack find2(string str);		//���������� ���� � ������ (������� ����. � ����. ������), ������������ � ������� ����������� ������� ������� ����������� ������
void PrintStack(Stack stack);	//������� ���� �� �����
Stack InvertStack(Stack a);		//���������� ������������ ����

int main()
{
	setlocale(0, "rus");

	cout << "������� ���������:" << endl;
	
	string line;
	getline(cin, line);

	cout << "a) ";
	PrintStack(find1(line));
	cout << endl;

	cout << "b) ";
	PrintStack(find2(line));
	cout << endl;

	return 0;
}

Stack find1(string str)
{
	Stack a, b;

	for (int i = 0; i < str.size(); i++)
	{
		if (str[i] == '(')
			a.push({ i + 1, 0 });
		else if (str[i] == ')')
			b.push({ a.pop().a, i + 1 });
	}

	return b;
}

Stack find2(string str)
{
	Stack a, b;

	for (int i = str.size() - 1; i >= 0; i--)
	{
		if (str[i] == ')')
			a.push({ 0, i + 1 });
		else if (str[i] == '(')
			b.push({ i + 1, a.pop().b });
	}

	return InvertStack(b);
}

void PrintStack(Stack stack)
{
	if (stack.empty())
		return;
	Range r = stack.pop();
	PrintStack(stack);
	cout << r.a << ' ' << r.b << "; ";
}

Stack InvertStack(Stack a)
{
	Stack b;
	while (!a.empty())
		b.push(a.pop());
	return b;
}