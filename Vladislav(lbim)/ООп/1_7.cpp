#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <iostream>

using namespace std;

class Function
{
	double x, y, z, t;
public:
	void set(double x, double y, double z);
	void run();
	void print();
};

int main(int argc, char* argv[])
{
	Function* f1 = new Function();

	f1->set(0.1722, 6.33, 0.000325);
	f1->run();
	f1->print();

	delete f1;

	Function f2;
	f2.set(0.1722, 6.33, 0.000325);
	f2.run();
	f2.print();

	system("pause");
	return 0;
}

void Function::set(double x, double y, double z)
{
	this->x = x;
	this->y = y;
	this->z = z;
}

void Function::run()
{
	t = 5 * atan(x) - 0.25*acos(x)*((x + 3 * abs(x - y) + x*x) / (abs(x - y)*z + x*x));
}

void Function::print()
{
	cout << "T = " << t << endl;
}
