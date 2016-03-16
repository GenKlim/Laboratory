#include "Vector.h"
#include <iostream>

using namespace std;

int main()
{
	vector<int> a, b(6);

	a.addToBack(8);
	a.addToBack(8);
	a.addToBack(0);
	a.addToBack(0);
	a.addToBack(5);
	cout << "A: " << a << endl;

	b.addToBack(5);
	b.addToBack(5);
	b.addToBack(3);
	b.addToBack(5);
	b.addToBack(3);
	b.addToBack(5);
	cout << "B: " << b << endl;

	cout << "A+B: " << a + b << endl;


	system("pause");
	return EXIT_SUCCESS;
}
