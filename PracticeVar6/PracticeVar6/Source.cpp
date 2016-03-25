#include <stdlib.h>
#include <vector>
#include <string>
#include <time.h>
#include <conio.h>
#include <iostream>

using namespace std;

const char * sortNames[] = { "\"пузырька\"", "вставок", "подсчета" };
const char * findNames[] = { "двоичный", "интерполяционный" };

template<typename Type>
class MyVector : public vector<Type>
{
public:
	int __statistic_comparison = 0;
	int __statistic_swap = 0;

	void createRandom(int count, Type min, Type max)
	{
		srand(clock());
		for (int i = 0; isLess(i, count); i++)
			push_back(min + rand() % (max - min + 1));
	}

	void print()
	{
		if (!empty())
			for (size_t i = 0; isLess(i, size()); i++)
				cout << at(i) << ' ';
		else
			cout << "Вектор пуст";
		cout << endl;
	}

	void sort1()
	{
		for (size_t i = 0; isLess(i, size()); i++)
		{
			for (size_t j = i; isLess(j, size()); j++)
			{
				if (isLarger(at(i), at(j)))
					swap(i, j);
			}
		}
	}

	void sort2()
	{
		Type temp;
		int item;
		for (size_t i = 1; isLess(i, size()); i++)
		{
			temp = at(i);
			item = i - 1;
			while (!isLess(item, 0) && isLarger(item, temp))
			{
				swap(item + 1, item);
				item--;
			}
		}
	}

	void sort3()
	{
		if (empty()) return;

		Type min, max;
		min = max = at(0);

		for (size_t i = 0; isLess(i, size()); i++)
		{
			Type t = at(i);
			if (isLess(max, t))
				max = t;
			if (isLarger(min, t))
				min = t;
		}

		Type *temp = new Type[max - min + 1];

		for (Type i = min; !isLarger(i, max); ++i)
			temp[i - min] = 0;

		for (size_t i = 0; isLess(i, size()); ++i)
			++temp[at(i) - min];

		iterator y = begin();
		for (Type i = min; !isLarger(i, max); ++i) {
			for (int j = temp[i - min]; j--;) {
				*y++ = i;
			}
		}

		delete[] temp;
	}

	int find1(Type value)
	{
		if (empty()) return -1;

		int average_index,
			first_index = 0,
			last_index = size() - 1;

		while (isLess(first_index, last_index))
		{
			average_index = first_index + (last_index - first_index) / 2;
			if (!isLarger(value, at(average_index)))
				last_index = average_index;
			else
				first_index = average_index + 1;
		}
		return isEqual(at(last_index), value) ? last_index : -1;
	}

	int find2(Type value)
	{
		int mid, low = 0, high = size() - 1;

		while (isLess(at(low), value) && isLarger(at(high), value))
		{
			mid = low + ((value - at(low)) * (high - low)) / (at(high) - at(low));

			if (isLess(at(mid), value))
				low = mid + 1;
			else if (isLarger(at(mid), value))
				high = mid - 1;
			else
				return mid;
		}

		if (isEqual(at(low), value))
			return low;
		if (isEqual(at(high), value))
			return high;
		return -1;
	}

private:
	void swap(int a, int b)
	{
		Type c = at(a);
		operator[](a) = at(b);
		operator[](b) = c;
		__statistic_swap++;
	}

	template <typename T>
	bool isEqual(const T& arg1, const T& arg2)
	{
		__statistic_comparison++;
		return arg1 == arg2;
	}
	template <typename T>
	bool isLess(const T& arg1, const T& arg2)
	{
		__statistic_comparison++;
		return arg1 < arg2;
	}
	template <typename T>
	bool isLarger(const T& arg1, const T& arg2)
	{
		__statistic_comparison++;
		return arg1 > arg2;
	}
};

MyVector<int> my_vector;

template<typename type>
type read(string message)
{
	type result;
	cout << message << ": ";
	cin >> result;
	return result;
}

template<>
bool read<bool>(string message)
{
	cout << message << "? (y - да, n - нет) " << endl;
	return tolower(_getch()) == 'y';
}

void inline __run_print(int ms)
{
	cout << "Время выполнения операции - " << clock() - ms << " мс." << endl;
	if (my_vector.__statistic_comparison != 0)
		cout << "Выполнено " << my_vector.__statistic_comparison << " операций сравнения." << endl;
	if (my_vector.__statistic_swap != 0)
		cout << "Выполнено " << my_vector.__statistic_swap << " операций обмена." << endl;
}

template<typename result, typename... params>
result run(result(MyVector<int>::*f)(params...), params... a)
{
	my_vector.__statistic_comparison = 0;
	my_vector.__statistic_swap = 0;
	int ms = clock();
	result r = (my_vector.*f)(a...);
	__run_print(ms);
	return r;
}

template<typename result = void, typename... params>
void run(void(MyVector<int>::*f)(params...), params... a)
{
	my_vector.__statistic_comparison = 0;
	my_vector.__statistic_swap = 0;
	int ms = clock();
	(my_vector.*f)(a...);
	__run_print(ms);
}


bool menu_print()
{
	run(&MyVector<int>::print);
	return false;
}

bool menu_bind()
{
	if (!my_vector.empty() && read<bool>("Отчистить вектор"))
		my_vector.clear();

	run(&MyVector<int>::createRandom,
		read<int>("Количество элементов"),
		read<int>("Минимальное возможное число"),
		read<int>("Максимально возможное число"));
	return false;
}

template<int n>
bool menu_sort()
{
	cout << "Метод " << sortNames[n - 1] << endl;
	my_vector.print();
	cout << "\t\t||" << endl << "\t\t\\/" << endl;
	switch (n)
	{
	case 1:
		run(&MyVector<int>::sort1);
		break;
	case 2:
		run(&MyVector<int>::sort2);
		break;
	case 3:
		run(&MyVector<int>::sort3);
		break;
	}
	my_vector.print();
	return false;
}

template<int n>
bool menu_find()
{
	cout << "Метод " << findNames[n - 1] << endl;
	my_vector.print();
	int find = read<int>("Введите значение искомого элемента");
	int index;

	if (n == 1)
		index = run(&MyVector<int>::find1, find);
	else
		index = run(&MyVector<int>::find2, find);

	cout << "Элемент '" << find << "' ";
	if (index != -1)
		cout << index + 1 << " в векторе." << endl;
	else
		cout << "не найден." << endl;
	return false;
}

bool menu_exit()
{
	return true;
}

struct MenuItem {
	string title;
	bool(*event)();
};

MenuItem menu[] = {
	{ "Выход", &menu_exit },
	{ "Вывести вектор на экран", &menu_print },
	{ "Заполнить вектор случайными числами", &menu_bind },
	{ "Сортировка", &menu_sort<1> },
	{ "Сортировка", &menu_sort<2> },
	{ "Сортировка", &menu_sort<3> },
	{ "Поиск", &menu_find<1> },
	{ "Поиск", &menu_find<2> }
};
const int menu_count = sizeof(menu) / sizeof(MenuItem);

int main()
{
	setlocale(0, "");

	while (1)
	{
		cout << "Введите номер команды:" << endl;
		for (int i = 0; i < menu_count; i++)
			cout << ' ' << i << '.' << menu[i].title << '.' << endl;

		int cmd = -1;
		while (cmd < 0 || cmd >= menu_count)
			cmd = _getch() - '0';

		system("cls");
		cout << menu[cmd].title << ':' << endl << endl;

		if (menu[cmd].event())
			return EXIT_SUCCESS;

		cout << endl;
		system("pause");
		system("cls");
	}
}