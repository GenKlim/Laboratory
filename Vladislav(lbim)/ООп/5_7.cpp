#include <iostream>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <istream>

using namespace std;

template <class T> class vector
{
	int size;
	T *data;
public:
	vector()
	{
		data = new T[0];
		size = 0;
	}

	~vector()
	{
		delete data;
	}

	void print()
	{
		for (int i = 0; i < size; i++)
			cout << data[i] << ' ';
		cout << endl;
	}

	void run()
	{
		for (int i = 0; i < size; i++)
			cout << data[i] * (i+1) << ' ';
		cout << endl;
	}

	T operator[](int index)
	{
		if (index >= size)
			cout << "Warning: index out of array.";

		return data[index];
	}

	void add(T item)
	{
		T* newData = new T[size + 1];

		for (int i = 0; i < size; i++)
			newData[i] = data[i];

		newData[size++] = item;

		delete data;
		data = newData;
	}
};

int main(int argc, char* argv[])
{
	vector<int> integerMass;
	integerMass.add(1);
	integerMass.add(2);
	integerMass.add(3);
	integerMass.add(4);

	cout << "Integer vector:" << endl;
	integerMass.print();
	integerMass.run();

	vector<double> doubleMass;
	doubleMass.add(1.95);
	doubleMass.add(0.1);
	doubleMass.add(2.28);
	doubleMass.add(3.71);

	cout << endl << "Real vector:" << endl;
	doubleMass.print();
	doubleMass.run();
	
	system("pause");
	return 0;
}
