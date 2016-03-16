#include <iostream>
#include <conio.h>

using namespace std;

void createMtx(int** &mtx, int &row, int &col);
void createMtx(char** &mtx, int &row, int &col);
void printMtx(int** mtx, int row, int col);
void printMtx(char** mtx, int row, int col);
void sortMtx(int** mtx, int row, int col);
void sortMtx(char** mtx, int row, int col);

void main()
{
	char cmd;

	int** IntegerMtx = 0;
	char** CharMtx = 0;
	int col = 0;
	int row = 0;

	cout << "Select matrix type:" << endl;
	cout << "1. Integer" << endl;
	cout << "2. Char" << endl;

	cin >> cmd;
	bool useInteger = cmd == '1';
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
			if (useInteger)
				createMtx(IntegerMtx, row, col);
			else
				createMtx(CharMtx, row, col);
			break;
		case '2':
			if (useInteger)
				printMtx(IntegerMtx, row, col);
			else
				printMtx(CharMtx, row, col);
			break;
		case '3':
			if (useInteger)
				sortMtx(IntegerMtx, row, col);
			else
				sortMtx(CharMtx, row, col);
			break;
		case '0':
			needClose = true;
			break;
		}
	}
	system("pause");
}

void createMtx(int** &mtx, int &row, int &col)
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

	mtx = new int*[row];
	cout << "Enter matrix element:" << endl;

	for (int i = 0; i < row; i++)
	{
		mtx[i] = new int[col];
		for (int j = 0; j < col; j++)
			cin >> mtx[i][j];
	}
	cout << "Done." << endl;
}

void printMtx(int** mtx, int row, int col)
{
	cout << "Matrix:" << endl;
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
			cout << mtx[i][j] << ' ';
		cout << endl;
	}
}

void sortMtx(int** mtx, int row, int col)
{
	if (col != 0)
	{
		for (int i = 0; i < row - 1; i++)
		{
			for (int j = 0; j < row - i - 1; j++)
			{
				if (mtx[j][col - 1] > mtx[j + 1][col - 1])
				{
					int* temp = mtx[j];
					mtx[j] = mtx[j + 1];
					mtx[j + 1] = temp;
				}
			}
		}
	}
	cout << "Done." << endl;
}

void createMtx(char** &mtx, int &row, int &col)
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

	mtx = new char*[row];
	cout << "Enter matrix element:" << endl;

	for (int i = 0; i < row; i++)
	{
		mtx[i] = new char[col];
		for (int j = 0; j < col; j++)
			cin >> mtx[i][j];
	}
	cout << "Done." << endl;
}

void printMtx(char** mtx, int row, int col)
{
	cout << "Matrix:" << endl;
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col; j++)
			cout << mtx[i][j] << ' ';
		cout << endl;
	}
}

void sortMtx(char** mtx, int row, int col)
{
	if (col != 0)
	{
		for (int i = 0; i < row - 1; i++)
		{
			for (int j = 0; j < row - i - 1; j++)
			{
				if (mtx[j][col - 1] > mtx[j + 1][col - 1])
				{
					char* temp = mtx[j];
					mtx[j] = mtx[j + 1];
					mtx[j + 1] = temp;
				}
			}
		}
	}
	cout << "Done." << endl;
}