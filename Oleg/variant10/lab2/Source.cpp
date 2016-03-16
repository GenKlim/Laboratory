#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string.h"
#include "conio.h"

#define staticArrayMaxSize 256
typedef unsigned int arrayType;
using namespace std;

bool isUseStatic;
int staticArraySize = 0;
int dynamicArraySize = 0;
arrayType staticArray[staticArrayMaxSize];
arrayType* dynamicArray = 0;

void insert(arrayType value, int index);
void remove(int index);
void insertSpecal();
void filter();
int maxCount();
void print();
void sort();

bool isDNot3(arrayType item);
bool isDNotParity(arrayType item);

void static_remove(int index);
void static_insert(arrayType value, int index);
void static_insertSpecal();
int static_maxCount();
void static_filter();
void static_print();
void static_sort();

void dynamic_remove(int index);
void dynamic_insert(arrayType value, int index);
void dynamic_insertSpecal();
int dynamic_maxCount();
void dynamic_filter();
void dynamic_print();
void dynamic_sort();

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	cout << "Использовать статичный массив? (y/n)" << endl;
	isUseStatic = getch() == 'y';
	system("cls");

	cout << "1. Добавить новый элемент в конец массива" << endl;
	cout << "2. Вывести масив на экран" << endl;
	cout << "3. Вставить число -1 перед каждым числом, в котором  только нечетные цифры" << endl;
	cout << "4. Удалить число, расположенные перед числами, в которых нет цифры 3" << endl;
	cout << "5. Определить, сколько раз максимальное число массива встречается в массиве" << endl;
	cout << "6. Сортировать: с младших индексов положительные, затем отрицательные затем нулевые" << endl;
	cout << "0. Выход" << endl << endl;

	while (true)
	{
		switch (getch())
		{
		case '1':
		{
			arrayType value;
			cout << "Введите значение нового элемента: ";
			cin >> value;

			insert(value, isUseStatic ? staticArraySize : dynamicArraySize);
			break;
		}
		case '2':
			print();
			break;
		case '3':
			insertSpecal();
			print();
			break;
		case '4':
			filter();
			print();
			break;
		case '5':
			cout << maxCount() << endl;
			break;
		case '6':
			sort();
			print();
			break;
		case '0':
			return 0;
		}
	}
}

void insert(arrayType value, int index)
{
	if (isUseStatic)
		static_insert(value, index);
	else
		dynamic_insert(value, index);
}

void remove(int index)
{
	if (isUseStatic)
		static_remove(index);
	else
		dynamic_remove(index);
}

void insertSpecal()
{
	if (isUseStatic)
		static_insertSpecal();
	else
		dynamic_insertSpecal();
}

void filter()
{
	if (isUseStatic)
		static_filter();
	else
		dynamic_filter();
}

int maxCount()
{
	if (isUseStatic)
		return static_maxCount();
	return dynamic_maxCount();
}

void print()
{
	if (isUseStatic)
		static_print();
	else
		dynamic_print();
}

void sort()
{
	if (isUseStatic)
		static_sort();
	else
		dynamic_sort();
}

bool isDNot3(arrayType item)
{
	while (item > 0)
	{
		if (item % 10 == 3)
			return true;
		item /= 10;
	}
	return false;
}

bool isDNotParity(arrayType item)
{
	while (item > 0)
	{
		if (item % 10 % 2 == 0)
			return false;
		item /= 10;
	}
	return true;
}

void static_remove(int index)
{
	staticArraySize--;
	for (int i = index; i < staticArraySize; i++)
		staticArray[i] = staticArray[i + 1];
}

void static_insert(arrayType value, int index)
{
	if (staticArrayMaxSize == staticArraySize)
		return;

	for (int i = staticArraySize; i > index; i--)
		staticArray[i] = staticArray[i - 1];

	staticArray[index] = value;
	staticArraySize++;
}

void static_print()
{
	for (int i = 0; i < staticArraySize; i++)
		cout << staticArray[i] << ' ';
	cout << endl;
}

