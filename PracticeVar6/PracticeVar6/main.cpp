#include <stdlib.h>
#include <vector>
#include <string>
#include <time.h>
#include <conio.h>
#include <iostream>

using namespace std;

size_t comparison_count;
size_t swap_count;
clock_t ms;

template<typename Type>
struct ATD_Matrix : public vector<Type>
{
	void setRandom(size_t count, Type min, Type max)
	{
		srand(clock());
		for (size_t i = 0; i < count; ++i)
			push_back(min + rand() % (max - min + 1));
		comparison_count += count + 1;
	}

	void print()
	{
		if (!empty())
		{
			for (size_t i = 0; i < size(); ++i)
				cout << at(i) << ' ';
			comparison_count += size() + 1;
		}
		else
			cout << "��� ���������";
		cout << endl;
	}

	void sort_selection()
	{
		comparison_count++;
		for (size_t i = 0; i < size(); ++i)
		{
			size_t min = i;
			comparison_count += 2;
			for (size_t j = i; j < size(); ++j)
			{
				comparison_count += 2;
				if (at(j) < at(min))
					min = j;
			}

			comparison_count++;
			if (i != min)
				swap(i, min);
		}
	}
	
	void sort_shell()
	{
		size_t step = size() / 2;
		comparison_count++;
		while (step > 0)
		{
			for (size_t i = 0; i < size() - step; ++i)
			{
				comparison_count += 2;
				int j = i;
				while (j >= 0 && at(j) > at(j + step))
				{
					comparison_count++;
					swap(j, j + step);
					j--;
				}
			}
			step = step / size_t(2);
			comparison_count++;
		}
	}

	void sort_merge()
	{
		sort_merge(0, size()-1);
	}

	size_t find_direct(Type value)
	{
		for (size_t i = 0; i < size(); i++)
		{
			if (at(i) == value)
				return i;
		}
		return -1;
	}

	size_t find_fibonachi(const int n, const Type value)
	{
		size_t t, search, mid, i, c, j = 1;
		while (fib(j) < (n + 1))
			j = j + 1;

		mid = n - fib(j - 2) + 1;
		size_t f1 = fib(j - 2);
		size_t f2 = fib(j - 3);
		c = 0;
		for (;;)
		{
			if (c == 1)
				break;
			if (mid > 0)
				if (value == at(mid))
					break;
			if (mid <= 0 || value > at(mid))
			{
				if (f1 == 1)
					c = 1;
				else
				{
					mid = mid + f2;
					f1 = f1 - f2;
					f2 = f2 - f1;
				}
			}
			else
			{
				if (f2 == 0)
					c = 1;
				else
				{
					mid = mid - f2;
					t = f1 - f2;
					f1 = f2;
					f2 = t;
				}
			}
		}
		if (c)
			search = 0;
		else
			search = mid;

		return (search && search != n) ? search : -1;
	}
private:
	void sort_merge(int first, int last)
	{
		if (first < last)
		{
			sort_merge(first, (first + last) / 2);
			sort_merge((first + last) / 2 + 1, last);
			merge(first, last);
		}
	}

	void merge(int first, int last)
	{
		int middle, start, final, j;
		vector<Type> mas;
		middle = (first + last) / 2;
		start = first;
		final = middle + 1;
		comparison_count++;
		for (j = first; j <= last; j++)
		{
			comparison_count+=4;
			if ((start <= middle) && ((final > last) || (at(start) < at(final))))
			{
				mas.push_back(at(start));
				start++;
			}
			else
			{
				mas.push_back(at(final));
				final++;
			}
		}
		comparison_count++;
		for (j = first; j <= last; j++)
		{
			comparison_count++;
			at(j) = mas[j - first];
		}
	}

	size_t fib(const size_t n)
	{
		return n < 2 ? n : fib(n - 1) + fib(n - 2);
	}

	void swap(size_t a, size_t b)
	{
		Type temp = operator[](a);
		operator[](a) = operator[](b);
		operator[](b) = temp;
		swap_count++;
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

	ATD_Matrix<int> vector;

	while (true)
	{
		cout << "1.������� ������ �� �����\n"\
			"2.��������� ������ ���������� �������\n"\
			"3.���������� ������� ������\n"\
			"4.���������� ������� �����\n"\
			"5.���������� ��������\n"\
			"6.������ �����\n"\
			"7.����� ������� ���������\n"\
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
			vector.print();
			break;
		case '2':
			vector.setRandom(read<int>("������� ��������� ���������"),
				read<int>("������� ����������� �������� ��������"),
				read<int>("������� ����������� �������� ��������"));
			break;
		case '3':
			vector.sort_selection();
			vector.print();
			break;
		case '4':
			vector.sort_shell();
			vector.print();
			break;
		case '5':
			vector.sort_merge();
			vector.print();
			break;
		case '6':
		case '7':
			size_t index;
			if (c == '6')
				index = vector.find_direct(read<int>("������� ������� ��������"));
			else
				index = vector.find_fibonachi(
					read<int>("������� ����� ��������� ��� ������"),
					read<int>("������� ������� ��������"));

			if (index != -1)
				cout << "������� ������, ������ = " << index << endl;
			else
				cout << "������� �� ������" << endl;
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