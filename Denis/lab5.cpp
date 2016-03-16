#include <iostream>
#include <conio.h>

using namespace std;

/*
	Вычислить сумму всех чисел Фибоначчи,
	которые не превосходят число m
*/

void main()
{
	int sum = 1;
	int m;
	cout << "Enter m: ";
	cin >> m;

	int last = 0, next = 1; 
	while(next < m) 
	{
		last = next - last;
		sum += next;
		next += last;
	}

	cout << "S = " << sum << endl;

	system("pause");
}