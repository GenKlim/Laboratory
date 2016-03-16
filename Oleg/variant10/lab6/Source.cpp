#define StackTypeArray
#include "Header.h"

double math(string);

int main(int argc, char* argv[])
{
	setlocale(LC_CTYPE, "RUS");

	string a;
	while (true)
	{
		cout << "Введите выражение: " << endl;
		getline(cin, a);
		cout << "Результат: " << math(a) << endl;
		system("pause");
		system("cls");
	}
}

double math(string str)
{
	Stack operand, operation;

	for (int i = str.length() - 1; i >= 0; i--)
	{
		if (str[i] <= '9' && '0' <= str[i])
		{
			string temp;
			while (i != -1 && str[i] <= '9' && '0' <= str[i])
				temp += str[i--];
			operand.push(atof(temp.c_str()));
		}
		else
			operation.push(str[i]);
	}

	while (operation.Size())
	{
		char op = operation.pop();
		double a = operand.pop();
		double b = operand.pop();
		double c = 0;

		switch (op)
		{
		case '-': c = a - b; break;
		case '+': c = a + b; break;
		case '*': c = a * b; break;
		case '/': c = a / b; break;
		}

		operand.push(c);
	}

	return operand.pop();
}