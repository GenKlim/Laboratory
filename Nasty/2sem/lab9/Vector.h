#pragma once
#include <iostream>

// Шаблон вектора
// Вектор - умный массив, который имеет в себе методы для работы с масивом (добавление, удаление, и т.д.)

// В этом мекторе хранится одномерный массив, его длинна обычно больше длины вектора 
// (это делается для увеличения производительности т.к. каждое добавление/удаление елемента в одномерный массив требует создания нового массива и удаленя старого)
// при добавление в этот вектор элемент добавляется в одномерный массив при этом только в случае когда длина вектора = длине массива происходит то что описано выше 
// при удаление елемента просто уменьшается длина вектора (ничего на самом деле не удаляется)

// T - это имя типа которое будет подставно в класс при необходимости
template<typename T>
class vector
{
	size_t useSize, realSize; // длины вектора и массива соответственно
	T* array; // массив
public:
	// Конструктор копирования, создаст независимую копию вектора
	vector(const vector<T> &base)
	{
		array = 0;
		useSize = 0;
		resizeArray(base.realSize);

		while (useSize < base.useSize)
			array[useSize] = base.array[useSize++];
	}

	// Конструктор (точнее их тут два один с пораметром другой без: realSize = 16)
	// задает начальные значения переменным и создает массив с указаной длиной 
	vector(size_t realSize = 16)
	{
		array = 0;
		useSize = 0;
		resizeArray(realSize);
	}

	// возвращает длину вектора
	size_t size() const
	{
		return useSize;
	}

	// добавляет элемент в конец вектора
	void push(T item)
	{
		if (useSize == realSize)
			resizeArray(realSize + realSize / 2);

		array[useSize++] = item;
	}

	// удаляет последний елемент вектора
	T pop()
	{
		if (!useSize)
			cout << "Error: vector size = 0." << endl;
		return array[useSize--];
	}

	// оператор доступа, позволяет писать так:
	// f[1] = 5; // второй элемент вектора f равен 5
	T& operator [](size_t index)
	{
		if (useSize <= index)
			cout << "Error: index out of range of vector." << endl;
		return array[index];
	}

	// оператор сложения
	// возврощяет новый вектор составленый из двух (их при этом не изменяет, что и значит слово const в конце)
	vector<T> operator +(vector<T> &b) const
	{
		vector<T> v = vector<T>(useSize + b.useSize);

		while (v.useSize < useSize)
			v.array[v.useSize] = array[v.useSize++];

		while (v.useSize < useSize + b.useSize)
			v.array[v.useSize++] = b[v.useSize - useSize];

		return v;
	}

	// деструктор, удаляет масив
	~vector()
	{
		delete[] array;
	}
private:
	// дулает копию массива, большей длины, старый удаляет
	void resizeArray(int newSize)
	{
		T* newMemory = new T[newSize];
		if (array)
		{
			for (size_t i = 0; i < useSize; i++)
				newMemory[i] = array[i];
			delete[] array;
		}

		realSize = newSize;
		array = newMemory;
	}
};

// операатор для записи вектора в поток ( пишет так [0,1,2,3,4] )
template<typename T>
std::ostream& operator<< (std::ostream &out, vector<T> &vector)
{
	size_t len = vector.size();

	out << '[';
	if (len != 0)
	{
		for (size_t i = 0; i < len - 1; i++)
			out << vector[i] << ", ";
		out << vector[len - 1];
	}
	out << ']';

	return out;
}