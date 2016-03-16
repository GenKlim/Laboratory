#include <stdlib.h>
#include <vector>
#include <string>
#include <time.h>
#include <conio.h>
#include <iostream>
#include <fstream>

using namespace std;

template<typename Type>
class Matrix {
	vector<vector<Type>> data;
	size_t w, h;
public:
	Matrix(size_t height, size_t width)
	{
		w = width;
		h = height;
		for (size_t i = 0; i < h; i++)
		{
			vector<Type> v;
			for (size_t j = 0; j < w; j++)
				v.push_back(0);
			data.push_back(v);
		}
	}

	void load(string file)
	{
		data.clear();
		w = 1;
		h = 0;

		ifstream fs(file);
		string line;
		getline(fs, line);
		for (size_t i = 0; i < line.size(); i++)
		{
			if (line[i] == ' ' || line[i] == '\t')
				w++;
		}

		fs.seekg(0);
		while (!fs.eof())
		{
			vector<Type> v;
			for (size_t i = 0; i < w; i++)
			{
				Type item;
				fs >> item;
				v.push_back(item);
			}
			data.push_back(v);
			h++;
		}

		fs.close();
	}

	void save(string file)
	{
		ofstream fs(file);
		for (size_t i = 0; i < h; i++)
		{
			for (size_t j = 0; j < w; j++) {
				fs << data[i][j];
				if (j != w - 1)
					fs << ' ';
			}
			if (i != h - 1)
				fs << '\n';
		}
		fs.close();
	}

	void print()
	{
		for (size_t i = 0; i < h; i++)
		{
			for (size_t j = 0; j < w; j++)
				cout << data[i][j] << ' ';
			cout << endl;
		}
	}

	Matrix<Type> operator+(Matrix<Type> b)
	{
		Matrix<Type> result(w, h);
		if (w != b.w || h != b.h)
			cout << "Сожение матриц разных размеров не возможно." << endl;
		else
		{
			for (size_t i = 0; i < h; i++) {
				for (size_t j = 0; j < w; j++)
					result.data[i][j] = data[i][j] + b.data[i][j];
			}
		}
		return result;
	}

	Matrix<Type> operator-(Matrix<Type> b)
	{
		Matrix<Type> result(w, h);
		if (w != b.w || h != b.h)
			cout << "Вычитание матриц разных размеров не возможно." << endl;
		else
		{
			for (size_t i = 0; i < h; i++) {
				for (size_t j = 0; j < w; j++)
					Type a = ...
					Type b = ...
					Type c = a+b;
					result.data[i][j] = data[i][j] - b.data[i][j];
			}
		}
		return result;
	}

	Matrix<Type> operator*(Matrix<Type> b)
	{
		Matrix<Type> result(b.w, h);
		if (w != b.h)
			cout << "Умножение данных матриц не возможно." << endl;
		else
		{
			for (size_t i = 0; i < h; i++)
			{
				for (size_t j = 0; j < b.w; j++)
				{
					for (size_t x = 0; x < w; x++)
						result.data[i][j] += b.data[x][j] * data[i][x];
				}
			}
		}
		return result;
	}

	void transponire()
	{
		Matrix<Type> temp(w, h);
		for (size_t i = 0; i < h; i++)
		{
			for (size_t j = 0; j < w; j++)
				temp.set(j, i, get(i, j));
		}
		w = temp.w;
		h = temp.h;
		data = temp.data;
	}

	void my()
	{
		Type* max = new Type[h];

		for (size_t i = 0; i < h; i++)
		{
			max[i] = get(i, 0);
			for (size_t j = 1; j < w; j++)
				if (max[i] < get(i, j))
					max[i] = get(i, j);
		}

		for (size_t i = 0; i < h-1; i++)
		{
			for (size_t j = 0; j < h - 1-i; j++)
			{
				if (max[j] > max[j + 1])
				{
					data[j].swap(data[j + 1]);
					Type m = max[j];
					max[j] = max[j + 1];
					max[j + 1] = m;
				}
			}
		}

		delete[] max;
	}

