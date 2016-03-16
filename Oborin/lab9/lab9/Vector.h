#pragma once
#include <iostream>

template<typename T>
class vector
{
	size_t size;
	size_t memorySize;
	T* memory;
public:
	vector(const vector<T> &base)
	{
		size = 0;
		memory = 0;
		resize(base.memorySize);

		while (size < base.size)
			memory[size] = base.memory[size++];
	}

	vector(size_t size = 8)
	{
		memory = 0;
		this->size = 0;
		resize(size);
	}

	~vector()
	{
		delete[] memory;
	}

	T& operator [](size_t index)
	{
		if (size <= index)
			throw std::exception("index > vector size");
		return memory[index];
	}

	vector<T> operator +(vector<T> &b) const
	{
		vector<T> v = vector<T>(size + b.size);

		while (v.size < size)
			v.memory[v.size] = memory[v.size++];

		while (v.size < size + b.size)
			v.memory[v.size++] = b[v.size - size];

		return v;
	}

	size_t GetSize() const
	{
		return size;
	}

	void addToBack(T item)
	{
		if (size == memorySize)
			resize(memorySize + 8);

		memory[size++] = item;
	}

	void removeBack()
	{
		if (size)
			size--;
	}
private:
	void resize(int newSize)
	{
		T* newMemory = new T[newSize];
		if (memory)
		{
			for (size_t i = 0; i < size; i++)
				newMemory[i] = memory[i];
			delete[] memory;
		}

		memorySize = newSize;
		memory = newMemory;
	}
};

template<typename T>
std::ostream& operator<< (std::ostream &out, vector<T> &vector)
{
	size_t len = vector.GetSize();

	if (len != 0)
	{
		for (size_t i = 0; i < len - 1; i++)
			out << vector[i] << ", ";
		out << vector[len - 1];
	}

	return out;
}