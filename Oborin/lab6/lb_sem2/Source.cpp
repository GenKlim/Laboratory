#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string"
#include "sstream"
#include "conio.h"

#define USE_STATICK_STACK 1

#if USE_STATICK_STACK
#include "StackStatick.h"
#else
#include "StackDynamic.h"
#endif

using namespace std;

int offest;
string infix, postfix;

void level0();
void level1();
void level2();
void calc();

int main()
{
	setlocale(0, "rus");

	cout << "Допускаются опирации: +,-,*,/,^,%." << endl;
	cout << "Скобки разрешены." << endl;

	while (true)
	{
		cout << "> ";
		calc();
	}

	return 0;
}

void calc()
{
	string input;
	infix = "";
	postfix = "";
	offest = 0;

	getline(cin, input);
	for (string::const_iterator i = input.begin(); i != input.end(); i++)
	{
		if (*i == '.')
			infix += ',';
		else if (*i != ' ')
			infix += *i;
	}

	level0();

	if (offest != infix.size())
	{
		cout << "Синтаксическая ошибка.";
		return;
	}

	Stack<double> stack;

	for (string::const_iterator i = postfix.begin(); i != postfix.end(); i++)
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
		double c = 0;
		switch (*i)
		{
		case '+': c = a + b; break;
		case '-': c = a - b; break;
		case '/': c = a / b; break;
		case '*': c = a * b; break;
		case '%': c = (int)a % (int)b; break;
		case '^': c = pow(a, b); break;
		default:
			cout << "Синтаксическая ошибка." << endl;
			return;
		}
		stack.push(c);
	}

	cout << " = " << stack.pop() << endl;
}

void level0()
{
	level1();
	while (infix[offest] == '+' || infix[offest] == '-')
	{
		char temp = infix[offest];
		offest++;
		level1();
		postfix += temp;
	}
}

void level1()
{
	level2();
	while (	infix[offest] == '*' || infix[offest] == '/' ||
			infix[offest] == '%' || infix[offest] == '^')
	{
		char temp = infix[offest];
		offest++;
		level2();
		postfix += temp;
	}
}

void level2()
{
	if (infix[offest] == '(')
	{
		offest++;
		level0();
		if (infix[offest] != ')')
			cout << "Синтаксическая ошибка.";
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
			cout << "Синтаксическая ошибка.";
	}
}