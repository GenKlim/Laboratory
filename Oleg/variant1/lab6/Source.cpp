#define StackTypeArray
#include "Header.h"

string math(string, string);
Stack stringToStack(string, int);
string stackToString(Stack);

int main(int argc, char* argv[])
{
	setlocale(LC_CTYPE, "RUS");

	string a, b;
	while (true)
	{
		cout << "¬ведите 2 числа: " << endl;
		cin >> a >> b;
		cout << "–езультат: " << math(a, b) << endl;
		system("pause");
		system("cls");
	}
}

string math(string sa, string sb)
{
	int len = sa.length() > sb.length() ? sa.length() : sb.length();
	Stack a = stringToStack(sa, len);
	Stack b = stringToStack(sb, len);
	Stack c;

	bool p_flag = false;
	while (len--)
	{
		int sum = a.pop() + b.pop() + p_flag;
		p_flag = sum / 10;
		c.push(sum % 10);
	}
	if(p_flag)
		c.push(1);

	return stackToString(c);
}

Stack stringToStack(string str, int size)
{
	Stack s;
	for (int i = 0; i < size - str.length(); i++)
		s.push(0);

	for (string::iterator i = str.begin(); i != str.end(); i++)
		s.push(*i - '0');
	return s;
}

string stackToString(Stack stack)
{
	string s;
	while (stack.Size())
		s += stack.pop() + '0';
	return s;
}