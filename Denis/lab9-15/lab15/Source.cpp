#define _CRT_SECURE_NO_WARNINGS

#include <iostream>
#include <string>
#include <fstream>

using namespace std;

struct route
{
	int number;
	string target;
	int duration;
	int date;
};

void loadInText(string file);
void loadInBin(string file);
void saveToBin(string file);
route* myFind(int fNumber, unsigned left, unsigned right);
void print();
void sort();

route mass[50];
int massCount = 0;

void main()
{
	string file;
	cout << "Enter file name: ";
	cin >> file;

	loadInText(file);
	print();
	sort();
	print();

	int f;
	cout << "Enter route number for find: ";
	cin >> f;
	route* fResult = myFind(f, 0, massCount - 1);
	if (fResult)
		cout << fResult->number << '\t' << fResult->target << '\t' << fResult->duration << '\t' << fResult->date << endl;
	else
		cout << "Not found." << endl;

	saveToBin(file + ".bin");
	loadInBin(file + ".bin");
	print();
}

void print()
{
	for (int i = 0; i < massCount; i++)
		cout << mass[i].number << '\t' << mass[i].target << '\t' << mass[i].duration << '\t' << mass[i].date << endl;
}

void sort()
{
	cout << "Sort" << endl;
	for (int i = 0; i < massCount - 1; i++)
	{
		for (int j = 0; j < massCount - i - 1; j++)
		{
			if (mass[j].number > mass[j + 1].number)
			{
				route temp = mass[j];
				mass[j] = mass[j + 1];
				mass[j + 1] = temp;
			}
		}
	}
}

route* myFind(int fNumber, unsigned left, unsigned right)
{
	if (left > right)
		return 0;

	unsigned mid = (left + right) >> 1;

	if (mass[mid].number == fNumber)
		return &mass[mid];
	if (mass[mid].number < fNumber)
		return myFind(fNumber, mid + 1, right);
	if (mass[mid].number > fNumber)
		return myFind(fNumber, left, mid - 1);
}

void loadInText(string file)
{
	ifstream f;
	f.open(file);
	cout << "Load in " << file << endl;

	massCount = 0;
	while (!f.eof())
	{
		f >> mass[massCount].number >> mass[massCount].target >> mass[massCount].duration >> mass[massCount].date;
		massCount++;
	}

	f.close();
}

void loadInBin(string file)
{
	FILE* pFile;
	pFile = fopen(file.c_str(), "rb");
	cout << "Load in binary " << file << endl;

	massCount = -1;
	while (!feof(pFile))
	{
		route* r = &mass[++massCount];

		fread(&r->number, 1, sizeof(int), pFile);

		size_t len;
		fread(&len, 1, sizeof(size_t), pFile);
		char* temp = new char[len + 1];
		fread(temp, len, sizeof(char), pFile);
		temp[len] = 0;
		r->target = temp;
		delete[] temp;

		fread(&r->duration, 1, sizeof(int), pFile);
		fread(&r->date, 1, sizeof(int), pFile);
	}

	fclose(pFile);
}

void saveToBin(string file)
{
	FILE* pFile;
	pFile = fopen(file.c_str(), "wb");
	cout << "Save to binary " << file << endl;

	for (int i = 0; i < massCount; i++)
	{
		fwrite(&mass[i].number, 1, sizeof(int), pFile);
		int len = mass[i].target.length();
		fwrite(&len, 1, sizeof(size_t), pFile);
		fwrite(mass[i].target.c_str(), len, sizeof(char), pFile);
		fwrite(&mass[i].duration, 1, sizeof(int), pFile);
		fwrite(&mass[i].date, 1, sizeof(int), pFile);
	}

	fclose(pFile);
}