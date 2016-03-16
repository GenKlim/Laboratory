#include <iostream>
#include <conio.h>

using namespace std;

/*
	Вычислить произведение младшей цифры двузначного 
	числа и дробной части частного от деления старшей
	цифры числа на младшую цифру числа
*/

void main() 
{
	int x = 0, h, l;
	double result;

	cout << "Enter number [10, 99]:" << endl;
	while (x < 10 || x > 100)
		cin >> x;

	l = x % 10;
	h = (x - l) / 10;
	result = double(h) / l;
	result = h * (result - (int)result);

	cout << "result = " << result << endl;

	system("pause");
}
