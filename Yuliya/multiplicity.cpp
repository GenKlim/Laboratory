#include <fstream> 
#include <iostream> 

using namespace std;
ofstream output("output.txt");

void load(const char*, int* &, int &);
bool contains(int*, int, int);
void addition(int*, int, int*, int, int*&, int&);
void intersection(int*, int, int*, int, int*&, int&);
void subtraction(int*, int, int*, int, int*&, int&);
void print(int*, int);

int main(int argc, char* argv[])
{
	int* A, sizeA;
	int* B, sizeB;
	int* AB, sizeAB;
	int* AiB, sizeAiB;
	int* AsB, sizeAsB;

	load("input1.txt", A, sizeA);
	load("input2.txt", B, sizeB);

	addition(A, sizeA, B, sizeB, AB, sizeAB);
	intersection(A, sizeA, B, sizeB, AiB, sizeAiB);
	subtraction(A, sizeA, B, sizeB, AsB, sizeAsB);

	output << "A = ";
	print(A, sizeA);
	output << "B = ";
	print(B, sizeB);
	output << endl << "A + B = ";
	print(AB, sizeAB);
	output << "A - B = ";
	print(AsB, sizeAsB);
	output << "A & B = ";
	print(AiB, sizeAiB);

	return 0;
}

void load(const char* file, int* &data, int &size)
{
	ifstream fs(file);
	fs >> size;

	data = new int[size];
	for (int i = 0; i < size; i++)
		fs >> data[i];

	fs.close();
}

bool contains(int* A, int size, int element)
{
	for (int i = 0; i < size; i++)
	{
		if (A[i] == element)
			return true;
	}
	return false;
}

void addition(int* A, int sizeA, int* B, int sizeB, int* &C, int &sizeC)
{
	int* temp = new int[sizeB];
	sizeC = 0;

	for (int i = 0; i < sizeB; i++)
	{
		if (!contains(A, sizeA, B[i]))
			temp[sizeC++] = B[i];
	}

	sizeC += sizeA;
	C = new int[sizeC];

	for (int i = 0; i < sizeC; i++)
	{
		if (i < sizeA)
			C[i] = A[i];
		else
			C[i] = temp[i - sizeA];
	}

	delete[] temp;
}

void intersection(int* A, int sizeA, int* B, int sizeB, int* &C, int &sizeC)
{
	int sizeTemp = sizeB < sizeA ? sizeB : sizeA;
	int* temp = new int[sizeTemp];
	sizeC = 0;

	for (int i = 0; i < sizeB; i++)
	{
		if (contains(A, sizeA, B[i]))
			temp[sizeC++] = B[i];
	}

	C = new int[sizeC];
	for (int i = 0; i < sizeC; i++)
		C[i] = temp[i];

	delete[] temp;
}

void subtraction(int* A, int sizeA, int* B, int sizeB, int* &C, int &sizeC)
{
	int sizeTemp = sizeB > sizeA ? sizeB : sizeA;
	int* temp = new int[sizeTemp];
	sizeC = 0;

	for (int i = 0; i < sizeA; i++)
	{
		if (!contains(B, sizeB, A[i]))
			temp[sizeC++] = A[i];
	}

	C = new int[sizeC];
	for (int i = 0; i < sizeC; i++)
		C[i] = temp[i];

	delete[] temp;
}

void print(int* A, int size)
{
	for (int i = 0; i < size; i++)
		output << A[i] << ' ';
	output << endl;
}