#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string.h"
#include "conio.h"

#define staticArrayMaxSize 256
typedef char arrayType;
using namespace std;

bool isUseStatic;
int staticArraySize = 0;
int dynamicArraySize = 0;
arrayType staticArray[staticArrayMaxSize];
arrayType* dynamicArray = 0;

void insert(arrayType value, int index);
void remove(int index);
void insertSum7(arrayType value);
void filter();
int simpleCount();
void print();
void sort();

bool isDSum7(arrayType item);
bool isIncreases(arrayType item);
bool isDSimple(arrayType item);

void static_remove(int index);
void static_insert(arrayType value, int index);
void static_insertSum7(arrayType value);
int static_SimpleCount();
void static_filter();
void static_print();
void static_sort();

void dynamic_remove(int index);
void dynamic_insert(arrayType value, int index);
void dynamic_insertSum7(arrayType value);
int dynamic_SimpleCount();
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
	cout << "3. Вставить новый элемент вперед элементом, сумма цифр которого кратна 7" << endl;
	cout << "4. Найти количество элементов массива, являющихся простыми числами" << endl;
	cout << "5. Удалить элементы, расположене после числа, цифры упорядочены по возрастанию" << endl;
	cout << "5. Сортировка прямым обменом" << endl;
	cout << "0. Выход" << endl << endl;

	while (true)
	{
		switch (getch())
		{
		case '1':
		{
			int value;
			cout << "Введите значение нового элемента: ";
			cin >> value;
			
			insert((arrayType)value, isUseStatic ? staticArraySize : dynamicArraySize);
			break;
		}
		case '2':
			print();
			break;
		case '3':
		{
			int value;
			cout << "Введите значение нового элемента: ";
			cin >> value;
			
			insertSum7((arrayType)value);
			break;
		}
		case '4':
			cout << simpleCount() << endl;
			break;
		case '5':
			filter();
			print();
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

void insertSum7(arrayType value)
{
	if (isUseStatic)
		static_insertSum7(value);
	else
		dynamic_insertSum7(value);
}

void filter()
{
	if (isUseStatic)
		static_filter();
	else
		dynamic_filter();
}

int simpleCount()
{
	if (isUseStatic)
		return static_SimpleCount();
	return dynamic_SimpleCount();
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

bool isDSum7(arrayType item)
{
	int sum = 0;
	while (item > 0)
	{
		sum += item % 10;
		item /= 10;
	}

	return sum == 7;
}

bool isIncreases(arrayType item)
{
	if (abs(item) < 10)
		return false;

	int old = 9;
	while (item > 0)
	{
		if (item % 10 > old)
			return false;
		old = item % 10;
		item /= 10;
	}

	return true;
}

bool isDSimple(arrayType item)
{
	int d = 2, r;

	do {
		r = item % d;
		if (r != 0) d++;
	} while (r != 0);

	return d == item;
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
		cout << (int)staticArray[i] << ' ';
	cout << endl;
}

void static_sort()
{
	for (int i = 0; i < staticArraySize - 1; i++)
	{
		for (int j = 0; j < staticArraySize - i - 1; j++)
		{
			if (staticArray[j] > staticArray[j + 1])
			{
				arrayType temp = staticArray[j];
				staticArray[j] = staticArray[j + 1];
				staticArray[j + 1] = temp;
			}
		}
	}
}

void static_insertSum7(arrayType value)
{
	for (int i = 0; i < staticArraySize; i++)
	{
		if (isDSum7(staticArray[i]))
		{
			static_insert(value, i);
			return;
		}
	}
}

int static_SimpleCount()
{
	int count = 0;
	for (int i = 0; i < staticArraySize; i++)
	{
		if (isDSimple(staticArray[i]))
			count++;
	}
	return count;
}

void static_filter()
{
	for (int i = 0; i < staticArraySize-1; i++)
	{
		if (isIncreases(staticArray[i + 1]))
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
		cout << (int)dynamicArray[i] << ' ';
	cout << endl;
}

void dynamic_sort()
{
	for (int i = 0; i < dynamicArraySize - 1; i++)
	{
		for (int j = 0; j < dynamicArraySize - i - 1; j++)
		{
			if (dynamicArray[j] > dynamicArray[j + 1])
			{
				arrayType temp = dynamicArray[j];
				dynamicArray[j] = dynamicArray[j + 1];
				dynamicArray[j + 1] = temp;
			}
		}
	}
}

void dynamic_insertSum7(arrayType value)
{
	for (int i = 0; i < dynamicArraySize; i++)
	{
		if (isDSum7(dynamicArray[i]))
		{
			dynamic_insert(value, i);
			return;
		}
	}
}

int dynamic_SimpleCount()
{
	int count = 0;
	for (int i = 0; i < dynamicArraySize; i++)
	{
		if (isDSimple(dynamicArray[i]))
			count++;
	}
	return count;
}

void dynamic_filter()
{
	for (int i = 0; i < dynamicArraySize - 1; i++)
	{
		if (isIncreases(dynamicArray[i + 1]))
			remove(i--);
	}
}