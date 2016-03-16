#pragma once
#include <iostream>

// ������ �������
// ������ - ����� ������, ������� ����� � ���� ������ ��� ������ � ������� (����������, ��������, � �.�.)

// � ���� ������� �������� ���������� ������, ��� ������ ������ ������ ����� ������� 
// (��� �������� ��� ���������� ������������������ �.�. ������ ����������/�������� �������� � ���������� ������ ������� �������� ������ ������� � ������� �������)
// ��� ���������� � ���� ������ ������� ����������� � ���������� ������ ��� ���� ������ � ������ ����� ����� ������� = ����� ������� ���������� �� ��� ������� ���� 
// ��� �������� �������� ������ ����������� ����� ������� (������ �� ����� ���� �� ���������)

// T - ��� ��� ���� ������� ����� ��������� � ����� ��� �������������
template<typename T>
class vector
{
	size_t useSize, realSize; // ����� ������� � ������� ��������������
	T* array; // ������
public:
	// ����������� �����������, ������� ����������� ����� �������
	vector(const vector<T> &base)
	{
		array = 0;
		useSize = 0;
		resizeArray(base.realSize);

		while (useSize < base.useSize)
			array[useSize] = base.array[useSize++];
	}

	// ����������� (������ �� ��� ��� ���� � ���������� ������ ���: realSize = 16)
	// ������ ��������� �������� ���������� � ������� ������ � �������� ������ 
	vector(size_t realSize = 16)
	{
		array = 0;
		useSize = 0;
		resizeArray(realSize);
	}

	// ���������� ����� �������
	size_t size() const
	{
		return useSize;
	}

	// ��������� ������� � ����� �������
	void push(T item)
	{
		if (useSize == realSize)
			resizeArray(realSize + realSize / 2);

		array[useSize++] = item;
	}

	// ������� ��������� ������� �������
	T pop()
	{
		if (!useSize)
			cout << "Error: vector size = 0." << endl;
		return array[useSize--];
	}

	// �������� �������, ��������� ������ ���:
	// f[1] = 5; // ������ ������� ������� f ����� 5
	T& operator [](size_t index)
	{
		if (useSize <= index)
			cout << "Error: index out of range of vector." << endl;
		return array[index];
	}

	// �������� ��������
	// ���������� ����� ������ ����������� �� ���� (�� ��� ���� �� ��������, ��� � ������ ����� const � �����)
	vector<T> operator +(vector<T> &b) const
	{
		vector<T> v = vector<T>(useSize + b.useSize);

		while (v.useSize < useSize)
			v.array[v.useSize] = array[v.useSize++];

		while (v.useSize < useSize + b.useSize)
			v.array[v.useSize++] = b[v.useSize - useSize];

		return v;
	}

	// ����������, ������� �����
	~vector()
	{
		delete[] array;
	}
private:
	// ������ ����� �������, ������� �����, ������ �������
	void resizeArray(int newSize)
	{
		T* newMemory = new T[newSize];
		if (array)
		{
			for (size_t i = 0; i < useSize; i++)
				newMemory[i] = array[i];
			delete[] array;
		}

		realSize = newSize;
		array = newMemory;
	}
};

// ��������� ��� ������ ������� � ����� ( ����� ��� [0,1,2,3,4] )
template<typename T>
std::ostream& operator<< (std::ostream &out, vector<T> &vector)
{
	size_t len = vector.size();

	out << '[';
	if (len != 0)
	{
		for (size_t i = 0; i < len - 1; i++)
			out << vector[i] << ", ";
		out << vector[len - 1];
	}
	out << ']';

	return out;
}