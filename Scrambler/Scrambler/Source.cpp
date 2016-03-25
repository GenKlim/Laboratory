#include <iostream>
#include <cstring>
#include <cstdio>
#include <locale.h>
#include <string>

using namespace std;

struct Scrambler
{
	string key;
	virtual string Code(string input) = 0;
	virtual string Decode(string input) = 0;
};

struct S_XOR : public Scrambler
{
	string Code(string input)
	{
		string output = string(input);
		int n = 0;
		for (auto i = output.begin(); i != output.end(); i++, n++)
			*i = *i ^ key[n % key.size()];

		return output;
	}

	string Decode(string input)
	{
		return Code(input);
	}
};

struct S_Vigenere : public Scrambler
{
	string Code(string input)
	{
		string output = string(input);
		int n = 0;
		for (auto i = output.begin(); i != output.end(); i++, n++)
			*i = *i + key[n % key.size()];

		return output;
	}

	string Decode(string input)
	{
		string output = string(input);
		int n = 0;
		for (auto i = output.begin(); i != output.end(); i++, n++)
			*i = *i - key[n % key.size()];

		return output;
	}
};

struct S_Trisemus : public Scrambler
{
	char* makeTable()
	{
		char* abc = new char[256];
		int j = 0;

		for (auto i = key.begin(); i != key.end(); i++)
		{
			bool flag = true;
			for (int k = 0; k < j && flag; k++)
			{
				if (abc[k] == *i)
					flag = false;
			}
			if (flag)
				abc[j++] = *i;
		}

		for (unsigned char i = 0; i < 255; i++)
		{
			bool flag = true;
			for (int k = 0; k < j && flag; k++)
			{
				if (abc[k] == i)
					flag = false;
			}
			if (flag)
				abc[j++] = i;
		}

		return abc;
	}

	string Code(string input)
	{
		char* abc = makeTable();

		string output = string(input);
		for (auto i = output.begin(); i != output.end(); i++)
		{
			for (int j = 0; j < 255; j++)
			{
				if (abc[j] == *i)
				{
					*i = abc[(j + 32) % 256];
					break;
				}
			}
		}

		delete[] abc;
		return output;
	}

	string Decode(string input)
	{
		char* abc = makeTable();

		string output = string(input);
		for (auto i = output.begin(); i != output.end(); i++)
		{
			for (int j = 0; j < 255; j++)
			{
				if (abc[j] == *i)
				{
					int k = j - 32;
					if (k < 0)
						k = 255 + k;
					*i = abc[k];
					break;
				}
			}
		}

		delete[] abc;
		return output;
	}
};

struct S_Polybiy : public S_Trisemus
{
	string Code(string input)
	{
		char* abc = makeTable();

		if (input.size() % 2)
			input += ' ';

		string output;
		for (auto i = input.begin(); i != input.end(); i++)
		{
			for (int j = 0; j < 255; j++)
			{
				if (abc[j] == *i)
				{
					output += (char)(j % 32);
					output += (char)(j/32);
					break;
				}
			}
		}

		delete[] abc;
		return output;
	}

	string Decode(string input)
	{
		char* abc = makeTable();

		string output;
		for (auto i = input.begin(); i != input.end(); i++)
		{
			int index = *i + *(++i) * 32;
			output += abc[index];
		}

		delete[] abc;
		return output;
	}
};

struct S_Zeser : public S_Trisemus
{
	string Code(string input)
	{
		char* abc = makeTable();

		string output = string(input);
		for (auto i = output.begin(); i != output.end(); i++)
			*i = abc[*i];

		delete[] abc;
		return output;
	}

	string Decode(string input)
	{
		char* abc = makeTable();

		string output = string(input);
		for (auto i = output.begin(); i != output.end(); i++)
		{
			for (int j = 0; j < 255; j++)
			{
				if (abc[j] == *i)
				{
					*i = (char)j;
					break;
				}
			}
		}

		delete[] abc;
		return output;
	}
};

Scrambler* getScrambler()
{
	cout << "Введите номер метода шифрования:" << endl;
	cout << "1. XOR" << endl;
	cout << "2. Шифр Виженера" << endl;
	cout << "3. Шифрующие таблицы Трисемуса" << endl;
	cout << "4. Квадрат Полибия" << endl;
	cout << "5. Шифр Цезаря с ключевым словом" << endl;

	int method = 0;
	while (method < 1 || method > 5)
		cin >> method;

	Scrambler* s;
	switch (method)
	{
	case 1:
		return new S_XOR;
	case 2:
		return new S_Vigenere;
	case 3:
		return new S_Trisemus;
	case 4:
		return new S_Polybiy;
	case 5:
		return new S_Zeser;
	}
}

int main()
{
	setlocale(LC_ALL, "");
	
	string msg, rez;
	Scrambler* s = getScrambler();

	cout << "Введите сообщение: " << endl;
	cin.ignore();
	getline(cin, msg);

	cout << "Введите ключ шифрования: ";
	getline(cin, s->key);

	rez = s->Code(msg);
	cout << "Зашифрованное сообщение: " << endl;
	cout << rez << endl;

	msg = s->Decode(rez);
	cout << "Расшифрованное сообщение: " << endl;
	cout << msg << endl;

	delete s;

	system("pause");
	return EXIT_SUCCESS;
}