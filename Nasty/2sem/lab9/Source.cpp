#include "Vector.h"
#include <iostream>

using namespace std;

// протсо создаем 3 каких то вектора и складываем их для теста

int main()
{
	vector<float> a, b(2), c;

	a.push(1);
	a.push(2);
	a.push(3);
	a.push(4);
	a.push(7);

	b.push(8);
	b.push(1);

	c.push(9);
	c.push(8);
	c.push(7);
	c[3] = a.pop();

	cout << "A: " << a << endl;
	cout << "B: " << b << endl;
	cout << "C: " << c << endl;

	cout << "A+B: " << a + b << endl;
	cout << "A+C: " << a + c << endl;
	cout << "C+B: " << c + b << endl;


	system("pause");
	return EXIT_SUCCESS;
}