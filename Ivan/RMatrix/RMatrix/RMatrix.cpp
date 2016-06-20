#include "RMatrix.h"

//�������� ������� � ������������ ����� (RMatrix.h)

RMatrix::RMatrix(size_t w, size_t h)
{
	this->h = h;
	this->w = w;
	rows = new List*[h];//���������� ������ ������ (��� �������� �-�� �������)
	for (size_t i = 0; i < h; i++)
		rows[i] = 0;
}

RMatrix::RMatrix(const RMatrix& base)
{
	w = base.w;//�������� �������
	h = base.h;
	rows = new List*[h];//������� ����� ������
	for (size_t i = 0; i < h; i++)//�������� ��� �� ������� ������
		rows[i] = base.rows[i] ? new List(*base.rows[i]) : 0;
}

void RMatrix::print() const
{
	//������ �������� �� �������
	for (size_t i = 0; i < h; i++)
	{
		for (size_t j = 0; j < w; j++)
			cout << get(i, j) << ' ';
		cout << endl;
	}
}

int RMatrix::get(size_t i, size_t j) const
{
	if (i >= h || j >= w)
		throw "Index out of range";//����������, ���� ������� �������� �� �������

	List* root = rows[i];//������ (������ �������) ������
	if (root)//���� ������ �� �������
	{
		while (root && root->position < j)//���� �� ����� �� ����� � ������ �������� ������ j
			root = root->next;//��������� ������ �� ������
		if (root && root->position == j)//���� �� ����� �� ����� � ������ ����� j
			return root->value;
	}
	return 0;
}

void RMatrix::set(size_t i, size_t j, int value)
{
	if (i >= h || j >= w)
		throw "Index out of range";//����������, ���� ������� �������� �� �������

	List* root = rows[i];//������ (������ �������) ������
	if (root)//���� ������ �� �������
	{
		List* old = 0;//��������� �� ����, �������������� root
		while (root && root->position < j)//���� �� ����� �� ����� � ������ �������� ������ j
		{
			old = root;//����������
			root = root->next;//��������� ������ �� ������
		}

		if (root && root->position == j)//���� �� ����� �� ����� � ������ ����� j
		{
			if (value)//���� ��������������� �������� �� ����
				root->value = value;//��������� ���
			else//����� ������ ����
			{
				if (old)//� ������� �� ���� �������������� ����, ���� �� ����
					old->next = root->next;
				else//����� ��� ������ ������, ������� �� � ������� rows
					rows[i] = root->next;
				delete root;
			}
		}
		else//���� ����� �� �����
		{
			List* nList = new List(value, j);//������� ����� ����
			nList->next = root;//��������� ��� ����� root
			if (old)//� ������� �� ���� �������������� ����, ���� �� ����
				old->next = nList;
			else//����� ��� ������ ������, ������� �� � ������� rows
				rows[i] = nList;
		}
	}
	else if (value)//���� ������������� �� ���� �� ������� ����� ������ �� 1-�� ��������
		rows[i] = new List(value, j);
	//����� ��� ��� ����� ����
}

RMatrix RMatrix::operator+(const RMatrix& b) const
{
	if (h != b.h || w != b.w)
		throw "Sizes not equal";//����������, ������� �-�� �� �����

	RMatrix mtx(w, h);//����� �-��
	for (size_t i = 0; i < h; i++)
	{
		for (size_t j = 0; j < w; j++)
			mtx.set(i, j, get(i, j) + b.get(i, j));//������ ���������� 
	}

	return mtx;
}

RMatrix RMatrix::operator-(const RMatrix& b) const
{
	if (h != b.h || w != b.w)//��� ��� �����, ��� � ��� ��������
		throw "Sizes not equal";

	RMatrix mtx(w, h);
	for (size_t i = 0; i < h; i++)
	{
		for (size_t j = 0; j < w; j++)
			mtx.set(i, j, get(i, j) - b.get(i, j));
	}

	return mtx;
}

RMatrix RMatrix::operator*(const RMatrix& b) const
{
	if (w != b.h)//����������, ��� �-�� ������ ��������
		throw "Invalid sizes";

	RMatrix mtx(h, b.w);//����� �-��
	for (size_t i = 0; i < h; i++)
	{
		for (size_t j = 0; j < b.w; j++)
		{
			int sm = 0;//����������� ������ �� �������
			for (size_t k = 0; k < w; k++)
				sm += get(i, k) * b.get(k, j);
			mtx.set(i, j, sm);
		}
	}

	return mtx;
}

void RMatrix::clear()
{
	//������� �� ������� ������
	for (size_t i = 0; i < h; i++)
	{
		if (rows[i])
		{
			delete rows[i];
			rows[i] = 0;
		}
	}
}

size_t RMatrix::getMemorySize() const
{
	//������� �� �������:
	// sizeof(this) + h*sizeof(List*) + n*sizeof(List)
	// ��� n - ���-�� �� ������� ���������

	size_t size = sizeof(this) + h*sizeof(List*);
	for (size_t i = 0; i < h; i++)
	{
		if (rows[i])
		{
			List* root = rows[i];
			while (root)
			{
				root = root->next;
				size += sizeof(List);
			}
		}
	}
	return size;
}

size_t RMatrix::getHeight()
{
	return h;
}

size_t RMatrix::getWidth()
{
	return w;
}

RMatrix::~RMatrix()
{
	clear();//������ ������ � ������� ���
	delete[] rows;
}

RMatrix::List::List(const List& base)
{
	value = base.value;//�������� ������
	position = base.position;
	next = base.next ? new List(*base.next) : 0;//�������� ��������� �������, ���� �� ����
}

RMatrix::List::List(int val, size_t pos)
{
	next = 0;
	value = val;
	position = pos;
}

RMatrix::List::~List()
{
	if (next)
		delete next;
}
