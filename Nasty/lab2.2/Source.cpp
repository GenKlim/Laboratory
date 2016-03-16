#include "iostream"
#include"malloc.h"
#include"string.h"
using namespace std;

void inputMas(unsigned int M[], int N)				//Задание массива
{
	cout << "Введите " << N << " целых чисел: ";
	for (int i = 0; i < N; i++)	cin >> M[i];
}

void outputMas(unsigned int M[], int N)				//Вывод массива
{
	for (int i = 0; i < N; i++)	cout << "M[" << i << "]=" << M[i] << endl;
}

void Minsert(unsigned int *M, int &N, int k, unsigned int x)	//вставка нового значения в массив
{
	N++;
	realloc(M, N * sizeof(int));
	for (int i = N - 1; i >= k; i--) M[i] = M[i - 1];
	M[k] = x;
}

bool prost(unsigned int x)							//определение простого числа
{
	for (int i = 2; i <= (x / 2) + 1; i++) if (!(x%i)) return 0;
	return 1;
}

bool ncifr(unsigned int x)							//определение числа с четным количеством чифр
{
	int k = 0;
	while (x) { x /= 10;	k++; }
	return !(k % 2);
}

void Mdelete(unsigned int *M, int &N)				//удаление всех элементов после простого числа
{
	int i = 0;
	bool flag = 1;
	while ((i < N) & flag)
	{
		if (prost(M[i]))
		{
			N = i + 1;
			realloc(M, N * sizeof(int));
			flag = 0;
		}
		i++;
	}
}

void insertpc(unsigned int *M, int &N)				//Вставка нужного элемента перед числами с четным количеством цифр
{
	int i = 0;
	unsigned int x;
	cout << "Введите элемент для вставки: ";
	cin >> x;
	while (i < N)
	{
		if (ncifr(M[i])) { Minsert(M, N, i, x);	i++; }
		i++;
	}
}

int findmaxc(unsigned int *M, int N)
{
	int max = 0;
	for (int i = 0; i < N; i++)	if (!(M[i] % 2) & M[i] > max) max = M[i];
	return max;
}

void centsort(unsigned int *&M, int N)
{
	unsigned int *M2 = new unsigned int[N];
	int m = N / 2, l = m, r = m;
	M2[m] = M[0];
	for (int i = 1; i < N; i++)
	{
		if (M[i] > M2[m])
		{
			if (r == N - 1)
			{
				for (int i = l - 1; i < r; i++) M2[i] = M2[i + 1];
				r--;
				m--;
				l--;
			}
			r++;
			int ir = m + 1;
			while (M[i] > M2[ir] & ir < r)	ir++;
			for (int i = r; i > ir; i--) M2[i] = M2[i - 1];
			M2[ir] = M[i];
		}
		else
		{
			if (l == 0)
			{
				for (int i = r + 1; i > l; i--) M2[i] = M2[i - 1];
				r++;
				m++;
				l++;
			}
			l--;
			int il = m - 1;
			while (M[i] < M2[il] & il > l)	il--;
			for (int i = l; i < il; i++) M2[i] = M2[i + 1];
			M2[il] = M[i];
		}
	}
	M = M2;
}

int main()
{
	setlocale(LC_CTYPE, "RUS");
	char ch = 0;
	int N;
	cout << "Введите длину массива: ";
	cin >> N;
	unsigned int *A = new unsigned int[N];
	inputMas(A, N);
	cout << "Введенный массив:" << endl;
	outputMas(A, N);
	while (ch != '5') {
		cout << ("\n1: Вставить новое число перед каждым числом, у которого четное количество цифр\n2: Удалить все числа массива, следующие за простым числом\n3: Найти максимальное число среди четных чисел массива\n4: Отсортировать массив центрированной сортировкой\n5: Выход\nВыберите действие: ");
		cin >> ch;
		switch (ch)
		{
		case '1':
		{
			insertpc(A, N);
			cout << "Полученный массив:" << endl;
			outputMas(A, N);
			break;
		}
		case '2':
		{
			Mdelete(A, N);
			cout << "Полученный массив:" << endl;
			outputMas(A, N);
			break;
		}
		case '3':
		{
			if (findmaxc(A, N)) cout << "Максимальное четное число: " << findmaxc(A, N) << endl;
			else cout << "Нет четных чисел!\n";
			break;
		}
		case '4':
		{
			centsort(A, N);
			cout << "Отсортированный массив:" << endl;
			outputMas(A, N);
			break;
		}
		}
	}
	if (A) delete[]A;
	return 0;
}