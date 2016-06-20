#pragma once
#include <stdlib.h>
#include <string>
#include <iostream>

using namespace std;

/*
	Класс матрицы. Тип значения - int

	Не нулевые данные хранятся в односвязных списках
		Например дана матрица:
			0 0 1 2 0 1
			5 0 0 0 0 0
			0 0 0 0 0 0
			0 6 0 0 0 8

		для нее в rows будет таким:
			rows[0] = (1, 2), (2, 3), (1, 5)
			rows[1] = (5, 0)
			rows[2] = 0
			rows[3] = (6,1), (6,5)

	Для разряженной м-цы такой подход дает большую экономию памяти
*/

class RMatrix
{
	struct List//Односвязный список, нужен для хранения не нулевых ячеек
	{
		List* next;//Следующий элемент списка
		int value;//Значение ячейки
		size_t position;//Позиция ячейки

		List(const List&);//Конструктор копирования
		List(int, size_t);//Обычный конструктор
		~List();//Деструктор
	};

	size_t w, h;//Размеры м-цы
	List** rows;//Массив с односвязными списками
public:
	RMatrix(const RMatrix&);//Конструктор копирования
	RMatrix(size_t w, size_t h);//Обычный конструктор
	~RMatrix();//Деструктор

	void print() const;//печатает на консоль
	int get(size_t i, size_t j) const;//получает элемент по индексам
	void set(size_t i, size_t j, int value);//устанавливает значение по индексам
	void clear();//заполняет матрицу нулями
	RMatrix operator+(const RMatrix& B) const;//возвращает новую м-цу, сумму данной м-цы и м-цы B
	RMatrix operator-(const RMatrix& B) const;//возвращает новую м-цу, разность данной м-цы и м-цы B
	RMatrix operator*(const RMatrix& B) const;//возвращает новую м-цу, результат умножения данной м-цы и м-цы B
	size_t getHeight();//вернет количество строк
	size_t getWidth();//вернет количество столбцов
	size_t getMemorySize() const;//Вернет теоретическое количество затраченной памяти
};