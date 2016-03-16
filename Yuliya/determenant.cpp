#include <fstream> 
#include <iostream> 

using namespace std;
ofstream output("output.txt");

void load(const char*, double** &, int &, int &);
void print(double**, int, int);
double det(double**, int);


int main(int argc, char* argv[])
{
	double** A;
	int row, collum;

	load("input.txt", A, row, collum);
	print(A, row, collum);

	if (row != collum)
	{
		output << "Row != collum." << endl;
		return 0;
	}

	output << "Determenant = " << det(A, row) << endl;

	return 0;
}

void load(const char* file, double** &data, int &row, int &collum)
{
	ifstream fs(file);
	fs >> row >> collum;

	data = new double*[row];
	for (int i = 0; i < row; i++)
	{
		data[i] = new double[collum];
		for (int j = 0; j < collum; j++)
			fs >> data[i][j];
	}

	fs.close();
}

void print(double **A, int row, int collum)
{
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < collum; j++)
			output << A[i][j] << " ";
		output << endl;
	}
	output << endl;
}

double det(double** A, int size)
{
	if (size == 1)
		return A[0][0];
	else if (size == 2)
		return A[0][0] * A[1][1] - A[0][1] * A[1][0];

	double b, result = 1;
	int i, j, k;

	for (i = 0; i < size; i++)
	{
		for (j = i + 1; j < size; j++)
		{
			if (A[i][i] == 0)
			{
				if (A[i][j] == 0)
					b = 0;
				else
					return 0;
			}
			else 
				b = A[j][i] / A[i][i];
			for (k = i; k < size; k++)
				A[j][k] = A[j][k] - A[i][k] * b;
		}
		result *= A[i][i];
	}

	return result;
}