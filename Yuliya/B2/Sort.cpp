#include <stdio.h>
#include <conio.h>
#include < locale.h> 
#include <iostream>
using namespace std;

extern "C" void swap1();//Меняет 2 байта местами
extern "C" char* a;	//Указатель на 1 байт, который нужно поменять
extern "C" char* b;	//Указатель на 2 байт, который нужно поменять

int getByte(__int64 n, size_t i)
{
	return *((char*)&n + i);	//Берет i-тый байт из n
}

void printBytes(__int64 n)	//Выводит все байты
{
	for (size_t i = 0; i < sizeof(n); i++)
		cout << getByte(n, i) << " ";

	cout << endl;
}

int main()
{
	__int64 number = 756127120042875337;

	cout << "Input:  ";
	printBytes(number);

	for (size_t i = 0; i < 7; i++)
	{
		for (size_t j = 0; j < 7 - i; j++)
		{
			if (getByte(number, j) > getByte(number, j + 1))
			{
				a = (char*)&number + j;
				b = (char*)&number + j + 1;
				swap1();
			}
		}
	}

	cout << "Output: ";
	printBytes(number);
	
	_getch();
	return 0;

	//short int s1 = 0x64;
	//short int s2 = 0x0F;
	//short int s3 = 0x00;
	//short int s4 = 0x0C;
	//short int s5 = 0xFF;
	//short int s6 = 0xFF;
	//short int s7 = 0xA9;
	//short int s8 = 0x2D;
	//short int mash[8] = { s1, s2, s3, s4, s5, s6, s7, s8 };
	//for (int i = 0; i < 8; i++) cout << mash[i] << " ";
	//cout << endl;
	//for (int i = 0; i < 7; i++)
	//{
	//	for (int j = 0; j < 7; j++)
	//	{
	//		if (mash[j] > mash[j + 1])
	//		{
	//			a = mash[j];
	//			b = mash[j + 1];
	//			swap1();
	//			mash[j] = a;
	//			mash[j + 1] = b;
	//			//swap1(mash[j], mash[j + 1]);
	//		}
	//	}
	//}
	//for (int i = 0; i < 8; i++) cout << mash[i] << " ";
	//_getch();
	//return 0;
}
