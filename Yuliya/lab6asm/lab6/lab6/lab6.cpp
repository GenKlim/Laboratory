#include <locale>
#include <iostream>
#include <ctime>
#include <iomanip>
#include <conio.h>

using namespace std;

extern "C" void sumASM(void);
extern "C" short int **arr;
extern "C" short int M, N;
extern "C" short int ans;

void initrand(short int **mas, short int n, short int m) //заполнение массива рандомными числами
{
	short int first = -100;
	short int last = 200;
	for (int row = 0; row < n; row++)
		for (int col = 0; col < m; col++)
			mas[row][col] = first + rand() % last;
}

void printarray(short int **mas, short int n, short int m)//вывод массива на экран
{
	for (int row = 0; row < n; row++)
	{
		for (int col = 0; col < m; col++)
			cout << setw(6) << mas[row][col];
		cout << endl;
	}
	cout << endl;
}

void initkeyboard(short int **mas, short int n, short int m) //ввод элементов массива  с клавиатуры
{
	for (int row = 0; row < n; row++)
		for (int col = 0; col < m; col++)
		{
			cout << "arr[" << row << "][" << col << "] = ";
			cin >> mas[row][col];
			cout << endl;
		}
}

int sum(short int **mas, short int n, short int m)//сумма неотрицательных элементов массива
{
	int s = 0;

	for (int row = 0; row < n; row++)
		for (int col = 0; col < m; col++)
		{
			if (mas[row][col] >= 0) s += mas[row][col];
		}

	return s;
}

int main()
{

	setlocale(LC_ALL, "rus");
	srand(time(0));

	cout << "¬ведите N - количество строк" << endl;
	cin >> N; 
	cout << "¬ведите M - количество столбцов" << endl;
	cin >> M;

	arr = new short int*[N];
	for (short int count = 0; count < N; count++)
		arr[count] = new short int[M];

	char a=' ';
	cout << "¬ведите 0, чтобы заполнить массив случайными числами, или 1, чтобы заполнить массив с клавиатуры" << endl;

	while (a!='1'&& a!='0')
	{
		cin >> a;
	}

	if (a=='1')	initkeyboard(arr, N, M);
	else initrand(arr, N,M);

	printarray(arr, N, M);


	cout << "C++" << endl;
	cout << "—умма всех неотрицательных элементов = " << sum(arr, N, M)<<endl;
	cout << endl;
	cout << "ASM" << endl;
	sumASM();
	cout << "—умма всех неотрицательных элементов = " << ans;
	_getch();
	return 0;
}