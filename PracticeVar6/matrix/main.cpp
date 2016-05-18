#include <stdlib.h>
#include <vector>
#include <string>
#include <time.h>
#include <conio.h>
#include <iostream>
#include <fstream>

using namespace std;

size_t comparison_count;
size_t swap_count;
clock_t ms;

template<typename Type>
class ATD_Matrix
{
	typedef vector<Type> MatrixLine;
	typedef ATD_Matrix<Type> Matrix;
	
	vector<MatrixLine> data;
	size_t w, h;
public:
	ATD_Matrix(size_t height, size_t width)
	{
		w = width;
		h = height;
		for (size_t i = 0; i < h; i++)
		{
			MatrixLine v;
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
		for (int i = 0; i < line.size(); i++)
		{
			if (line[i] == ' ' || line[i] == '\t')
				w++;
		}

		fs.seekg(0);
		while (!fs.eof())
		{
			MatrixLine v;
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

	Matrix operator+(Matrix b)
	{
		Matrix result(w, h);
		if (w != b.w || h != b.h)
			cout << "������� ������ ������ �������� �� ��������." << endl;
		else
		{
			for (size_t i = 0; i < h; i++) {
				for (size_t j = 0; j < w; j++)
					result.data[i][j] = data[i][j] + b.data[i][j];
			}
		}
		return result;
	}

	Matrix operator-(Matrix b)
	{
		Matrix result(w, h);
		if (w != b.w || h != b.h)
			cout << "��������� ������ ������ �������� �� ��������." << endl;
		else
		{
			for (size_t i = 0; i < h; i++) {
				for (size_t j = 0; j < w; j++)
					result.data[i][j] = data[i][j] - b.data[i][j];
			}
		}
		return result;
	}

	Matrix operator*(Matrix b)
	{
		Matrix result(b.w, h);
		if (w != b.h)
			cout << "��������� ������ ������ �� ��������." << endl;
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
		Matrix temp(h, w);
		for (size_t i = 0; i < h; i++)
		{
			for (size_t j = 0; j < w; j++)
				temp.set(j, i, get(i, j));
		}
		data = temp.data;
	}

	size_t getWidth()
	{
		return w;
	}

	size_t getHeight()
	{
		return h;
	}

	void set(int i, int j, Type value)
	{
		if (i < 0 || h <= i || j < 0 || w <= j)
			cout << "������ � ������� �� ����������� " << i << ":" << j << " �� ��������." << endl;
		else
			data[i][j] = value;
	}

	Type get(int i, int j)
	{
		if (i < 0 || h <= i || j < 0 || w <= j)
			cout << "������ �� ������� �� ����������� " << i << ":" << j << " �� ��������." << endl;
		else
			return data[i][j];
	}

	void my(int offest)
	{
		for (size_t k = 0; k < offest; k++)
		{
			for (size_t i = 0; i < h; i++)
			{
				Type temp = get(i, 0);
				for (size_t j = 0; j < w - 1; j++)
					set(i, j, get(i, j + 1));

				set(i, w - 1, temp);
			}
		}
	}
};

template<typename type>
type read(string message)
{
	type result;
	cout << message << ": ";
	cin >> result;
	ms = clock();
	return result;
}

int main()
{
	setlocale(0, "");

	ATD_Matrix<int> mtx(2, 2);

	while (true)
	{
		cout << "1.������� ������ �� �����\n"\
				"2.��������� ������� � ����������\n"\
				"3.�������� � ����\n"\
				"4.��������� �� �����\n"\
				"5.�������� ������\n"\
				"6.�������� ������\n"\
				"7.��������� ������\n"\
				"8.��������������� �������\n"\
				"9.��������� ����������� ����� �����\n"\
				"0.�����\n";

		cout << "������� �������: ";
		char c = _getch();
		cout << "\r\t\t\t\t" << endl;

		comparison_count = 0;
		swap_count = 0;
		ms = clock();

		switch (c)
		{
		case '1':
			mtx.print();
			break;
		case '2':
			mtx = ATD_Matrix<int>(
				read<int>("������� ���������� ��������"),
				read<int>("������� ���������� �����"));

			for (size_t i = 0; i < mtx.getHeight(); i++)
			{
				cout << "������� " << i + 1 << " ������." << endl;
				for (size_t j = 0; j < mtx.getWidth(); j++)
					mtx.set(i, j, read<int>(""));
			}
			break;
		case '3':
			mtx.save(read<string>("������� ��� �����"));
			break;
		case '4':
			mtx.load(read<string>("������� ��� �����"));
			break;
		case '5':
			cout << "A:" << endl;
			mtx.print();
			cout << "A+A:" << endl;
			(mtx + mtx).print();
			break;
		case '6':
			cout << "A:" << endl;
			mtx.print();
			cout << "A-A:" << endl;
			(mtx - mtx).print();
			break;
		case '7':
			cout << "A:" << endl;
			mtx.print();
			cout << "A*A:" << endl;
			(mtx * mtx).print();
			break;
		case '8':
			cout << "A`:" << endl;
			mtx.transponire();
			mtx.print();
			break;
		case '9':
			mtx.my(read<int>("������� �������� ������"));
			mtx.print();
			break;
		case '0':
			return EXIT_SUCCESS;
		}

		ms = clock() - ms;
		cout << "��������� �������: " << ms << " ��" << endl;
		cout << "��������� ���������: " << comparison_count << endl;
		cout << "��������� �������: " << swap_count << endl;

		cout << endl;
		system("pause");
		system("cls");
	}
}