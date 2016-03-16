#define _CRT_NONSTDC_NO_DEPRECATE
#define USE_STATICK_STACK 1	// тут 0 значит использовать стек на основе односвязного списка
							// 1 - использовать стек на основе статичного массива

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

	cout << "Введите выражение" << endl;

	while (true)
		begin();

	return 0;
}


// Считывает с консоли строку в инфиксной форме и пропускает ее через парсер
// После перебирает строку в постфиксой форме:
//	 если пробел то пропускаем
//   если число то запихиваем в стек
//   иначе берем из стека 2 верхних числа далаем с ними нужную операция и зипихиваем обратно на вершину стека
// В конце должен остатся 1 элмент в стеке - это ответ

void begin()
{
	string str;
	Stack stack;

	cout << "> ";
	getline(cin, str);
	str = parcer.begin(removeSpaces(str));

	if (str.empty())
	{
		cout << "Синтаксическая ошибка." << endl;
		return;
	}

	cout << "Постфиксная форма: " << str << endl;

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
			cout << "Синтаксическая ошибка." << endl;
			return;
		}
	}

	cout << "Ответ: " << stack.pop() << endl;
}

//Удаляет пробелы, заменяет '.' на ','
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
