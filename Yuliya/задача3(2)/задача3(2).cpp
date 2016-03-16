// задача3(2).cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <conio.h>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	setlocale(0, "rus");
	mnozhestva a, b, c;
	int i;

	a.Enter();
	b.Enter();

	system("cls"); //Отчистить консоль

	cout << "0. Показать множесва" << endl;
	cout << "1. Объединение А и В" << endl;
	cout << "2. Пересичение А и В" << endl;
	cout << "3. Добавить элемент в A" << endl;
	cout << "4. Добавить элемент в В" << endl;
	cout << "5. Удалить элемент из A" << endl;
	cout << "6. Удалить элемент из В" << endl;
	cout << "7. Проверить наличие элента в А" << endl;
	cout << "8. Проверить наличие элента в В" << endl;
	cout << "9. Разность множеств" << endl;
	cout << endl;

	while (true)
	{
		switch (_getch())
		{
		case '0':
			cout << "A: ";
			a.Show();
			cout << "B: ";
			b.Show();
			break;
		case '1':
			c.community(a, b);
			cout << "A+B: ";
			c.Show();
			break;
		case '2':
			c.intersection(a, b);
			cout << "AB: ";
			c.Show();
			break;
		case '3':
			std::cout << "Введите новый элемент " << std::endl;
			std::cin >> i;
			a.ADD(i);
			cout << "A: ";
			a.Show();
			break;
		case '4':
			std::cout << "Введите новый элемент " << std::endl;
			std::cin >> i;
			b.ADD(i);
			cout << "B: ";
			b.Show();
			break;
		case '5':
			a.deletion();
			cout << "A: ";
			a.Show();
			break;
		case '6':
			b.deletion();
			cout << "B: ";
			b.Show();
			break;
		case '7':
			std::cout << "Введите элемент для проверки " << std::endl;
			std::cin >> i;
			if (a.check(i))
				std::cout << "Да такой элемент найден " << std::endl;
			else
				std::cout << "Элемент не найден " << std::endl;
			break;
		case '8':
			std::cout << "Введите элемент для проверки " << std::endl;
			std::cin >> i;
			if (b.check(i))
				std::cout << "Да такой элемент найден " << std::endl;
			else
				std::cout << "Элемент не найден " << std::endl;
			break;
		case '9':
			c.difference(a, b);
			cout << "A-B: ";
			c.Show();
			c.difference(b, a);
			cout << "B-A: ";
			c.Show();
			break;
		}
	}
}