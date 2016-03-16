#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float F(float x);
float Integral(float x);
float IntegralRectangular(float(*f)(float), float a, float b, int n);
float IntegralTrapeze	 (float(*f)(float), float a, float b, int n);
float IntegralSimpson	 (float(*f)(float), float a, float b, int n);
float IntegralMonteCarlo (float(*f)(float), float a, float b, int n);

int main()
{
	int n = 2000;
	float a = 0, b = 2;

	float r  = IntegralRectangular(&F, a, b, n);
	float t  = IntegralTrapeze	  (&F, a, b, n);
	float s  = IntegralSimpson	  (&F, a, b, n);
	float mc = IntegralMonteCarlo (&F, a, b, n);
	float ideal = Integral(b) - Integral(a);

	printf("F   = cos(2x)-x^2\n\n");
	printf("Fdx = cos(x)*sin(x) - (x^3)/3\nx = %f...%f\n", a, b);
	printf("Iteration = %i\n\n", n);

	printf("      rectangular   \ttrapeze\t\tSimpson\t\tMonte Carlo\tideal\n");
	printf("Fdx   %f\t\t%f\t%f\t%f\t%f\n", r, t, s, mc, ideal);

	system("pause");
	return 0;
}

float IntegralRectangular(float(*f)(float), float a, float b, int n)
{
	float s = 0;
	for (int i = 0; i < n - 1; i++)
		s += F(a + (b - a) / n*i);

	return (b - a)*s / n;
}

float IntegralTrapeze(float(*f)(float), float a, float b, int n)
{
	float* y = new float[n];

	for (int i = 0; i < n; i++)
		y[i] = F(a + (b - a) / n*i);

	float s = (y[0] + y[n-1]) / 2.0f;
	for (int i = 1; i < n; i++)
		s += y[i];

	delete y;
	return (b - a)*s / n;
}

float IntegralSimpson(float(*f)(float), float a, float b, int n)
{
	float* y = new float[n];

	for (int i = 0; i < n; i++)
		y[i] = F(a + (b - a) / n*i);

	float s = 0;
	for (int i = 1; i < n - 1;)
	{
		s += 4.0f * y[i++];
		s += 2.0f * y[i++];
	}
	
	s = (y[0] + y[n - 1]) + s;
	delete y;

	return (b - a)*s / (n*3.0f);
}

float IntegralMonteCarlo(float(*f)(float), float a, float b, int n)
{
	float s = 0;
	for (int i = 0; i<n; i++)
		s += f(a + (float)rand() * (b - a)/32767.0f);

	return ((b - a)*s / n);
}

float F(float x)
{
	return cos(2 * x) - x*x;
}

float Integral(float x)
{
	return cos(x)*sin(x) - (x*x*x) / 3;
}