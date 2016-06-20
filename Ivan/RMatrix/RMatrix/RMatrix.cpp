#include "RMatrix.h"

//Описания методов в заголовочном файле (RMatrix.h)

RMatrix::RMatrix(size_t w, size_t h)
{
	this->h = h;
	this->w = w;
	rows = new List*[h];//Изначально список пустой (все элементы м-цы нулевые)
	for (size_t i = 0; i < h; i++)
		rows[i] = 0;
}

RMatrix::RMatrix(const RMatrix& base)
{
	w = base.w;//копируем размеры
	h = base.h;
	rows = new List*[h];//Создаем новый массив
	for (size_t i = 0; i < h; i++)//Копируем все не нулевые строки
		rows[i] = base.rows[i] ? new List(*base.rows[i]) : 0;
}

void RMatrix::print() const
{
	//просто печатает на консоль
	for (size_t i = 0; i < h; i++)
	{
		for (size_t j = 0; j < w; j++)
			cout << get(i, j) << ' ';
		cout << endl;
	}
}

int RMatrix::get(size_t i, size_t j) const
{
	if (i >= h || j >= w)
		throw "Index out of range";//исключение, если индексы вылезают за пределы

	List* root = rows[i];//голова (первый элемент) строки
	if (root)//если строка не нулевая
	{
		while (root && root->position < j)//пока не дошли до конца и индекс элемента меньше j
			root = root->next;//Двигаемся вперед по списку
		if (root && root->position == j)//если не дошли до конца и индекс равен j
			return root->value;
	}
	return 0;
}

void RMatrix::set(size_t i, size_t j, int value)
{
	if (i >= h || j >= w)
		throw "Index out of range";//исключение, если индексы вылезают за пределы

	List* root = rows[i];//голова (первый элемент) строки
	if (root)//если строка не нулевая
	{
		List* old = 0;//Указатель на узел, предшествующий root
		while (root && root->position < j)//пока не дошли до конца и индекс элемента меньше j
		{
			old = root;//Запоминаем
			root = root->next;//Двигаемся вперед по списку
		}

		if (root && root->position == j)//если не дошли до конца и индекс равен j
		{
			if (value)//Если устанавливаемое значение не ноль
				root->value = value;//установим его
			else//Иначе удалим узел
			{
				if (old)//И сообщим об этом предшествующий узлу, если он есть
					old->next = root->next;
				else//иначе это голова списка, обновим ее в массиве rows
					rows[i] = root->next;
				delete root;
			}
		}
		else//если дошли до конца
		{
			List* nList = new List(value, j);//Создаем новый узел
			nList->next = root;//вставляем его перед root
			if (old)//И сообщим об этом предшествующий узлу, если он есть
				old->next = nList;
			else//иначе это голова списка, обновим ее в массиве rows
				rows[i] = nList;
		}
	}
	else if (value)//Если устанавливали не ноль то создаем новый список из 1-го элемента
		rows[i] = new List(value, j);
	//Иначе там уже стоит ноль
}

RMatrix RMatrix::operator+(const RMatrix& b) const
{
	if (h != b.h || w != b.w)
		throw "Sizes not equal";//исключение, размеры м-иц не равны

	RMatrix mtx(w, h);//новая м-ца
	for (size_t i = 0; i < h; i++)
	{
		for (size_t j = 0; j < w; j++)
			mtx.set(i, j, get(i, j) + b.get(i, j));//просто складываем 
	}

	return mtx;
}

RMatrix RMatrix::operator-(const RMatrix& b) const
{
	if (h != b.h || w != b.w)//тут все также, как и при сложении
		throw "Sizes not equal";

	RMatrix mtx(w, h);
	for (size_t i = 0; i < h; i++)
	{
		for (size_t j = 0; j < w; j++)
			mtx.set(i, j, get(i, j) - b.get(i, j));
	}

	return mtx;
}

RMatrix RMatrix::operator*(const RMatrix& b) const
{
	if (w != b.h)//исключение, эти м-цы нельзя умножать
		throw "Invalid sizes";

	RMatrix mtx(h, b.w);//новая м-ца
	for (size_t i = 0; i < h; i++)
	{
		for (size_t j = 0; j < b.w; j++)
		{
			int sm = 0;//Перемножаем строку на столбец
			for (size_t k = 0; k < w; k++)
				sm += get(i, k) * b.get(k, j);
			mtx.set(i, j, sm);
		}
	}

	return mtx;
}

void RMatrix::clear()
{
	//Удаляет не нулевые строки
	for (size_t i = 0; i < h; i++)
	{
		if (rows[i])
		{
			delete rows[i];
			rows[i] = 0;
		}
	}
}

size_t RMatrix::getMemorySize() const
{
	//Считает по формуле:
	// sizeof(this) + h*sizeof(List*) + n*sizeof(List)
	// где n - кол-во не нулевых элементов

	size_t size = sizeof(this) + h*sizeof(List*);
	for (size_t i = 0; i < h; i++)
	{
		if (rows[i])
		{
			List* root = rows[i];
			while (root)
			{
				root = root->next;
				size += sizeof(List);
			}
		}
	}
	return size;
}

size_t RMatrix::getHeight()
{
	return h;
}

size_t RMatrix::getWidth()
{
	return w;
}

RMatrix::~RMatrix()
{
	clear();//чистим массив и удаляем его
	delete[] rows;
}

RMatrix::List::List(const List& base)
{
	value = base.value;//копируем данные
	position = base.position;
	next = base.next ? new List(*base.next) : 0;//копируем следующий элемент, если он есть
}

RMatrix::List::List(int val, size_t pos)
{
	next = 0;
	value = val;
	position = pos;
}

RMatrix::List::~List()
{
	if (next)
		delete next;
}
