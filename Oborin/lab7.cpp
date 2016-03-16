#include <stdio.h>
#include <string.h>
#include <iostream>

using namespace std;

struct Tnode
{
	Tnode* back;
	Tnode* next;

	int zacetka;
	int group;
	int otzenka;
};

void print(Tnode* node);  
void printInvert(Tnode* last);
Tnode* getFirst(Tnode* node);
Tnode* getLast(Tnode* node);
Tnode* find(Tnode* node);
Tnode* insert(Tnode* node, int zacetka, int group, int otzenka);
Tnode* remove(Tnode* node);
Tnode* addNew(Tnode* node);

Tnode* removeSpecal(Tnode* node);
Tnode* addNewSpecal(Tnode* node);
Tnode* getNewList(Tnode* &node);

int main(int argc, char* argv[])
{
	setlocale(LC_CTYPE, "RUS");

	Tnode* node = 0;

	while (true)
	{
		char c;
		system("cls");
		cout << "1. Добавить новый элемент в начало списка" << endl;
		cout << "2. Вывести список" << endl;
		cout << "3. Вывести список с конца" << endl;
		cout << "4. Вставить новый узел перед первым узлом с таким же ключом, если такого узла еще нет, то вставить перед первым узлом, у которого ключ больше" << endl;
		cout << "5. Удалить узлы с указанным номером зачетной книжки." << endl;
		cout << "6. Сформировать новый список из исходного,  включив в него узлы с оценкой неуд, исключив их при этом из исходного списка" << endl;
		cout << "7. Определить средний балл студента с указанной зачетной книжкой" << endl;
		cout << "8. Найти все записи по номкру зачетки" << endl;
		cout << "0. Выйти" << endl;

		cin >> c;
		switch (c)
		{
		case '1':
			node = addNew(node);
			break;
		case '2':
			print(node);
			break;
		case '3':
			printInvert(getLast(node));
			break;
		case '4':
			node = addNewSpecal(node);
			break;
		case '5':
			node = removeSpecal(node);
			break;
		case '6':
		{
			Tnode* temp = getNewList(node);
			cout << "Новый список:" << endl;
			print(getFirst(temp));
			break;
		}
		case '7':  //4
		{
			Tnode* temp = node;
			float result = 0;
			int count = 0;
			int zacetka;
			cout << "Введите номер зачетки:" << endl;
			cin >> zacetka;

			do
			{
				if (temp->zacetka == zacetka)
				{
					result += temp->otzenka;
					count++;
				}
				temp = temp->next;
			} while (temp);

			result /= count;
			cout << "Средний балл: " << result << endl;
			break;
		}
		case '8':
		{
			Tnode* temp = find(node);
			print(getFirst(temp));
			break;
		}
		case '0':
			return 0;
		}
		node = getFirst(node);
		system("pause");
	}

	return 0;
}

Tnode* removeSpecal(Tnode* node) //2 
{
	if (!node)
		return 0;

	int zacetka;
	cout << "Введите номер зачетки:" << endl;
	cin >> zacetka;

	while (true)
	{
		if (node->zacetka == zacetka)
			node = remove(node);
		if (node->next)
			node = node->next;
		else
			return node;
	}
}

Tnode* getNewList(Tnode* &node) //3
{
	if (!node)
	{
		node = 0;
		return 0;
	}

	Tnode* node2 = 0;
	while (true)
	{
		if (node->otzenka < 3)
		{
			node2 = insert(node2, node->zacetka, node->group, node->otzenka);
			node = remove(node);
		}
		if (node->next)
			node = node->next;
		else
			return node2;
	}
}

Tnode* addNew(Tnode* node)
{
	int zacetka, group, otzenka;
	cout << "Введите номер зачетки, номер групы, отценку:" << endl;
	cin >> zacetka >> group >> otzenka;
	return insert(node, zacetka, group, otzenka);
}

Tnode* addNewSpecal(Tnode* node) //1
{
	int zacetka, group, otzenka;
	cout << "Введите номер зачетки, номер групы, отценку:" << endl;
	cin >> zacetka >> group >> otzenka;

	if (!node)
		return insert(node, zacetka, group, otzenka);

	Tnode* temp = node;
	do
	{
		if (temp->zacetka == zacetka)
			return insert(temp, zacetka, group, otzenka);

		temp = temp->next;
	} while (temp);

	temp = node;
	do
	{
		if (temp->zacetka > zacetka)
			return insert(temp, zacetka, group, otzenka);

		temp = temp->next;
	} while (temp);

	return node;
}

void print(Tnode* node) //	1.вывод списка от первого элемента к последнему
{
	if (!node)
		return;
	do
	{
		cout << node->zacetka << ' ' << node->group << ' ' << node->otzenka << endl;
		node = node->next;
	} while (node);
}

void printInvert(Tnode* last) //2.вывод списка от последнего элемента к первому
{
	if (!last)
		return;
	do
	{
		cout << last->zacetka << ' ' << last->group << ' ' << last->otzenka << endl;
		last = last->back;
	} while (last);
}

Tnode* getLast(Tnode* node)
{
	if (!node)
		return 0;

	while (node->next)
		node = node->next;

	return node;
}

Tnode* getFirst(Tnode* node)
{
	if (!node)
		return 0;

	while (node->back)
		node = node->back;

	return node;
}

Tnode* remove(Tnode* node)
{
	if (!node)
		return 0;

	if (node->next)
		node->next->back = node->back;
	if (node->back)
		node->back->next = node->next;

	Tnode* result = node->back ? node->back : node->next;
	delete node;
	return result;
}

Tnode* insert(Tnode* node, int zacetka, int group, int otzenka)  //3.создание списка из n элементов
{
	Tnode* temp = new Tnode();
	temp->zacetka = zacetka;
	temp->group = group;
	temp->otzenka = otzenka;
	temp->next = node;
	temp->back = 0;

	if (node)
	{
		if (node->back)
			node->back->next = temp;

		temp->back = node->back;
		node->back = temp;
	}

	return temp;
}

Tnode* find(Tnode* node)
{
	if (!node)
		return 0;

	Tnode* result = 0;
	int zacetka;
	cout << "Введите номер зачетки:" << endl;
	cin >> zacetka;

	while (node)
	{
		if (node->zacetka == zacetka)
			result = insert(result, node->zacetka, node->group, node->otzenka);

		node = node->next;
	}
	return result;
}