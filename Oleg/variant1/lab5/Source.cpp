#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "conio.h"

using namespace std;

struct StackItem
{
	int number, group, assessment;
	StackItem* next;

	StackItem(bool read = true);
};

StackItem::StackItem(bool read)
{
	if (!read)
		return;

	cout << "Введите номер зачетки, номер группы, отценку:" << endl;
	cin >> number >> group >> assessment;
}

StackItem* insert(StackItem* index, bool read = true);
StackItem* addRandom(StackItem* index);
StackItem* addSpecal(StackItem* index);
StackItem* removeByGroup(StackItem* index);
StackItem* remove2(StackItem* index);
void print(StackItem* index); 

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	StackItem* list = 0;

	cout << "1. Показать список" << endl;
	cout << "2. Добавить элемент в начало списка" << endl;
	cout << "3. Добавить 10 случайных записей" << endl;
	cout << "4. Добавить элемент перед элементом с таким же ключом" << endl;
	cout << "5. Удалить узлы по номеру группы" << endl;
	cout << "6. Удалить записи с неуд. отценкой" << endl;
	cout << "0. Выход" << endl << endl;

	while (true)
	{
		switch (getch())
		{
		case '1':
			print(list);
			break;
		case '2':
			list = insert(list);
			print(list);
			break;
		case '3':
			list = addRandom(list);
			print(list);
			break;
		case '4':
			list = addSpecal(list);
			print(list);
			break;
		case '5':
			list = removeByGroup(list);
			print(list);
			break;
		case '6':
			list = remove2(list);
			print(list);
			break;
		case '0':
			return 0;
		}
	}
	return 0;
}

StackItem* insert(StackItem* index, bool read)
{
	StackItem* n = new StackItem(read);
	n->next = index;
	return n;
}

void print(StackItem* index)
{
	if (!index)
	{
		cout << "Список пуст" << endl;
		return;
	}
	cout << "Зачетка\tГруппа\tОтценка" << endl;
	while (index)
	{
		cout << index->number << '\t' << index->group << '\t' << index->assessment << endl;
		index = index->next;
	}
}

StackItem* addRandom(StackItem* index)
{
	for (int i = 0; i < 10; i++)
	{
		index = insert(index, false);
		index->assessment = 5 - rand() % 4;
		index->group = 1 + rand() % 3;
		index->number = 500 + rand() % 500;
	}
	return index;
}

StackItem* addSpecal(StackItem * index)
{
	StackItem* node = new StackItem();

	if (!index)
		return node;

	if (index->number == node->number)
	{
		node->next = index;
		return node;
	}

	StackItem * temp = index;
	StackItem * iMax = 0;
	while (temp)
	{
		if (index->number == temp->number)
		{
			node->next = temp->next;
			temp->next = node;
			return index;
		}
		if (!iMax && index->number < temp->number)
			iMax = temp;

		temp = temp->next;
	}
	node->next = iMax->next;
	iMax->next = node;

	return index;
}

StackItem* removeByGroup(StackItem* index)
{
	int target;
	cout << "Введите номер группы:" << endl;
	cin >> target;

	StackItem* temp;
	while (index && index->group == target)
	{
		temp = index->next;
		delete index;
		index = temp;
	}

	StackItem* old = index;
	temp = index->next;

	while (temp)
	{
		if (temp->group == target)
		{
			old->next = temp->next;
			delete temp;
			temp = old;
		}
		else
		{
			old = temp;
			temp = temp->next;
		}
	}

	return index;
}

StackItem* remove2(StackItem* index)
{
	StackItem* temp;
	while (index && index->assessment < 3)
	{
		temp = index->next;
		delete index;
		index = temp;
	}

	StackItem* old = index;
	temp = index->next;

	while (temp)
	{
		if (temp->assessment < 3)
		{
			old->next = temp->next;
			delete temp;
			temp = old;
		}
		else
		{
			old = temp;
			temp = temp->next;
		}
	}

	return index;
}