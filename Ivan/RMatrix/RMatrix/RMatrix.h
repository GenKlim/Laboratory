#pragma once
#include <stdlib.h>
#include <string>
#include <iostream>

using namespace std;

/*
	����� �������. ��� �������� - int

	�� ������� ������ �������� � ����������� �������
		�������� ���� �������:
			0 0 1 2 0 1
			5 0 0 0 0 0
			0 0 0 0 0 0
			0 6 0 0 0 8

		��� ��� � rows ����� �����:
			rows[0] = (1, 2), (2, 3), (1, 5)
			rows[1] = (5, 0)
			rows[2] = 0
			rows[3] = (6,1), (6,5)

	��� ����������� �-�� ����� ������ ���� ������� �������� ������
*/

class RMatrix
{
	struct List//����������� ������, ����� ��� �������� �� ������� �����
	{
		List* next;//��������� ������� ������
		int value;//�������� ������
		size_t position;//������� ������

		List(const List&);//����������� �����������
		List(int, size_t);//������� �����������
		~List();//����������
	};

	size_t w, h;//������� �-��
	List** rows;//������ � ������������ ��������
public:
	RMatrix(const RMatrix&);//����������� �����������
	RMatrix(size_t w, size_t h);//������� �����������
	~RMatrix();//����������

	void print() const;//�������� �� �������
	int get(size_t i, size_t j) const;//�������� ������� �� ��������
	void set(size_t i, size_t j, int value);//������������� �������� �� ��������
	void clear();//��������� ������� ������
	RMatrix operator+(const RMatrix& B) const;//���������� ����� �-��, ����� ������ �-�� � �-�� B
	RMatrix operator-(const RMatrix& B) const;//���������� ����� �-��, �������� ������ �-�� � �-�� B
	RMatrix operator*(const RMatrix& B) const;//���������� ����� �-��, ��������� ��������� ������ �-�� � �-�� B
	size_t getHeight();//������ ���������� �����
	size_t getWidth();//������ ���������� ��������
	size_t getMemorySize() const;//������ ������������� ���������� ����������� ������
};