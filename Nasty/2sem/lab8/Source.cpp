#include <iostream>

using namespace std;

// ������� ������������ ������
struct TNode
{
	int value;
	TNode* next;
};


// ��������� ��� �������
struct MyType
{
	int x;
	char y;

	// ����������� ��� ����������
	MyType()
	{
		x = rand();
		y = 'A' + rand() % ('Z' - 'A'); // ��������� ��������� �����
	}

	// ����������� � �����������
	MyType(int _x)
	{
		x = _x;
		y = 'A' + rand() % ('Z' - 'A');
	}

	// ��������� ��������� (������, ������, �����, �� �����)
	bool operator >(MyType& b) const
	{
		return x > b.x;
	}
	bool operator <(MyType& b) const
	{
		return x < b.x;
	}
	bool operator ==(MyType& b) const
	{
		return x == b.x && y == b.y;
	}
	bool operator !=(MyType& b) const
	{
		return x != b.x || y != b.y;
	}
};

// ������ ��� ������ � cout
template<class T>
void print(T obj)
{
	cout << obj;
}

// "�������������" �������, ��������� ��� MyType
void print(MyType obj)
{
	cout << '[' << obj.x << ' ' << obj.y << ']';
}

// ����������, ������ ���������� �������
// ���������� ��� ������� � ����� �� ������ �� ������� �����������
// ��� ��������� ����� ���� char
void sort(char* array, size_t size)
{
	for (size_t Ldx = 0, Rdx = size - 1; Ldx < Rdx; Ldx++)
	{
		for (size_t idx = Ldx; idx < Rdx; idx++)
		{
			if (array[idx + 1] < array[idx])
				swap(array[idx], array[idx + 1]);
		}
		Rdx--;

		for (size_t idx = Rdx; idx > Ldx; idx--)
		{
			if (array[idx - 1] >  array[idx])
				swap(array[idx - 1], array[idx]);
		}
	}
}

// ��� ����������
// ��� ��������� ����� ���� double
void sort(double* array, size_t size)
{
	for (size_t Ldx = 0, Rdx = size - 1; Ldx < Rdx; Ldx++)
	{
		for (size_t idx = Ldx; idx < Rdx; idx++)
		{
			if (array[idx + 1] < array[idx])
				swap(array[idx], array[idx + 1]);
		}
		Rdx--;

		for (size_t idx = Rdx; idx > Ldx; idx--)
		{
			if (array[idx - 1] >  array[idx])
				swap(array[idx - 1], array[idx]);
		}
	}
}

// ��� ����������
// ��� ��������� ����� ���� MyType
void sort(MyType* array, size_t size)
{
	for (size_t Ldx = 0, Rdx = size - 1; Ldx < Rdx; Ldx++)
	{
		for (size_t idx = Ldx; idx < Rdx; idx++)
		{
			if (array[idx + 1] < array[idx])
				swap(array[idx], array[idx + 1]);
		}
		Rdx--;

		for (size_t idx = Rdx; idx > Ldx; idx--)
		{
			if (array[idx - 1] >  array[idx])
				swap(array[idx - 1], array[idx]);
		}
	}
}

// ��� ������ ��� ����������
// ������ ����� ��� ���� ����� �� ������ �� 300 ��� ���� � ��� �� ��� ��� ������ ����� (��� ����)
// ���������� ��� ������� ������ ���������� ��������� ������ T ������ ���
template<typename T>
void sort(T* array, size_t size)
{
	for (size_t Ldx = 0, Rdx = size - 1; Ldx < Rdx; Ldx++)
	{
		for (size_t idx = Ldx; idx < Rdx; idx++)
		{
			if (array[idx + 1] < array[idx])
				swap(array[idx], array[idx + 1]);
		}
		Rdx--;

		for (size_t idx = Rdx; idx > Ldx; idx--)
		{
			if (array[idx - 1] >  array[idx])
				swap(array[idx - 1], array[idx]);
		}
	}
}

// ������ ������� �����
// ������� ������ �� ��������� ����, ��������� � ������� ���
template<typename T>
void runSortTest(size_t count, int min, int max, const char* type)
{
	cout << "Sort " << type << " array:" << endl;

	T* array = new T[count];
	for (size_t i = 0; i < count; i++) {
		array[i] = min + rand() % (max - min);
		print(array[i]);
		cout << ' ';
	}
	cout << endl;

	sort(array, count);

	for (size_t i = 0; i < count; i++)
	{
		print(array[i]);
		cout << ' ';
	}
	cout << endl;

	delete array;
}

// ����������� �-�� ��� �������� ���������� (����� ������ ��������� �������� � ������ �����)
bool palinromTest(const char* phrase, size_t len, size_t offest = 0)
{
	if (offest == len / 2)
		return true;
	if (phrase[offest] != phrase[len - offest - 1])
		return false;
	return palinromTest(phrase, len, offest + 1);
}

// ��������� ���� ����������
void runPalinromTest(const char* phrase)
{
	cout << phrase << " - " << (palinromTest(phrase, strlen(phrase)) ? "palindrom" : "not palindrom") << endl;
}

// ������� ���������������� ������ ������� �����, �� ���������� �������
TNode* createList(size_t len)
{
	TNode* header = new TNode();
	TNode* n = header;
	for (size_t i = 0; i < len; i++)
	{
		n->next = new TNode();
		n = n->next;
		n->value = 3 + rand() % 5;
	}
	return header;
}

// �������� ���������������� ������
void printList(TNode* header)
{
	while (header)
	{
		cout << header->value << ' ';
		header = header->next;
	}
	cout << endl;
}

// ������� �� ������ ���� � ������� ���������
void removeInList(TNode*& header, int value)
{
	if (!header)
		return;

	if (header->value == value)
	{
		TNode* k = header;
		header = header->next;
		delete k;
	}

	if (header)
		removeInList(header->next, value);
}

// ������� ���������������� ������ �� ������
void deleteList(TNode* header)
{
	while (header)
	{
		TNode* k = header;
		header = header->next;
		delete k;
	}
}

// ����, ��� ������ ����������� �����
int main()
{
	// ��������� ���� ��� �������� �����
	runSortTest<char>(10, 'a', 'z' , "char");
	runSortTest<double>(10, 10, 30, "double");
	runSortTest<MyType>(10, 0, 10, "MyType");
	cout << endl;

	// ����������?
	runPalinromTest("eye");
	runPalinromTest("slovo");
	runPalinromTest("ololo");
	cout << endl;

	//������
	TNode* list = createList(10);
	printList(list);
	removeInList(list, 4);
	printList(list);
	deleteList(list);

	system("pause");
	return EXIT_SUCCESS;
}