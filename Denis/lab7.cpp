#include <iostream>
#include <conio.h>

using namespace std;

/*
	Дана целочисленная матрица из n строк и m столбцов.
	Удалить каждую нулевую строку.
*/

#define maxRow 100
#define maxCol 50

void main()
{
	int a[maxRow][maxCol];
	int r, c;

	cout << "Enter row count (maximum " << maxRow << "): ";
	cin >> r;
	cout << "Enter collum count (maximum " << maxCol << "): ";
	cin >> c;

	cout << "Enter " << r*c << " number:" << endl;
	for (int i = 0; i < r; i++)
	{
		for (int j = 0; j < c; j++)
			cin >> a[i][j];
	}

	cout << endl;
	for (int i = 0; i < r; i++)
	{
		for (int j = 0; j < c; j++)
			cout << a[i][j] << ' ';
		cout << endl;
	}

	for (int i = 0; i < r; i++)
	{
		bool isNull = true;
		for (int j = 0; j < c; j++)
		{
			if (a[i][j])
			{
				isNull = false;
				break;
			}
		}
		if (isNull)
		{
			for (int k = i; k < r - 1; k++)
			{
				for (int n = 0; n < c; n++)
					a[k][n] = a[k + 1][n];
			}
			r--;
		}
	}

	cout << endl;
	for (int i = 0; i < r; i++)
	{
		for (int j = 0; j < c; j++)
			cout << a[i][j] << ' ';
		cout << endl;
	}

	system("pause");
}