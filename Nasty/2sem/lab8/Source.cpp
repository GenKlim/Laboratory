#include <iostream>

using namespace std;

// Ёлемент односв€зного списка
struct TNode
{
	int value;
	TNode* next;
};


// —труктура дл€ задани€
struct MyType
{
	int x;
	char y;

	//  онструктор без пораметров
	MyType()
	{
		x = rand();
		y = 'A' + rand() % ('Z' - 'A'); // —лучайна€ латинска€ буква
	}

	//  онструктор с пораметрами
	MyType(int _x)
	{
		x = _x;
		y = 'A' + rand() % ('Z' - 'A');
	}

	// ќператоры сравнени€ (больше, меньше, равно, не равно)
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

// Ўаблон дл€ вывода в cout
template<class T>
void print(T obj)
{
	cout << obj;
}

// " онкретизаци€" шаблона, спецально дл€ MyType
void print(MyType obj)
{
	cout << '[' << obj.x << ' ' << obj.y << ']';
}

// —ортировка, перва€ перегрузка функции
// ѕерегрузка это функци€ с таким же именем но другими параметрами
// Ёта сортирует масив типа char
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

// ≈ще перегрузка
// Ёта сортирует масив типа double
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

// ≈ще перегрузка
// Ёта сортирует масив типа MyType
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

// Ёто шаблон дл€ сортировки
// Ўаблон нужен дл€ того чтобы не писать по 300 раз один и тот же код дл€ разных типов (как выше)
//  омпил€тор сам создаст нужные перегрузки подставив вместо T нужный тип
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

// Ўаблон запуска теста
// —оздает массив из заданного типа, сортирует и удал€ет его
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

// рекурсивна€ ф-и€ дл€ проверки палиндрома (слово должно одинаково читаетс€ с лубого конца)
bool palinromTest(const char* phrase, size_t len, size_t offest = 0)
{
	if (offest == len / 2)
		return true;
	if (phrase[offest] != phrase[len - offest - 1])
		return false;
	return palinromTest(phrase, len, offest + 1);
}

// «апускает тест палиндрома
void runPalinromTest(const char* phrase)
{
	cout << phrase << " - " << (palinromTest(phrase, strlen(phrase)) ? "palindrom" : "not palindrom") << endl;
}

// —оздает отдноноправленый список заданой длины, со случайными данными
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

// печатает отдноноправленый список
void printList(TNode* header)
{
	while (header)
	{
		cout << header->value << ' ';
		header = header->next;
	}
	cout << endl;
}

// удал€ет из списка узлы с заданым значением
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

// удал€ет отдноноправленый список из пам€ти
void deleteList(TNode* header)
{
	while (header)
	{
		TNode* k = header;
		header = header->next;
		delete k;
	}
}

// мейн, тут просто запускаютс€ тесты
int main()
{
	// запускаем тест дл€ указаных типов
	runSortTest<char>(10, 'a', 'z' , "char");
	runSortTest<double>(10, 10, 30, "double");
	runSortTest<MyType>(10, 0, 10, "MyType");
	cout << endl;

	// палиндромы?
	runPalinromTest("eye");
	runPalinromTest("slovo");
	runPalinromTest("ololo");
	cout << endl;

	//список
	TNode* list = createList(10);
	printList(list);
	removeInList(list, 4);
	printList(list);
	deleteList(list);

	system("pause");
	return EXIT_SUCCESS;
}