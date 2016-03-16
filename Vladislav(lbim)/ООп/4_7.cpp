#include <iostream>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <istream>

using namespace std;

class X
{
protected:
	int x1, x2;
public:
	X(int x1, int x2);
	~X();

	void set(int x1, int x2);
	virtual void print();
};

class Y : public X
{
protected:
	int y;
public:
	Y(int x1, int x2, int y);
	~Y();

	void set(int x1, int x2, int y);
	virtual void print();
	int run();
};


int main(int argc, char* argv[])
{
	X* example = new Y(10, 15, 3);

	example->print();
	cout << "X1*Y + X2 = " << ((Y*)example)->run() << endl;

	delete example;

	system("pause");
	return 0;
}


X::X(int x1, int x2)
{
	set(x1, x2);
}

void X::set(int x1, int x2)
{
	this->x1 = x1;
	this->x2 = x2;
}

void X::print()
{
	cout << "X1 = " << x1 << " X2 = " << x2 << endl;
}

X::~X(){}

Y::Y(int x1, int x2, int y) : X(x1, x2)
{
	this->y = y;
}

void Y::set(int x1, int x2, int y)
{
	this->y = y;
	X::set(x1, x2);
}

void Y::print()
{
	cout << "X1 = " << x1 << " X2 = " << x2 << " Y = " << y << endl;
}

int Y::run()
{
	return x1*y + x2;
}

Y::~Y(){}
