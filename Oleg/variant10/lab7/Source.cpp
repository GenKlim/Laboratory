#include "Header.h"


void printMenu()
{
	cout << "1. Добавить новый элемент в начало списка" << endl;
	cout << "2. Вывести список" << endl;
	cout << "3. Вывести список с конца" << endl;
	cout << "4. Добавить 5 слуайных записей" << endl;
	cout << "5. Найти все записи по номеру" << endl;
	cout << "6. Упорядочить список по правилу: сначала проданные, но не возвращенные, а затем возвращенные" << endl;
	cout << "7. Удалить товар, который продан до указанной даты" << endl;
	cout << "8. Переформировать список следующим образом: часть списка, содержащая возвращенный товар перенести в начало исходного списка" << endl;
	cout << "9. Определить количество проданного в указанную дату товара" << endl << endl;
}

int main(int argc, char* argv[])
{
	setlocale(LC_CTYPE, "RUS");

	int temp = 0;
	Node* node = 0;
	printMenu();

	while (true)
	{
		cout << "Нажмите нужную клавишу (0 - для вывода меню)";
		char c = getch();
		cout << "\r\t\t\t\t\t\t\t\t\r";

		switch (c)
		{
		case '1':
			node = insert(findFront(node), readNode());
			break;
		case '2':
			printAll(node);
			break;
		case '3':
			printAllReverse(node);
			break;
		case '4':
			node = addRandom(node);
			printAll(node);
			break;
		case '5':
			int temp;
			cout << "Введите номер: ";
			cin >> temp;
			printAll(findFront(find(node, temp)));
			break;
		case '6':
			node = sort(node);
			printAll(node);
			break;
		case '7':
			node = removeByData(node);
			printAll(node);
			break;
		case '8':
			node = sort2(node);
			printAll(node);
			break;
		case '9':
			cout << getCountByDate(node) << endl;
			break;
		case '0':
			printMenu();
			break;
		}
	}
}

void printAllReverse(Node* node)
{
	if (!node)
	{
		cout << "Список пуст" << endl;
		return;
	}

	node = findBack(node);
	cout << nodeHeader << endl;
	do
	{
		print(node);
		node = node->back;
	} while (node);
}

void print(Node * node)
{
	cout << node->id << '\t' << node->date << '\t' << node->cost << '\t';

	if (node->ret)
		cout << "Да" << endl;
	else
		cout << "Нет" << endl;
}

void printAll(Node* node)
{
	if (!node)
	{
		cout << "Список пуст" << endl;
		return;
	}

	node = findFront(node);
	cout << nodeHeader << endl;
	do
	{
		print(node);
		node = node->next;
	} while (node);
}

Node* sort(Node* _node)
{
	_node = findFront(_node);
	Node* node = _node;
	Node* newList = 0;

	do
	{
		if (node->ret)
			newList = insert(newList, *node);
		node = node->next;
	} while (node);

	node = _node;
	do
	{
		if (!node->ret)
			newList = insert(newList, *node);
		node = node->next;
	} while (node);

	return newList;
}

Node* sort2(Node* _node)
{
	_node = findFront(_node);
	Node* node = _node;
	Node* newList = 0;

	do
	{
		if (!node->ret)
			newList = insert(newList, *node);
		node = node->next;
	} while (node);

	node = _node;
	do
	{
		if (node->ret)
			newList = insert(newList, *node);
		node = node->next;
	} while (node);

	return newList;
}

Node* findBack(Node* node)
{
	if (!node)
		return 0;

	while (node->next)
		node = node->next;

	return node;
}

Node* findFront(Node* node)
{
	if (!node)
		return 0;

	while (node->back)
		node = node->back;

	return node;
}

Node* remove(Node* node)
{
	if (!node)
		return 0;

	Node* result = node->next;

	if (node->next)
		node->next->back = node->back;
	if (node->back)
	{
		node->back->next = node->next;
		result = node->back;
	}

	delete node;
	return result;
}

Node* removeByData(Node* node)
{
	if (!node)
		return 0;

	node = findFront(node);

	int date;
	cout << "Введите дату:" << endl;
	cin >> date;

	Node* n;
	for (n = node; n; n = n->next)
	{
		if (n->date < date)
		{
			if (n == node)
			{
				node = remove(n);
				n = node;
			}
			else
				n = remove(n);
		}
	}

	return node;
}

int getCountByDate(Node * node)
{
	int date;
	cout << "Введите дату:" << endl;
	cin >> date;
	int count = 0;

	for (Node* n = node; n; n = n->next)
	{
		if (n->date == date)
			count++;
	}

	return count;
}

Node readNode()
{
	Node node;
	cout << "Введите номер, дату, цену, возврат:" << endl;
	int i;
	cin >> node.id >> node.date >> node.cost >> i;
	node.ret = i == 0;
	return node;
}

Node* insert(Node* node, Node newNode)
{
	Node* n = new Node();
	n->id = newNode.id;
	n->ret = newNode.ret;
	n->cost = newNode.cost;
	n->date = newNode.date;
	n->next = node;
	n->back = 0;

	if (node)
	{
		if (node->back)
		{
			node->back->next = n;
			n->back = node->back;
		}
		node->back = n;
	}

	return n;
}

Node* find(Node* node, int id)
{
	if (!node)
		return 0;

	Node* result = 0;
	while (node)
	{
		if (node->id == id)
			result = insert(result, *node);

		node = node->next;
	}
	return result;
}

Node* addRandom(Node* node)
{
	node = findFront(node);
	Node n;
	for (int i = 0; i < 5; i++)
	{
		n.id = rand() % 5;
		n.date = 1 + rand() % 31;
		n.cost = 100 + rand() % 801;
		n.ret = rand() % 5 == 0;
		node = insert(node, n);
	}
	return node;
}