#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float y(float x);
float dy(float x);
float nyton(float a, float b);
float dihotomij(float a, float b);
float iteraziy(float x0);

int main()
{
	float fa, fb;
	const float step = 0.01f;
	fa = y(-11);

	printf("     a \t\t\t     b\t\t Dihotom.\t Nyton\t\tIteraziy\n");
	for (float x = -10.0f; x < 10.0f; x += step)
	{
		fb = y(x);
		if (fa*fb < 0.0f)
		{
			float a = x - step;
			float b = x + step;
			float ab = (a + b) / 2.0f;

			printf("%f\t< x <\t%f,\t%f\t%f\t%g\n", a, b, dihotomij(a, b), nyton(a, b), iteraziy(ab));
		}
		fa = fb;
	}

	system("pause");
	return 0;
}

float dihotomij(float a, float b)
{
	float e = 0.0001;
	float fa, fb, c, fc;
	do
	{
		c = (a + b) / 2.0f;
		fa = y(a);
		fb = y(b);
		fc = y(c);

		if (fc*fb < 0.0f)
			a = c;
		else 
			b = c;
	} while (fabs(a - b) > e);

	return((a + b) / 2.0f);
}

float nyton(float a, float b)
{
	float et, e = 0.0001f;
	float xn, xc;
	xn = b;
	do
	{
		xc = xn;
		xn = xc - y(xc) / dy(xc);
		et = fabs(xn - xc);
	} while (et>e);
	return(xn);
}

float iteraziy(float x0)
{
	float et, e = 0.0001f;
	float xn, xc;
	xn = x0;
	do
	{
		xc = xn;
		xn = dy(xc);
	} while (fabs(xn - xc)>e);
	return(xn);
}


float y(float x)
{
	return pow(x - 1, 3) + pow(2 * x + 3, 3) - 27 * x*x*x - 8;
}

float dy(float x)
{
	return -54*x*x+66*x+57;
}
