#pragma once

struct Parcer
{
private:
	int offest;
	string infix, postfix;

	void parce_add_sub();
	void parce_mul_div();
	void parce_symbol();
public:
	string begin(string infix);
};



/*
	������, ������������� ������ �� ��������� ����� (2+2-1) � ����������� (2 2 + 1 -)
	��� �� ��� ������ ������ ��������.
	���� ������� ��� ����� try, catch, exception ����� ��� ��� ��������� ����������
*/

string Parcer::begin(string infix)
{
	this->infix = infix;
	postfix.clear();
	offest = 0;
	try
	{
		parce_add_sub();
	}
	catch (const std::exception&)
	{
		return "";
	}
	return postfix;
}

//����� ������ �����, ��� ������ �������� ���� ����� � ������������ ������ � ����������� ���
void Parcer::parce_add_sub()
{
	parce_mul_div();
	while (infix[offest] == '+' || infix[offest] == '-')
	{
		char temp = infix[offest];
		offest++;
		parce_mul_div();
		postfix += temp;
	}
}

void Parcer::parce_mul_div()
{
	parce_symbol();
	while (infix[offest] == '*' || infix[offest] == '/')
	{
		char temp = infix[offest];
		offest++;
		parce_symbol();
		postfix += temp;
	}
}

void Parcer::parce_symbol()
{
	if (infix[offest] == '(')
	{
		offest++;
		parce_add_sub();
		if (infix[offest] != ')')
			throw exception();
		else
			offest++;
	}
	else
	{
		if (isdigit(infix[offest]))
		{
			string temp;
			while (isdigit(infix[offest]) || infix[offest] == ',')
				postfix += infix[offest++];
			postfix += ' ';
		}
		else
			throw exception();
	}
}