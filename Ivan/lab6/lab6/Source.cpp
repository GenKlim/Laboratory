#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string"
#include "conio.h"

using namespace std;

#include "Stack.h"

int math(string str)
{
	Stack stack;

	for (int i = 0; i < str.size(); i++)
	{
		if (str[i] == 'M' || str[i] == 'm')
			stack.push(str[i]);
		else if (str[i] == ')')
		{
			int a = stack.pop();
			int b = stack.pop();

			if (stack.pop() == 'M')
				stack.push(a>b ? a : b);
			else
				stack.push(a < b ? a : b);
		}
		else
		{
			string s;
			while ('0' <= str[i] && str[i] <= '9')
				s += str[i++];
			if (!s.empty())
			{
				stack.push(atoi(s.c_str()));
				i--;
			}
		}
	}

	return stack.pop();
}

int main()
{
	setlocale(0, "rus");

	while (true)
	{
		cout << "¬ведите выражение:" << endl;

		string line;
		getline(cin, line);

		cout << "ќтвет: " << math(line) << endl;
	}

	return 0;
}