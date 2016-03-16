#include <iostream>
#include <conio.h>

using namespace std;

double SimpsonMethod(double a, double b, unsigned int n, double(*f)(double x));
double f(double x);

void main()
{
	double intervals[4][2] = {
		{ 0, 0.5 },
		{ 0, 1.0 },
		{ 0, 1.5 },
		{ 0, 2.0 } };

	unsigned int eps;
	cout << "Enter eps: ";
	cin >> eps;

	for (int i = 0; i < 4; i++)
	{
		cout << "[" << intervals[i][0] << ' ' << intervals[i][1] << "]\t= ";
		cout << SimpsonMethod(intervals[i][0], intervals[i][1], eps, f) << endl;
	}

	system("pause");
}

double SimpsonMethod(double a, double b, unsigned int n, double(*f)(double x))
{
	double h = (b - a) / n;
	double sum = 0;

	double x0 = a;
	double x1 = a + h;

	for (unsigned i = 0; i <= n - 1; i++)
	{
		sum += f(x0) + 4 * f(x0 + h / 2) + f(x1);

		x0 += h;
		x1 += h;
	}

	return (h / 6)*sum;
}

double f(double x)
{
	return pow(exp(1)*x, -x);
}