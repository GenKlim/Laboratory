#include <iostream>
#include <conio.h>

using namespace std;

void createMass(int* &mass, int &count);
void printMass(int* mass, int count);
int mulNegative(int* mass, int count);
void removeMaxInMass(int* &mass, int &count);

void main()
{
	char cmd;
	int* mass = 0;
	int conut = 0;

	cout << "1. Create array" << endl;
	cout << "2. Print array" << endl;
	cout << "3. Multiplication negative elements" << endl;
	cout << "4. Remove max elements" << endl;
	cout << "0. Exit" << endl;

	bool needClose = false;
	while (!needClose)
	{
		cin >> cmd;
		switch (cmd)
		{
		case '1':
			createMass(mass, conut);
			break;
		case '2':
			printMass(mass, conut);
			break;
		case '3':
		{
			int i = mulNegative(mass, conut);
			if (i != 0)
				cout << "Multiplication = " << i << endl;
		}
		break;
		case '4':
			removeMaxInMass(mass, conut);
			printMass(mass, conut);
			break;
		case '0':
			needClose = true;
			break;
		}
	}

	system("pause");
}

void createMass(int* &mass, int &count)
{
	if (mass != 0)
		delete[] mass;

	cout << "Enter array size: ";
	cin >> count;
	mass = new int[count];

	cout << "Enter array element: ";
	for (int i = 0; i < count; i++)
		cin >> mass[i];
}

void printMass(int* mass, int count)
{
	if (!count)
	{
		cout << "Array not have element." << endl;
		return;
	}

	cout << "Array = [";
	for (int i = 0; i < count - 1; i++)
		cout << mass[i] << ", ";

	if (count != 0)
		cout << mass[count - 1] << "]";

	cout << endl;
}

int mulNegative(int* mass, int count)
{
	if (!count)
	{
		cout << "Error: array not have element." << endl;
		return 0;
	}

	int memory = 0;
	for (int i = 0; i < count; i++)
	{
		if (mass[i] < 0)
			memory++;
	}

	if (memory = 0)
	{
		cout << "Error: array not have negative element." << endl;
		return 0;
	}

	memory = 1;
	for (int i = 0; i < count; i++)
	{
		if (mass[i] < 0)
			memory *= mass[i];
	}

	return memory;
}

void removeMaxInMass(int* &mass, int &count)
{
	if (!count)
	{
		cout << "Error: array not have element." << endl;
		return;
	}

	int max = mass[0];
	for (int i = 1; i < count; i++)
	{
		if (mass[i] > max)
			max = mass[i];
	}

	int maxCount = 0;
	for (int i = 0; i < count; i++)
	{
		if (mass[i] == max)
			maxCount++;
	}

	int* mass2 = new int[count - maxCount];
	for (int i = 0, n = 0; i < count; i++)
	{
		if (mass[i] != max)
			mass2[n++] = mass[i];
	}

	mass = mass2;
	count -= maxCount;
}