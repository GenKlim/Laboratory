#include <iostream>
#include <fstream>
#include <string>
#include <cstdio>
#include <locale.h>
#include <vector>

using namespace std;

typedef unsigned char uchar;

struct Scrambler
{
	string key;
	virtual vector<uchar> Code(vector<uchar> input) = 0;
	virtual vector<uchar> Decode(vector<uchar> input) = 0;
};

struct S_XOR : public Scrambler
{
	vector<uchar> Code(vector<uchar> input)
	{
		vector<uchar> output = vector<uchar>(input);
		int n = 0;
		for (auto i = output.begin(); i != output.end(); i++, n++)
			*i = *i ^ key[n % key.size()];

		return output;
	}

	vector<uchar> Decode(vector<uchar> input)
	{
		return Code(input);
	}
};

struct S_Vigenere : public Scrambler
{
	vector<uchar> Code(vector<uchar> input)
	{
		vector<uchar> output = vector<uchar>(input);
		int n = 0;
		for (auto i = output.begin(); i != output.end(); i++, n++)
			*i = *i + key[n % key.size()];

		return output;
	}

	vector<uchar> Decode(vector<uchar> input)
	{
		vector<uchar> output = vector<uchar>(input);
		int n = 0;
		for (auto i = output.begin(); i != output.end(); i++, n++)
			*i = *i - key[n % key.size()];

		return output;
	}
};

struct S_Trisemus : public Scrambler
{
	uchar* makeTable()
	{
		uchar* abc = new uchar[256];
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

		for (uchar i = 0; i < 255; i++)
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

	vector<uchar> Code(vector<uchar> input)
	{
		uchar* abc = makeTable();

		vector<uchar> output = vector<uchar>(input);
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

	vector<uchar> Decode(vector<uchar> input)
	{
		uchar* abc = makeTable();

		vector<uchar> output = vector<uchar>(input);
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
	vector<uchar> Code(vector<uchar> input)
	{
		uchar* abc = makeTable();

		if (input.size() % 2)
			input.push_back(' ');

		vector<uchar> output;
		for (auto i = input.begin(); i != input.end(); i++)
		{
			for (int j = 0; j < 255; j++)
			{
				if (abc[j] == *i)
				{
					output.push_back((uchar)(j % 32));
					output.push_back((uchar)(j / 32));
					break;
				}
			}
		}

		delete[] abc;
		return output;
	}

	vector<uchar> Decode(vector<uchar> input)
	{
		uchar* abc = makeTable();

		vector<uchar> output;
		for (auto i = input.begin(); i != input.end(); i++)
		{
			int index = *i + *(++i) * 32;
			output.push_back(abc[index]);
		}

		delete[] abc;
		return output;
	}
};

struct S_Zeser : public S_Trisemus
{
	vector<uchar> Code(vector<uchar> input)
	{
		uchar* abc = makeTable();

		vector<uchar> output = vector<uchar>(input);
		for (auto i = output.begin(); i != output.end(); i++)
			*i = abc[*i];

		delete[] abc;
		return output;
	}

	vector<uchar> Decode(vector<uchar> input)
	{
		uchar* abc = makeTable();

		vector<uchar> output = vector<uchar>(input);
		for (auto i = output.begin(); i != output.end(); i++)
		{
			for (int j = 0; j < 255; j++)
			{
				if (abc[j] == *i)
				{
					*i = (uchar)j;
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
	Scrambler* sh = 0;

	while (!sh)
	{
		cin >> method;

		switch (method)
		{
		case 1: sh = new S_XOR; break;
		case 2: sh = new S_Vigenere; break;
		case 3: sh = new S_Trisemus; break;
		case 4: sh = new S_Polybiy; break;
		case 5: sh = new S_Zeser; break;
		}
	}

	cout << "Введите ключ шифрования: ";
	cin.ignore();
	getline(cin, sh->key);
	return sh;
}

vector<uchar> readFile(string filename, int* len)
{
	ifstream ifs(filename, ios::binary | ios::ate);
	*len = (int)ifs.tellg();

	uchar *buffer = new uchar[*len];
	ifs.seekg(0, ios::beg);
	ifs.read((char*)buffer, *len);
	ifs.close();

	vector<uchar> result(buffer, buffer + *len);
	delete buffer;
	return result;
}

void writeFile(string filename, const vector<uchar>& buffer, int len)
{
	ofstream ofs(filename, ios::binary | ios::ate);
	ofs.write((char*)buffer.data(), len);
	ofs.close();
}

int main()
{
	setlocale(LC_ALL, "");

	string msg, rez;
	vector<uchar> buff;
	Scrambler* s;
	uchar m;
	int len;

	while (true)
	{
		cout << "1. Зашифровать файл" << endl;
		cout << "2. Расшифровать файл" << endl;
		cout << "3. Зашифровать текст" << endl;
		cout << "4. Расшифровать текст" << endl;

		cin >> m;
		s = getScrambler();

		switch (m)
		{
		case '1':
			cout << "Введите имя файла:" << endl;
			getline(cin, msg);
			buff = s->Code(readFile(msg, &len));
			writeFile(msg + ".lock", buff, len);
			cout << "Зашифрованый файл:" << endl << msg << ".lock" << endl;
			break;
		case '2':
			cout << "Введите имя зашифрованого файла:" << endl;
			getline(cin, msg);
			buff = s->Decode(readFile(msg, &len));
			writeFile(msg + ".unlock", buff, len);
			cout << "Расшифрованый файл:" << endl << msg << ".unlock" << endl;
			break;
		case '3':
			cout << "Введите зашифрованное сообщение:" << endl;
			getline(cin, msg);
			buff = s->Code(vector<uchar>(msg.begin(), msg.end()));
			rez = string(buff.begin(), buff.end());
			cout << "Зашифрованное сообщение:" << endl;
			cout << rez << endl;
			break;
		case '4':
			cout << "Введите зашифрованное сообщение:" << endl;
			getline(cin, msg);
			buff = s->Decode(vector<uchar>(msg.begin(), msg.end()));
			rez = string(buff.begin(), buff.end());
			cout << "Расшифрованное сообщение:" << endl;
			cout << rez << endl;
			break;
		}
		cout << endl;
		delete s;
	}

	system("pause");
	return EXIT_SUCCESS;
}