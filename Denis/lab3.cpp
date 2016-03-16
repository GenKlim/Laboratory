#include <iostream>
#include <conio.h>

using namespace std;

/*
	Определить, лежит ли точка с между двух
	окружностей с центром в начале координат. 
*/

void main()
{
	double x, y, r1, r2;
	cout << "Enter x and y:" << endl;
	cin >> x >> y;

	cout << "Enter radius 1:" << endl;
	cin >> r1;
	cout << "Enter radius 2:" << endl;
	cin >> r2;

	if (r1 > r2)
	{
		double temp = r1;
		r1 = r2;
		r2 = temp;
	}

	double r = sqrt(x*x + y*y);

	if (r1 <= r && r <= r2)
		cout << "yes" << endl;
	else
		cout << "no" << endl;

	system("pause");
}
