#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <iostream>

using namespace std;

void run();
void print();

class Function
{
	double* data; // {x, y, z, t}
public:
	Function(double x, double y, double z);
	~Function();

	friend void run();
	friend void print();
};

Function* f1;

void run()
{
	double x = f1->data[0];
	double y = f1->data[1];
	double z = f1->data[2];
	f1->data[3] = 5 * atan(x) - 0.25*acos(x)*((x + 3 * abs(x - y) + x*x) / (abs(x - y)*z + x*x));
}

void print()
{
	cout << "T = " << f1->data[3] << endl;
}

int main(int argc, char* argv[])
{
	f1 = new Function(0.1722, 6.33, 0.000325);
	run();
	print();
	delete f1;

	system("pause");
	return 0;
}

Function::Function(double x, double y, double z)
{
	data = new double[4];
	data[0] = x;
	data[1] = y;
	data[2] = z;
	data[3] = 0;
}

Function::~Function()
{
	delete data;
}
