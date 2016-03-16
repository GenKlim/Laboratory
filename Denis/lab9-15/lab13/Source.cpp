#include <iostream>
#include <conio.h>

using namespace std;

template<typename T>
void createMtx(T** &mtx, int &row, int &col);
template<typename T>
void printMtx(T** mtx, int row, int col);
template<typename T>
void sortMtx(T** mtx, int row, int col);

void main()
{
	char cmd;

	int** IntegerMtx = 0;
	float** FloatMtx = 0;
	char** CharMtx = 0;
	int col = 0;
	int row = 0;

	cout << "Select matrix type:" << endl;
	cout << "1. Integer" << endl;
	cout << "2. Float" << endl;
	cout << "3. Char" << endl;

	int useType;
	cin >> useType;
	system("cls");

	cout << "1. Create matrix" << endl;
	cout << "2. Print matrix" << endl;
	cout << "3. Sort matrix" << endl;
	cout << "0. Exit" << endl;

	bool needClose = false;
	while (!needClose)
	{
		cin >> cmd;
		switch (cmd)
		{
		case '1':
			switch (useType)
			{
			case 1:
				createMtx(IntegerMtx, row, col);
				break;
			case 2:
				createMtx(FloatMtx, row, col);
				break;
			case 3:
				createMtx(CharMtx, row, col);
				break;
			}
			break;
		case '2':
			switch (useType)
			{
			case 1:
				printMtx(IntegerMtx, row, col);
				break;
			case 2:
				printMtx(FloatMtx, row, col);
				break;
			case 3:
				printMtx(CharMtx, row, col);
				break;
			}
			break;
		case '3':
			switch (useType)
			{
			case 1:
				sortMtx(IntegerMtx, row, col);
				break;
			case 2:
				sortMtx(FloatMtx, row, col);
				break;
			case 3:
				sortMtx(CharMtx, row, col);
				break;
			}
			break;
		case '0':
			needClose = true;
			break;
		}
	}
	system("pause");
}

template<typename T>
void createMtx(T** &mtx, int &row, int &col)
{
	if (row != 0)
	{
		for (int i = 0; i < row; i++)
			delete[] mtx[i];
		delete[] mtx;
	}

	cout << "Enter row count: ";
	cin >> row;
	cout << "Enter collom count: ";
	cin >> col;

	mtx = new T*[row];
	cout << "Enter matrix element:" << endl;

	for (int i = 0; i < row; i++)
	{
		mtx[i] = new T[col];
		for (int j = 0; j < col; j++)
			cin >> mtx[i][j];
	}
	cout << "Done." << endl;
}

template<typename T>
void printMtx(T** mtx, int row, int col)
{
	cout << "Matrix:" << endl;
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
			cout << mtx[i][j] << ' ';
		cout << endl;
	}
}

template<typename T>
void sortMtx(T** mtx, int row, int col)
{
	if (col != 0)
	{
		for (int i = 0; i < row - 1; i++)
		{
			for (int j = 0; j < row - i - 1; j++)
			{
				if (mtx[j][col - 1] > mtx[j + 1][col - 1])
				{
					T* temp = mtx[j];
					mtx[j] = mtx[j + 1];
					mtx[j + 1] = temp;
				}
			}
		}
	}
	cout << "Done." << endl;
}