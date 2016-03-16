#include "Header.h"

int main(int argc, char** argv)
{
	setlocale(0, "rus");

	Node* list = 0;

	cout << "1. Показать список" << endl;
	cout << "2. Добавить элемент в начало списка" << endl;
	cout << "3. Добавить 5 случайных записей" << endl;
	cout << "4. Найти все записи по номеру" << endl;
	cout << "5. Упорядочить: сначала проданные, но не возвращенные, а затем возвращенные" << endl;
	cout << "6. Упорядочить: часть списка, содержащая возвращенный товар перенести в начало исходного списка" << endl;
	cout << "7. Удалить товар, который продан до указанной даты" << endl;
	cout << "0. Выход" << endl << endl;
	
	while (true)
	{
		cout << "Нажмите нужную клавишу";
		char c = getch();
		cout << "\r\t\t\t\t\t\t\r";

		switch (c)
		{
		case '1':
			printList(list);
			break;
		case '2':
			insert(list, readNode());
			printList(list);
			break;
		case '3':
			addRandom(list);
			printList(list);
			break;
		case '4':
		{
			int id;
			cout << "Введите номер: ";
			cin >> id;
			Node* findResult = find(list, id);
			printList(findResult);
		}
		break;
		case '5':
			sort(list);
			printList(list);
			break;
		case '6':
			sort2(list);
			printList(list);
			break;
		case '7':
		{
			int id;
			cout << "Введите дату: ";
			cin >> id;
			removeForDate(list, id);
			printList(list);
		}
		break;
		case '0':
			return 0;
		}
	}

	return 0;
}

Node* readNode()
{
	Node* node = new Node();
	cout << "Введите номер, дату, цену, дату возврата:" << endl;

	cin >> node->id >> node->date >> node->cost >> node->retDate;
	node->ret = node->retDate != 0;

	return node;
}

void insert(Node*& index, Node* newNode)
{
	newNode->next = index;
	index = newNode;
}

Node* find(Node* index, int id)
{
	Node* result = 0;
	while (index)
	{
		if (index->id == id)
			insert(result, clone(index));
		index = index->next;
	}
	return result;
}

void printList(Node* index)
{
	if (index)
	{
		cout << "Номер\tДата\tЦена\tВозврат" << endl;
		while (index)
		{
			printOne(index);
			index = index->next;
		}
	}
	else
		cout << "Список пуст" << endl;
}

void printOne(Node * Node)
{
	cout << Node->id << '\t' << Node->date << '\t' << Node->cost << '\t';
	if (Node->ret)
		cout << Node->retDate << endl;
	else
		cout << "-/-" << endl;
}

void addRandom(Node*& index)
{
	for (int i = 0; i < 5; i++)
	{
		insert(index, new Node());
		index->id = 10 + rand() % 10;
		index->cost = 100 + rand() % 6 * 10;
		index->date = 2002 + rand() % 11;
		index->ret = rand() % 4 == 0;
		if(index->ret)
			index->retDate = index->date + rand() % 5;
	}
}

void removeForDate(Node*& index, int date)
{
	while (index && index->date < date)
		index = index->next;

	if (!index)
		return;

	for (Node* i = index->next; i && i->next;)
	{
		if (i->next->date < date)
			i->next = i->next->next;
		else
			i = i->next;
	}
}

void sort(Node*& index)
{
	Node* newList = 0;
	for (Node*i = index; i; i = i->next)
	{
		if (i->ret)
			insert(newList, clone(i));
	}
	for (Node*i = index; i; i = i->next)
	{
		if (!i->ret)
			insert(newList, clone(i));
	}
	index = newList;
}

void sort2(Node*& index)
{
	Node* newList = 0;
	for (Node*i = index; i; i = i->next)
	{
		if (!i->ret)
			insert(newList, clone(i));
	}
	for (Node*i = index; i; i = i->next)
	{
		if (i->ret)
			insert(newList, clone(i));
	}
	index = newList;
}

void copy(Node* in, Node* to)
{
	to->id = in->id;
	to->date = in->date;
	to->cost = in->cost;
	to->ret = in->ret;
	to->retDate = in->retDate;
}

Node* clone(Node* n)
{
	Node* c = new Node();
	copy(n, c);
	return c;
}