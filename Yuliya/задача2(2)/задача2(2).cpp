// задача2(2).cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <conio.h>


using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	setlocale(0, "rus");

	drob b(1, 5), c(12, 16), d(7, 8);
	drob a = drob::readInKeyboard();

	cout << "a = " << a << endl;
	cout << "b = " << b << endl;
	cout << "c = " << c << endl;
	cout << "d = " << d << endl;

	cout << "a+b = " << a + b << endl;
	cout << "d-c = " << d - c << endl;
	cout << "b*c = " << b*c << endl;
	cout << "b/a = " << b / a << endl;
	cout << "a^3 = " << drob::power(a, 3) << endl;
	_getch();
	return 0;
}

