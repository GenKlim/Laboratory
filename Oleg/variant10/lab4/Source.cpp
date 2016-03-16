#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string"
#include "sstream"

using namespace std;
#define mapSize 32
#define maxValue 8*mapSize

char* read();
void print(char* map);
char* intersection(char* mapA, char* mapB);

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	char *A, *B, *AiB;
	
	cout << "Введите первое множество: " << endl;
	A = read();

	cout << "Введите второе множество: " << endl;
	B = read();

	cout << "Пересичение множеств: " << endl;
	AiB = intersection(A, B);
	print(AiB);

	delete[] A;
	delete[] B;
	delete[] AiB;

	system("pause");
	return 0;
}

char* read()
{
	char* out = new char[mapSize];
	for (int i = 0; i < mapSize; i++)
		out[i] = 0;

	string s1;
	getline(cin, s1);
	stringstream ss(s1);
	string item;

	while (getline(ss, item, ' '))
	{
		int a = atoi(item.c_str());
		if (a >= maxValue)
			a = maxValue - 1;

		out[a / 8] |= 1 << (a % 8);
	}

	return out;
}

void print(char * map)
{
	for (int i = 0; i < mapSize; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			if (map[i] >> j & 1)
				cout << i * 8 + j << ' ';
		}
	}
	cout << endl;
}

char* intersection(char * mapA, char * mapB)
{
	char* out = new char[mapSize];

	for (int i = 0; i < mapSize; i++)
		out[i] = mapA[i] & mapB[i];

	return out;
}