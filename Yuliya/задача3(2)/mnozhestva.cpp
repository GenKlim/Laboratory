#include "stdafx.h"
#include "mnozhestva.h"


mnozhestva::mnozhestva(unsigned int count, unsigned int* mass)
{
	this->count = count;
	this->mass = mass;
}

mnozhestva::mnozhestva(const mnozhestva & a)
{
	this->count = a.count;
	this->mass = a.mass;
}

void mnozhestva::Enter()
{
	std::cout << "Введите размер " << std::endl;
	std::cin >> count;
	mass = new unsigned int[count];
	for (unsigned int i = 0; i < count; i++)
	{
		std::cout << "Введите элемент " << i + 1 << ")   ";
		std::cin >> mass[i];
	}
}

void mnozhestva::Show()
{
	for (unsigned int i = 0; i < count; i++)
		std::cout << mass[i] << " ";
	std::cout << std::endl;
}

void mnozhestva::community(mnozhestva a, mnozhestva b)
{
	count = a.count + b.count;
	mass = new unsigned int[count];
	unsigned int i, j, c = 0;
	unsigned int n = a.count;


	for (i = 0; i < a.count; i++)
		mass[i] = a.mass[i];

	for (i = 0; i < b.count; i++)
	{
		for (j = 0; j < a.count; j++)
			if (b.mass[i] == a.mass[j])
				continue;
			else
				c++;
		if (c == a.count)
			mass[n++] = b.mass[i];
		c = 0;
	}
	count = n;
}

void mnozhestva::intersection(mnozhestva a, mnozhestva b)
{
	count = a.count + b.count;
	mass = new unsigned int[count];
	unsigned int i, j, n = 0;

	for (i = 0; i < a.count; i++)
		for (j = 0; j < b.count; j++)
		{
			if (a.mass[i] == b.mass[j])
			{
				mass[n++] = a.mass[i];
				continue;
			}
		}
	count = n;
}

void mnozhestva::difference(mnozhestva a, mnozhestva b)
{
	count = 0;
	unsigned int i;
	for (i = 0; i < a.count; i++)
	{
		if (!b.check(a.mass[i]))
			ADD(a.mass[i]);
	}
}

//Что бы ADD можно было использовать в других функциях убрал из нее ввод "element"
void mnozhestva::ADD(int element)
{
	int a[100];
	unsigned int i;

	//Во множестве не может быть двух одинаковых элементов
	for (i = 0; i < count; i++)
	{
		if (mass[i] == element)
			return;
	}

	for (i = 0; i < count; i++)
		a[i] = mass[i];
	delete[] mass;
	count= count + 1;

	a[i] = element;

	mass = new unsigned int[count];
	for (i = 0; i < count; i++)
		mass[i] = a[i];
}

//Что бы check можно было использовать в других функциях убрал из нее ввод "element"
bool mnozhestva::check(int element)
{
	unsigned int i;

	for (i = 0; i < count; i++)
	{
		if (mass[i] == element)
			return true;//Тут немного поправил логику: если элемент найден то нет смысла искать дальше
	}
	return false;
}

void mnozhestva::deletion()
{
	unsigned int number, n, i, j;
	n = count;
	std::cout << "Введите номер элемента от 0 до " << count - 1 << std::endl;
	std::cin >> number;

	if (number < 0 || number > count)
		std::cout << "Ошибка " << std::endl;
	else
	{
		for (i = 0; i < n; i++)
		{
			if (i == number)
			{
				for (j = i; j < n - 1; j++)
					mass[j] = mass[j + 1];
				n--;
			}

		}
		count--;
	}
}

std::ostream &operator<<(std::ostream &output, mnozhestva &number)
{
	for (int i = 0; i < number.count; i++)
	{
		output << number.mass << " ";
	}

	return output;
}

mnozhestva::~mnozhestva()
{
}
