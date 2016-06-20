#include <stdlib.h>
#include <string>
#include <conio.h>
#include <iostream>
#include "RMatrix.h"

using namespace std;

//ф-ия для чтения нужного типа с консоли, с выводом сообщения
template<typename type>
type read(string message)
{
	type result;
	cout << message << ": ";
	cin >> result;
	return result;
}

int main()
{
	setlocale(0, "");

	RMatrix* mtx = new RMatrix(5, 5);//м-ца
	while (true)//цикл меню
	{
		cout << "1.Вывести матрицу на экран\n"\
			"2.Создать пустую матрицу\n"\
			"3.Заполнить матрицу с клавиатуры\n"\
			"4.Заполнить матрицу случайными числами\n"\
			"5.Установить значение\n"\
			"6.Сложение матриц\n"\
			"7.Вычитаие матриц\n"\
			"8.Умножение матриц\n"\
			"9.Вывести обьем занимаемой памяти\n"\
			"0.Выход\n";

		cout << "Введите команду: ";
		char c = _getch();
		cout << "\r\t\t\t\t" << endl;//это сотрет текст "Введите команду: "

		switch (c)//меню
		{
		case '1':
			mtx->print();
			break;
		case '2':
			delete mtx;//удаляем старую, создаем новую м-цу
			mtx = new RMatrix(
				read<int>("Введите количество столбцов"),
				read<int>("Введите количество строк"));
			break;
		case '3':
			delete mtx;//удаляем старую, создаем новую м-цу
			mtx = new RMatrix(
				read<int>("Введите количество столбцов"),
				read<int>("Введите количество строк"));

			for (size_t i = 0; i < mtx->getHeight(); i++)//построчно заполняем м-цу 
			{
				cout << "Введите " << i + 1 << " строку." << endl;
				for (size_t j = 0; j < mtx->getWidth(); j++)
					mtx->set(i, j, read<int>(""));
			}
			break;
		case '4':
			{
				mtx->clear();//заполняем нулями
				size_t count = read<size_t>("Введите количество элементов");

				for (size_t i = 0; i < count; i++)//ставим count случайных значений (от 1 до 100) в случайных ячейках
					mtx->set(rand() % mtx->getHeight(), rand() % mtx->getWidth(), 1 + rand() % 99);
			}
			break;
		case '5'://Устанавливаем значение по координатам
			mtx->set(
				read<size_t>("Введите индекс строки"),
				read<size_t>("Введите индекс столбца"),
				read<int>("Введите значение ячейки"));
			break;
		case '6':
			cout << "A:" << endl << endl;
			mtx->print();
			cout << "A+A:" << endl;
			(*mtx + *mtx).print();//Сложение
			break;
		case '7':
			cout << "A:" << endl << endl;
			mtx->print();
			cout << "A-A:" << endl;
			(*mtx - *mtx).print();
			break;
		case '8':
			cout << "A:" << endl << endl;
			mtx->print();
			cout << "A*A:" << endl;
			(*mtx * *mtx).print();//Умножение
			break;
		case '9':
			cout << mtx->getMemorySize() << " байт" << endl;//Занимаемый размер
			break;
		case '0':
			return EXIT_SUCCESS;//Выход
		}

		cout << endl;
	}
}