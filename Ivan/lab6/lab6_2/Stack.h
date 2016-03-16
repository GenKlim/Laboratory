#pragma once

struct Stack
{
private:
	int *memory;
	int size;
public:
	Stack()
	{
		size = 0;
	}

	void push(int value)
	{
		int* newMemory = new int[size + 1];

		if (size != 0)
		{
			for (int i = 0; i < size; i++)
				newMemory[i] = memory[i];
			delete[] memory;
		}

		newMemory[size] = value;
		size++;

		memory = newMemory;
	}

	int pop()
	{
		if (size == 0)
			return 0;
		return memory[--size];
	}
};