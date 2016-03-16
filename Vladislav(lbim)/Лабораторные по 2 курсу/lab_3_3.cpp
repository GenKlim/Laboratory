#include <stdio.h>
#include <stdlib.h>
#include <math.h>

struct Point
{
	float x, y;
};

Point p0, p1, p2;

float y(float x);
float linear(float x);
float parabol(float x);
float Lagranj1(float x);
float Lagranj2(float x);
float Nyton1(float x);
float Nyton2(float x);

int main()
{
	const int a = 0;
	const int b = 1;
	const float step = 0.1;

	p0.x = 0;
	p0.y = y(p0.x);
	p1.x = 1;
	p1.y = y(p1.x);
	p2.x = 2;
	p2.y = y(p2.x);

	printf("y(x) = (x-1)^3+(2x+3)^3-27x^3-8\n\n");
	printf("X\t    Y\t  Linear     Parabol    Lagranj1   Lagranj2    Nyton1     Nyton2\n");
	for (float x = a; x < b; x += step)
	{
		printf("%g\t%f %f  %f  %f  %f  %f  %f\n",
			   x, y(x), linear(x), parabol(x), Lagranj1(x), Lagranj2(x), Nyton1(x), Nyton2(x));
	}

	system("pause");
	return 0;
}

float y(float x)
{
	return  pow(x - 1, 3) + pow(2 * x + 3, 3) - 27 * x*x*x - 8;
}

float linear(float x)
{
	float a1 = (p1.y - p0.y) / (p1.x - p0.x);
	float a0 = p0.y - a1*p0.x;

	return a0 + a1*x;
}

float parabol(float x)
{
	float h = p1.x - p0.x;
	float a2 = (p2.y - 2 * p1.y + p0.y) / (2 * h*h);
	float a1 = (p1.y - p0.y) / h - a2*(p1.x + p0.x);
	float a0 = p0.y - a1*p0.x - a2*p0.x*p0.x;

	return a0 + a1*x + a2*x*x;
}

float Lagranj1(float x)
{
	return p0.y*(x - p1.x) / (p0.x - p1.x) + p1.y*(x - p0.x) / (p1.x - p0.x);
}

float Lagranj2(float x)
{
	float h = p1.x - p0.x;
	return p0.y*(x - p1.x)*(x - p2.x) / (2 * h*h) - p1.y*(x - p0.x)*(x - p2.x) / (h*h) + p2.y*(x - p0.x)*(x - p1.x) / (2 * h*h);
}

float Nyton1(float x)
{
	return p0.y + (p1.y - p0.y)*(x - p0.x) / (p1.x - p0.x);
}

float Nyton2(float x)
{
	float h = p1.x - p0.x;
	float c1 = (p1.y - p0.y) / h;
	float c2 = (p2.y - 2 * p1.y + p0.y) / (4 * h*h);

	return p0.y + c1*(x - p0.x) + c2*(x - p0.x)*(x - p1.x);
}
