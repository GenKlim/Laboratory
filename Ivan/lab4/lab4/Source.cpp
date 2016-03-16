#include "iostream"

using namespace std;

typedef unsigned int numberType;

#define byteCount sizeof(numberType)
#define bitsCount byteCount*8

void convertToBin(numberType n, bool out[bitsCount]);
void printBin(bool bits[bitsCount]);

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	numberType a;
	int count;
	bool bin[bitsCount];

	while (true)
	{
		cout << "Число: " << endl;
		cin >> a;

		convertToBin(a, bin);
		printBin(bin);

		count = 0;
		for (int i = 0; i < byteCount; i++)
		{
			for (int j = 0; j < 8; j++)
				if (bin[i * 8 + j])
					count++;
		}

		cout << count << " едениц." << endl << endl;
	}
	return 0;
}

void convertToBin(numberType n, bool out[bitsCount])
{
	int offest = 0;
	for (char* i = (char*)&n; i < (char*)&n + byteCount; i++)
	{
		for (int j = 0; j < 8; j++)
			out[offest++] = *i >> j & 1;
	}
}

void printBin(bool bits[bitsCount])
{
	for (int i = 0; i < byteCount; i++)
	{
		for (int j = 0; j < 8; j++)
			cout << bits[i * 8 + j];
		cout << ' ';
	}
	cout << endl;
}
