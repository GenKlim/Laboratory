#include <stdio.h>
#include <stdlib.h>
#include <math.h>

const int a = 2;
const int b = 5;

struct fValue
{
	float x, y, dy1, dy2;
	void print()
	{
		printf("%f\t%f\t%f\t%f\n", x, y, dy1, dy2);
	}
};

float F(float x);
void dif1(fValue* f, int n);
void dif2(fValue* f, int n);

int main()
{
	const int n = 10;
	fValue values[n];

	for (int i = 0; i < n; i++)
	{
		values[i].x = i;
		values[i].y = F(i);
	}

	dif1(values, n);
	dif2(values, n);

	printf("y = sin(%ix)%i^(-x)\n\n", b, a);
	printf("    X\t\t    Y\t\t   dy\t\t  ddy\n");
	for (int i = 0; i < n; i++)
		values[i].print();

	system("pause");
	return 0;
}

float F(float x)
{
	return exp(log((float)a)*(-x))*sin(b*x);
}

void dif1(fValue* f, int n)
{
	f[0].dy1 = (-3 * f[0].y + 4 * f[1].y - f[2].y) / 2.0f;

	for (int i = 1; i < n - 1; i++)
		f[i].dy1 = (f[i + 1].y - f[i - 1].y) / 2.0f;

	f[n - 1].dy1 = (f[n - 3].y - 4 * f[n - 2].y + 3 * f[n - 1].y) / 2.0f;
}

void dif2(fValue* f, int n)
{
	f[0].dy2 = (f[0].y + 2 * f[1].y + f[2].y) / 4.0f;

	for (int i = 1; i < n - 1; i++)
		f[i].dy2 = (f[i - 1].y - 2 * f[i].y + f[i + 1].y) / 4.0f;

	f[n - 1].dy2 = (f[n - 3].y - 2 * f[n - 2].y + f[n - 1].y) / 4.0f;
}