void static_sort()
{
	for (int i = 0; i < staticArraySize; i++)
	{
		for (int j = i; j < staticArraySize - 1; j++)
		{
			if (staticArray[j] > 0 && staticArray[j + 1] < 0)
			{
				arrayType temp = staticArray[j];
				staticArray[j] = staticArray[j + 1];
				staticArray[j + 1] = temp;
			}
		}
	}
	for (int i = 0; i < staticArraySize; i++)
	{
		for (int j = i; j < staticArraySize - 1; j++)
		{
			if (!staticArray[j] && staticArray[j + 1])
			{
				arrayType temp = staticArray[j];
				staticArray[j] = staticArray[j + 1];
				staticArray[j + 1] = temp;
			}
		}
	}
}

void static_insertSpecal()
{
	for (int i = 0; i < staticArraySize; i++)
	{
		if (isDNotParity(staticArray[i]))
			static_insert(-1, i++);
	}
}

int static_maxCount()
{
	int count = 0;
	arrayType max = 0;

	for (int i = 0; i < staticArraySize; i++)
	{
		if (staticArray[i] > max)
		{
			max = staticArray[i];
			count = 0;
		}
		if (staticArray[i] == max)
			count++;
	}
	return count;
}

void static_filter()
{
	for (int i = 0; i < staticArraySize - 1; i++)
	{
		if (!isDNot3(staticArray[i + 1]))
			remove(i--);
	}
}

void dynamic_remove(int index)
{
	if (dynamicArraySize == 0)
		return;

	if (dynamicArraySize == 1)
	{
		dynamicArraySize--;
		delete[] dynamicArray;
		dynamicArray = 0;
		return;
	}

	arrayType* temp = new arrayType[dynamicArraySize - 1];

	for (int i = 0, j = 0; i < dynamicArraySize; i++)
	{
		if (i != index)
			temp[j++] = dynamicArray[i];
	}

	dynamicArray = temp;
	dynamicArraySize--;
}

void dynamic_insert(arrayType value, int index)
{
	arrayType* temp = new arrayType[dynamicArraySize + 1];

	for (int i = 0, j = 0; j < dynamicArraySize + 1; j++)
	{
		if (j == index)
			temp[j] = value;
		else
			temp[j] = dynamicArray[i++];
	}

	if (dynamicArraySize != 0)
		delete[] dynamicArray;

	dynamicArraySize++;
	dynamicArray = temp;
}

void dynamic_print()
{
	for (int i = 0; i < dynamicArraySize; i++)
		cout << dynamicArray[i] << ' ';
	cout << endl;
}

void dynamic_sort()
{
	for (int i = 0; i < dynamicArraySize; i++)
	{
		for (int j = i; j < dynamicArraySize - 1; j++)
		{
			if (dynamicArray[j] > 0 && dynamicArray[j + 1] < 0)
			{
				arrayType temp = dynamicArray[j];
				dynamicArray[j] = dynamicArray[j + 1];
				dynamicArray[j + 1] = temp;
			}
		}
	}
	for (int i = 0; i < dynamicArraySize; i++)
	{
		for (int j = i; j < dynamicArraySize - 1; j++)
		{
			if (!dynamicArray[j] && dynamicArray[j + 1])
			{
				arrayType temp = dynamicArray[j];
				dynamicArray[j] = dynamicArray[j + 1];
				dynamicArray[j + 1] = temp;
			}
		}
	}
}

void dynamic_insertSpecal()
{
	for (int i = 0; i < dynamicArraySize; i++)
	{
		if (isDNotParity(dynamicArray[i]))
			dynamic_insert(-1, i++);
	}
}

int dynamic_maxCount()
{
	int count = 0;
	arrayType max = 0;

	for (int i = 0; i < dynamicArraySize; i++)
	{
		if (dynamicArray[i] > max)
		{
			max = dynamicArray[i];
			count = 0;
		}
		if (dynamicArray[i] == max)
			count++;
	}
	return count;
}

void dynamic_filter()
{
	for (int i = 0; i < dynamicArraySize - 1; i++)
	{
		if (!isDNot3(dynamicArray[i + 1]))
			remove(i--);
	}
}