#include "Header.h"

/*
��� ����� ��� ������
*/

void printMenu()
{
	cout << "1. �������� ����� ������� � ������ ������" << endl;
	cout << "2. ������� ������" << endl;
	cout << "3. ������� ������ � �����" << endl;
	cout << "4. �������� 5 �������� �������" << endl;
	cout << "5. ����� ��� ������ �� ������" << endl;
	cout << "6. ���������� �� ����" << endl;
	cout << "7. ������� ��� ���� �� ������ � ����" << endl;
	cout << "8. ����� ����� � ���������" << endl;
	cout << "9. ����������, ����� ��� ������ ���� ����������" << endl;
}


/*
void addToBack(Node*& node, int n)
{
	Node* back = findBack(node);
	for (int i = 0; i < n; i++)
	{
		Node* newNode = new Node();
		cout << "������� �����, ����, ����, �������:" << endl;
		int m;
		cin >> newNode->id >> newNode->date >> newNode->cost >> m;
		newNode->ret = m == 0;
		newNode->next = 0;
		newNode->back = back;
		if (back)
			back->next = newNode;
		else
			node = newNode;
		back = newNode;
	}
}*/

void printAllReverse(Node* node)
{
	if (!node)
	{
		cout << "������ ����" << endl;
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
/*
void insert2(Node* node)
{
	Node* need = findFront(node);

	int findID;
	cout << "������� ������� �����:" << endl;
	cin >> findID;

	while (need)
	{
		if (need->id != findID)
			need = need->next;
		else
			break;
	}

	if (!need)
		return;

	Node* newNode = new Node();
	cout << "������� �����, ����, ����, �������:" << endl;
	int m;
	cin >> newNode->id >> newNode->date >> newNode->cost >> m;
	newNode->ret = m == 0;
	newNode->next = need->next;
	newNode->back = need;
	if (need->next)
		need->next->back = newNode;
	need->next = newNode;
}
*/
int main(int argc, char* argv[])
{
	setlocale(LC_CTYPE, "RUS");

	int temp = 0;
	Node* node = 0;
	printMenu();

	while (true)
	{
		cout << "������� ������ ������� (0 - ��� ������ ����)";
		char c = getch();
		cout << "\r\t\t\t\t\t\t\t\t\r"; //��� ������ "������� ������ �������..." � �������

		switch (c)
		{
		case '1':
			//insert2(node);
			//addToBack(node, 2);
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
			cout << "������� �����: ";
			cin >> temp;
			printAll(findFront(find(node, temp)));
			break;
		case '6':
			node = sort(node);
			printAll(node);
			break;
		case '7':
			node = removeByDataAndID(node);
			printAll(node);
			break;
		case '8':
			printAll(findByRet(node));
			break;
		case '9':
			cout << getMaxRet(node) << endl;
			break;
		case '0':
			printMenu();
			break;
		}
	}
}

void print(Node * node)
{
	cout << node->id << '\t' << node->date << '\t' << node->cost << '\t';

	if (node->ret)
		cout << "��" << endl;
	else
		cout << "���" << endl;
}

void printAll(Node* node)
{
	if (!node)
	{
		cout << "������ ����" << endl;
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

void swap(Node* a, Node* b)
{
	Node temp;
	temp.id = a->id;
	temp.date = a->date;
	temp.cost = a->cost;
	temp.ret = a->ret;

	a->id = b->id;
	a->date = b->date;
	a->cost = b->cost;
	a->ret = b->ret;

	b->id = temp.id;
	b->date = temp.date;
	b->cost = temp.cost;
	b->ret = temp.ret;
}

Node* sort(Node* node)
{
	node = findFront(node);

	for (Node* i = node; i && i->next;)
	{
		bool f = true;
		for (Node* n = i; n && n->next; n = n->next)
		{
			if (n->date > n->next->date)
			{
				swap(n, n->next);
				f = false;
			}
		}
		if (f)
			i = i->next;
	}

	return node;
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

Node* removeByDataAndID(Node* node)
{
	if (!node)
		return 0;

	node = findFront(node);

	int id, date;
	cout << "������� ����� � ����:" << endl;
	cin >> id >> date;

	for (Node* n = node; n; n = n->next)
	{
		if (n->id == id && n->date == date)
			n = remove(n);
	}
	return node;
}

Node* findByRet(Node* node)
{
	Node* result = 0;
	node = findFront(node);

	for (Node* n = node; n; n = n->next)
	{
		if (n->ret)
			result = insert(result, *n);
	}

	return result;
}

int getMaxRet(Node * node)
{
	if (!node)
		return 0;

	int max = 0;
	int id = 0;

	for (Node* n = node; n; n = n->next)
	{
		int count = 0;
		for (Node* i = node; i; i = i->next)
		{
			if (i->id == n->id)
				count++;
		}
		if (count > max)
		{
			max = count;
			id = n->id;
		}
	}

	return id;
}

Node readNode()
{
	Node node;
	cout << "������� �����, ����, ����, �������:" << endl;
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