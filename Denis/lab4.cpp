#include <iostream>
#include <conio.h>

using namespace std;

/*
	��������� � �������� ��������� �������� ������� ��������,
	�������������� � ���� ����� ������������ ����. 
	��� �������� ���������� ���������-���� � ��������� 
	���������� ������� �� ����������� �������. 
*/

void main()
{
	float x, sum, a, fact;
	int n;
	cout << "Enter x: ";
	cin >> x;
	cout << "Enter n: ";
	cin >> n;

	sum = 1;
	fact = 1;
	a = 1;
	for (int i = 1; i < n; i++)
	{
		a *= x*x;
		fact *= (i * 2 - 1) * i * 2;
		if (i % 2)
			sum -= a / fact;
		else
			sum += a / fact;
	}

	cout << "S = " << sum << endl;
	cout << "cos(" << x << ") = " << cosf(x) << endl;

	system("pause");
}