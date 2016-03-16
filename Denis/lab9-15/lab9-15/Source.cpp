#include <iostream>
#include <conio.h>

using namespace std;

bool isSymbol(char c);
bool isPalindrom(char* text, int start, int len);

void main()
{
	char text[256];
	while (true)
	{
		cout << "Enter text: ";
		cin.getline(text, sizeof(text) / sizeof(char));

		int offest = -1;
		int start, len = 0;
		int count = 0;

		while (text[++offest])
		{
			if (isSymbol(text[offest]))
			{
				if (len == 0)
					start = offest;
				len++;
			}
			else if (len != 0)
			{
				if (isPalindrom(text, start, len))
				{
					for (int i = 0; i < len; i++)
						cout << text[start + i];
					cout << ' ';
					count++;
				}
				len = 0;
			}
		}

		if (len != 0)
		{
			if (isPalindrom(text, start, len))
			{
				for (int i = 0; i < len; i++)
					cout << text[start + i];
				count++;
			}
		}

		if (!count)
			cout << "Net palindromov";

		cout << endl;
	}

	system("pause");
}

bool isSymbol(char c)
{
	return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || ('0' <= c && c <= '9');
}

bool isPalindrom(char* text, int start, int len)
{
	int end = start + len - 1;
	for (int i = 0; i < len; i++)
	{
		if (text[start + i] != text[end - i])
			return false;
	}
	return true;
}