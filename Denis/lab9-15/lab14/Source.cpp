#include <iostream>
#include <conio.h>

using namespace std;

double myPow(double n, unsigned int pow);

void main()
{
	double a;
	unsigned int p;

	while (true)
	{
		cout << "Enter number: ";
		cin >> a;
		cout << "Enter power: ";
		cin >> p;

		cout << a << '^' << p << " = " << myPow(a, p) << endl;
	}
}

double myPow(double n, unsigned int pow)
{
	return pow == 0 ? 1 : n*myPow(n, pow - 1);
}