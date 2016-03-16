#include "iostream"

using namespace std;
typedef unsigned int type;
#define byteCount sizeof(type)
#define bitsCount byteCount*8

type add(type a, type b);
void toBits(type n, bool out[bitsCount]);
type inBits(bool bits[bitsCount]);
void printBits(bool bits[bitsCount]);

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	type a, b;
	cout << "¬ведите первое число: " << endl;
	cin >> a;
	cout << "¬ведите второе число: " << endl;
	cin >> b;

	cout << endl;
	cout << endl << "a + b = " << add(a, b) << endl;

	system("pause");
	return 0;
}

type add(type a, type b)
{
	bool bitsA[bitsCount];
	bool bitsB[bitsCount];
	bool bitsC[bitsCount];

	toBits(a, bitsA);
	toBits(b, bitsB);
	toBits(0, bitsC);

	for (int i = 0; i < bitsCount-1; i++)
	{
		int r = bitsC[i] + bitsA[i] + bitsB[i];
		bitsC[i] = r % 2;
		bitsC[i + 1] = r > 1;
	}

	cout << "  ";
	printBits(bitsA);
	cout << "+ ";
	printBits(bitsB);
	cout << "= ";
	printBits(bitsC);

	return inBits(bitsC);
}

void toBits(type n, bool out[bitsCount])
{
	char* start = (char*)&n;
	int offest = 0;

	for (char* i = start; i < start + byteCount; i++)
	{
		for (int j = 0; j < 8; j++)
			out[offest++] = *i >> j & 1;
	}
}

type inBits(bool bits[bitsCount])
{
	type out = 0;
	char* start = (char*)&out;
	int offest = 0;

	for (char* i = start; i < start + byteCount; i++)
	{
		for (int j = 0; j < 8; j++)
			*i |= bits[offest++] << j;
	}
	return out;
}

void printBits(bool bits[bitsCount])
{
	for (int i = 0; i < byteCount; i++)
	{
		for (int j = 0; j < 8; j++)
			cout << bits[i * 8 + j];
		cout << ' ';
	}
	cout << endl;
}
