#include <iostream>
#include <conio.h>

using namespace std;

/*
	��������� ������������ ������� ����� ����������� 
	����� � ������� ����� �������� �� ������� �������
	����� ����� �� ������� ����� �����
*/

void main() 
{
	int x = 0, h, l;
	double result;

	cout << "Enter number [10, 99]:" << endl;
	while (x < 10 || x > 100)
		cin >> x;

	l = x % 10;
	h = (x - l) / 10;
	result = double(h) / l;
	result = h * (result - (int)result);

	cout << "result = " << result << endl;

	system("pause");
}