	size_t getWidth()
	{
		return w;
	}

	size_t getHeight()
	{
		return h;
	}

	void set(size_t i, size_t j, Type value)
	{
		if (i < 0 || h <= i || j < 0 || w <= j)
			cout << "Запись в матрицу по координатам " << i << ":" << j << " не возможна." << endl;
		else
			data[i][j] = value;
	}

	Type get(size_t i, size_t j)
	{
		if (i < 0 || h <= i || j < 0 || w <= j)
			cout << "Чтение из матрици по координатам " << i << ":" << j << " не возможно." << endl;
		else
			return data[i][j];
		return 0;
	}
};

Matrix<int> matrix(5, 5);

template<typename type>
type read(string message)
{
	type result;
	if (message.length())
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

template<typename result, typename... params>
result run(result(Matrix<int>::*f)(params...), params... a)
{
	int ms = clock();
	result r = (matrix.*f)(a...);
	cout << "Время выполнения операции - " << clock() - ms << " мс." << endl;
	return r;
}

template<typename result = void, typename... params>
void run(void(Matrix<int>::*f)(params...), params... a)
{
	int ms = clock();
	(matrix.*f)(a...);
	cout << "Время выполнения операции - " << clock() - ms << " мс." << endl;
}


bool menu_print()
{
	run(&Matrix<int>::print);
	return false;
}

bool menu_save()
{
	run(&Matrix<int>::save, read<string>("Введите имя нового файла"));
	return false;
}

template<int n>
bool menu_math()
{
	const char mathNames[] = { '+', '-', '*' };
	cout << "A:" << endl;
	matrix.print();

	Matrix<int> b(matrix.getWidth(), matrix.getHeight());
	for (size_t i = 0; i < matrix.getHeight(); i++)
	{
		for (size_t j = 0; j < matrix.getWidth(); j++)
			b.set(i, j, rand() % 10);
	}

	cout << "B:" << endl;
	b.print();
	cout << endl << "A" << mathNames[n - 1] << "B:" << endl;
	switch (n)
	{
	case 1:
		run(&Matrix<int>::operator+, b).print();
		break;
	case 2:
		run(&Matrix<int>::operator-, b).print();
		break;
	case 3:
		run(&Matrix<int>::operator*, b).print();
		break;
	}
	return false;
}

bool menu_load()
{
	run(&Matrix<int>::load, read<string>("Введите имя файла"));
	return false;
}

bool menu_transponire()
{
	matrix.print();
	cout << endl;
	run(&Matrix<int>::transponire);
	matrix.print();
	return false;
}

bool menu_bind()
{
	matrix = Matrix<int>(
		read<int>("Введите колтчество строк"),
		read<int>("Введите колтчество столбцов"));

	for (size_t i = 0; i < matrix.getHeight(); i++)
	{
		cout << "Введите " << i + 1 << " строку." << endl;
		for (size_t j = 0; j < matrix.getWidth(); j++)
			matrix.set(i, j, read<int>(""));
	}
	return false;
}

bool menu_my()
{
	cout << "Отсортировать строки матрицы по неубыванию максимальных элементов строк. (Вариант 1)" << endl;
	run(&Matrix<int>::my);
	matrix.print();
	return false;
}

bool menu_exit()
{
	return true;
}

struct MenuItem
{
	string title;
	bool(*event)();
};

MenuItem menu[] = {
	{ "Выход", &menu_exit },
	{ "Вывести вектор на экран", &menu_print },
	{ "Ввести с клавиатуры", &menu_bind },
	{ "Соханить", &menu_save },
	{ "Загрузить из файла", &menu_load },
	{ "Сложение матриц", &menu_math<1> },
	{ "Вычитаие матриц", &menu_math<2> },
	{ "Умножение матриц", &menu_math<3> },
	{ "Транспонировать матрицу", &menu_transponire },
	{ "Индивидуальное задание", &menu_my }
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