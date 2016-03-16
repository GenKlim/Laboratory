#pragma once

#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string"

using namespace std;

#ifdef StackTypeArray
struct Stack
{
private:
	double* array;
	int size;
public:
	Stack()
	{
		array = 0;
		size = 0;
	}

	void push(double value)
	{
		double* array2 = new double[size + 1];
		if (size)
		{
			for (int i = 0; i < size; i++)
				array2[i] = array[i];
			delete array;
		}

		array2[size] = value;
		array = array2;
		size++;
	}

	double pop()
	{
		if (!size)
			return 0;

		return array[--size];
	}

	int Size()
	{
		return size;
	}
};
#else
struct StackItem
{
	double value;
	StackItem* back;
};

struct Stack
{
private:
	StackItem* last;
	int size;
public:
	Stack()
	{
		last = 0;
		size = 0;
	}

	void push(double value)
	{
		size++;
		StackItem* n = new StackItem();
		n->value = value;
		n->back = last;
		last = n;
	}

	double pop()
	{
		if (!size)
			return 0;

		StackItem* n = last;
		double c = last->value;
		last = last->back;
		size--;
		delete n;
		return c;
	}

	int Size()
	{
		return size;
	}
};
#endif