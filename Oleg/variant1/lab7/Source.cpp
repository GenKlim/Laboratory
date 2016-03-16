#include "Header.h"

void printMenu()
{
	cout << "1. �������� ����� ������� � ������ ������" << endl;
	cout << "2. ������� ������" << endl;
	cout << "3. ������� ������ � �����" << endl;
	cout << "4. �������� 10 �������� �������" << endl;
	cout << "5. �������� ����� ���� � ������ ����� ���������� ���� � ����� �� ������� ��������(���� ������������ �������� ��� �� ���������)" << endl;
	cout << "6. �������� �������� ���� ����������� ���� �������� �� ��������� �����, ���������� ����������" << endl;
	cout << "7. ������� ����, � ������� ���� �������� � ���� ������������ �������� ���������" << endl;
	cout << "8. ���������� ���������� ����, ��������� ����������" << endl;
	cout << "9. ����� ����� �� ������ �������" << endl;
	cout << endl;
}

int main(int argc, char* argv[])
{
	setlocale(LC_CTYPE, "RUS");

	int temp = 0;
	BookNode* node = 0;
	printMenu();

	while (true)
	{
		cout << "������� ������ ������� (0 - ��� ������ ����)";
		char c = getch();
		cout << "\r\t\t\t\t\t\t\t\t\t\t\r";

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
			node = addRandom(node, 10);
			printAll(node);
			break;
		case '5':
			node = insert2(findFront(node), readNode());
			break;
		case '6':
		{
			int ab;
			string book;
			cout << "������� ����� �������� � �������� �����:" << endl;
			cin >> ab >> book;
			editByIdAndName(node, ab, book);
			printAll(node);
		}
		break;
		case '7':
			node = removeNormal(node);
			printAll(node);
			break;
		case '8':
		{
			int ab;
			cout << "������� ����� ��������:" << endl;
			cin >> ab;
			cout << getBookByAbonent(node, ab) << " ����(�)" << endl;
		}
		break;
		case '9':
		{
			int ab;
			cout << "������� ����� ��������:" << endl;
			cin >> ab;
			printAll(findFront(find(node, ab)));
		}
		break;
		case '0':
			printMenu();
			break;
		}
	}
}

void printAllReverse(BookNode* node)
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

void print(BookNode * node)
{
	cout << node->id << '\t' << node->name << "\t" << node->dateStart << "\t\t" << node->dateReturn <<"\t\t" << node->dateReturnReal << endl;
}

void printAll(BookNode* node)
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

BookNode* findBack(BookNode* node)
{
	if (!node)
		return 0;

	while (node->next)
		node = node->next;

	return node;
}

BookNode* findFront(BookNode* node)
{
	if (!node)
		return 0;

	while (node->back)
		node = node->back;

	return node;
}

BookNode* remove(BookNode* node)
{
	if (!node)
		return 0;

	BookNode* result = node->next;

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

BookNode* removeNormal(BookNode* node)
{
	if (!node)
		return 0;

	node = findFront(node);

	for (BookNode* n = node; n; n = n->next)
	{
		if (n->dateReturn == n->dateReturnReal)
			n = remove(n);
	}
	return node;
}

int getBookByAbonent(BookNode* node, int id)
{
	int count = 0;
	for (BookNode* n = node; n; n = n->next)
	{
		if (n->id == id)
			count++;
	}

	return count;
}

BookNode readNode()
{
	BookNode node;
	cout << "�����, �������� �����, ���� ������, ���� ��������, ���� ������������ ��������:" << endl;
	cin >> node.id >> node.name >> node.dateStart >> node.dateReturn >> node.dateReturnReal;
	return node;
}

BookNode* insert2(BookNode* node, BookNode newNode)
{
	BookNode *old = 0, *f = node;

	while (f)
	{
		if (f->id == newNode.id)
			old = f;
		f = f->next;
	}

	if (old)
	{
		if (old->next)
			node = insert(old->next, newNode);
		else
		{
			BookNode* m = insert(0, newNode);
			old->next = m;
			m->back = old;
		}
	}

	return node;
}

BookNode* insert(BookNode* node, BookNode newNode)
{
	BookNode* n = new BookNode();
	n->id = newNode.id;
	n->dateReturn = newNode.dateReturn;
	n->dateReturnReal = newNode.dateReturnReal;
	n->dateStart = newNode.dateStart;
	n->name = newNode.name;
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

void editByIdAndName(BookNode *node, int ab, string book)
{
	BookNode* result = 0;
	while (node)
	{
		if (node->id == ab && node->name== book)
		{
			int date;
			cout << "������� ���� ����������� ��������:" << endl;
			cin >> date;
			node->dateReturnReal = date;
			return;
		}
		node = node->next;
	}
	cout << "������ �� �������" << endl;
}

BookNode* find(BookNode* node, int id)
{
	if (!node)
		return 0;

	BookNode* result = 0;
	while (node)
	{
		if (node->id == id)
			result = insert(result, *node);

		node = node->next;
	}
	return result;
}

BookNode* addRandom(BookNode* node, int count)
{
	node = findFront(node);
	BookNode n;
	for (int i = 0; i < count; i++)
	{
		n.id = rand() % 5;
		n.name = "noname";
		n.dateStart = 1 + rand() % 31;
		n.dateReturn = n.dateStart + (rand() % (31 - n.dateStart));
		n.dateReturnReal = n.dateStart + (rand() % (31 - n.dateStart));
		node = insert(node, n);
	}
	return node;
}