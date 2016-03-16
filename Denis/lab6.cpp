#include <iostream>
#include <conio.h>

using namespace std;

/*
	Циклически сдвинуть элементы массива на k позиций вправо
*/

#define aSize 10

void main()
{
	int a[aSize], k;

	cout << "a = [";
	for (int i = 0; i < aSize; i++)
	{
		a[i] = rand() % 10;
		cout << a[i] << (i + 1 < aSize ? ", " : "]\n");
	}

	cout << "Enter k: ";
	cin >> k;

	while (k)
	{
		int temp = a[aSize - 1];
		for (int i = aSize - 1; i > 0; i--)
			a[i] = a[i - 1];
		a[0] = temp;

		k--;
	}

	cout << "a = [";
	for (int i = 0; i < aSize; i++)
		cout << a[i] << (i + 1 < aSize ? ", " : "]\n");

	system("pause");
}