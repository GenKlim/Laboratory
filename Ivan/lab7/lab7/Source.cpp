#include "Header.h"

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	Node* list = 0;

	cout << "1. �������� ������" << endl;
	cout << "2. �������� ������ � �������� �������" << endl;
	cout << "3. �������� ������� � ������ ������" << endl;
	cout << "4. �������� 5 ��������� �������" << endl;
	cout << "5. ����� ��� ������ �� ������ �������" << endl;
	cout << "6. ����������� �� ������" << endl;
	cout << "7. �������� ������� ����� �����, ����� ������ �������� ������ ������ ������" << endl;
	cout << "8. ������� ��� �������� � ��������� �������� ������" << endl;
	cout << "0. �����" << endl << endl;

	while (true)
	{
		cout << "������� ������ �������";
		char c = _getch();
		cout << "\r\t\t\t\t\t\t\r";

		switch (c)
		{
		case '1':
			printAll(list);
			break;
		case '2':
			printAllReverse(list);
			break;
		case '3':
			insert(list, Node::read());
			printAll(list);
			break;
		case '4':
			addRandom(list);
			printAll(list);
			break;
		case '5':
			printAll(find(list, read("����� �������")));
		break;
		case '6':
			sort(list);
			printAll(list);
			break;
		case '7':
			insertSpacel(list, Node::read());
			printAll(list);
			break;
		case '8':
			removeByGroup(list, read("����� ������"));
			printAll(list);
		break;
		case '0':
			return 0;
		}
	}

	return 0;
}

int read(string text)
{
	cout << "������� " << text << " : ";
	int result;
	cin >> result;
	return result;
}

void Node::print()
{
	cout << id << "\t\t" << group << '\t' << name << endl;
}

Node* Node::read()
{
	Node* node = new Node();
	cout << "������� ����� �������, ������, ��� ��������:" << endl;
	cin >> node->id >> node->group >> node->name;
	node->otzenki = 0;

	return node;
}

void Node::copyTo(Node* to)
{
	to->id = id;
	to->group = group;
	to->name = name;
	to->otzenki = otzenki;
}

Node* clone(Node* n)
{
	Node* c = new Node();
	n->copyTo(c);
	return c;
}

void moveToBack(Node*& node)
{
	if (node && node->next)
	{
		do
			node = node->next;
		while (node->next);
	}
}

void moveToFront(Node*& node)
{
	if (node && node->back)
	{
		do
			node = node->back;
		while (node->back);
	}
}

void printAll(Node* node)
{
	if (!node)
	{
		cout << "������ ����" << endl;
		return;
	}

	moveToFront(node);
	cout << "����� �������\t������\t���" << endl;
	do
	{
		node->print();
		node = node->next;
	} while (node);
}

void printAllReverse(Node* node)
{
	if (!node)
	{
		cout << "������ ����" << endl;
		return;
	}

	moveToBack(node);
	cout << "����� �������\t������\t���" << endl;
	do
	{
		node->print();
		node = node->back;
	} while (node);
}

void swap(Node* a, Node* b)
{
	Node* c = clone(a);
	b->copyTo(a);
	c->copyTo(b);
	delete c;
}

void sort(Node* index)
{
	moveToFront(index);

	if (!index || !index->next)
		return;

	for (Node* i = index; i->next; i = i->next)
	{
		for (Node* j = index; j->next; j = j->next)
		{
			if (j->group > j->next->group)
				swap(j, j->next);
		}
	}
}

void remove(Node*& node)
{
	if (!node)
		return;

	Node* result = node->next;

	if (node->next)
		node->next->back = node->back;
	if (node->back)
	{
		node->back->next = node->next;
		result = node->back;
	}

	delete node;
	node = result;
}

void removeByGroup(Node*& node, int group)
{
	if (!node)
		return;

	moveToFront(node);

	while (node->group == group)
		remove(node);

	for (Node* n = node; n; n = n->next)
	{
		if (n->group == group)
			remove(n);
	}
}

void insert(Node*& node, Node* newNode)
{
	newNode->next = node;
	newNode->back = 0;

	if (node)
	{
		if (node->back)
		{
			node->back->next = newNode;
			newNode->back = node->back;
		}
		node->back = newNode;
	}

	node = newNode;
}

void insertSpacel(Node*& index, Node* newNode)
{
	if (!index)
		return;

	moveToFront(index);

	if (index->id < newNode->id)
		insert(index, newNode);
	else
	{
		Node* n = index;
		while (n && n->id >= newNode->id)
			n = n->next;

		if (n)
			insert(n, newNode);
	}
}

Node* find(Node* node, int id)
{
	if (!node)
		return 0;

	Node* result = 0;
	while (node)
	{
		if (node->id == id)
			insert(result, clone(node));

		node = node->next;
	}
	return result;
}

void addRandom(Node*& node)
{
	moveToFront(node);
	for (int i = 0; i < 5; i++)
	{
		insert(node, new Node());
		node->id = 228 + rand() % 5;
		node->group = 1 + rand() % 31;
		for (int i = 0; i < 3 + rand() % 4; i++)
			node->name += 'a' + rand() % ('z' - 'a' + 1);
	}
}