#include <stdio.h>
#include <stdlib.h>
#include <math.h>

struct fValue
{
	float x, ye, yem, yrk, yt;
	void print()
	{
		printf("%g\t%f\t%f\t%f\t%f\n", x, ye, yem, yrk, yt);
	}
};

float F(float x);
float dydx(float x, float y);
void Eyler(fValue* f, int n);
void EylerM(fValue* f, int n);
void RKutta(fValue* f, int n);

int main()
{
	const int n = 10;
	fValue values[n];

	for (int i = 0; i < n; i++)
	{
		values[i].x = 0.1f*i;
		values[i].yt = F(values[i].x);
	}

	values[0].ye = values[0].yt;
	values[0].yrk = values[0].yt;
	values[0].yem = values[0].yt;

	Eyler(values, n);
	EylerM(values, n);
	RKutta(values, n);

	printf(" dy     1-2x\n");
	printf("---- = -------\n");
	printf(" dx      y^2\n\n");
	printf("y = exp(ln(3(2-x(x-1)))/3)\n\n");
	printf(" X\tY(Eyler)\tY(Eyler modif)\tY(Runge-Kutta)\tY(Ideal)\n");
	for (int i = 0; i < n; i++)
		values[i].print();

	system("pause");
	return 0;
}

float F(float x)
{
	return exp(log(3.0f * (2-(x-1)*x))/3.0f);
}

float dydx(float x, float y)
{
	return (1-2*x)/(y*y);
}

void Eyler(fValue* f, int n)
{
	float h = f[1].x - f[0].x;
	for (int i = 0; i < n; i++)
		f[i + 1].ye = f[i].ye + h*dydx(f[i].x, f[i].ye);
}

void EylerM(fValue* f, int n)
{
	float r;
	float h = f[1].x - f[0].x;

	for (int i = 0; i < n; i++)
	{
		r = dydx(f[i].x, f[i].yem);
		f[i + 1].yem = f[i].yem + h*r;
		f[i + 1].yem = f[i].yem + h*(r + dydx(f[i+1].x, f[i+1].yem))*0.5f;
	}
}


void RKutta(fValue* f, int n)
{
	float h = f[1].x - f[0].x;
	float k[4];

	for (int i = 0; i < n; i++)
	{
		k[0] = dydx(f[i].x,				f[i].yrk);
		k[1] = dydx(f[i].x + h / 2.0f,	f[i].yrk + h * k[0] / 2.0f);
		k[2] = dydx(f[i].x + h / 2.0f,	f[i].yrk + h * k[1] / 2.0f);
		k[3] = dydx(f[i].x + h,			f[i].yrk + h*k[2]);
		f[i + 1].yrk = f[i].yrk + h*(k[0] + 2.0f*k[1] + 2.0f*k[2] + k[3]) / 6.0f;
	}
}