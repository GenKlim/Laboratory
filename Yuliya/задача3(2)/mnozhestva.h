#pragma once
#include <iostream>
#include <fstream>
class mnozhestva
{
private:
	unsigned int count;//���������� ���������
	unsigned int* mass;//��������
	friend std::ostream &operator<<(std::ostream &, mnozhestva &);
	//friend std::istream &operator>>(std::istream &, mnozhestva &); ����� �-�� ���
public:
	mnozhestva(){ count = 0; mass = new unsigned int[count]; };
	mnozhestva(unsigned int, unsigned int*);	
	mnozhestva(const mnozhestva&);

	// ��� "mnozhestva::" ����� �� ������
	void mnozhestva::Enter(); // ����
	void Show(); // �����
	void community(mnozhestva, mnozhestva);//�����������
	void intersection(mnozhestva, mnozhestva);//�����������
	void difference(mnozhestva, mnozhestva);//��������
	bool check(int);//��� ������� �������
	void ADD(int);//��� ������� �������
	void deletion();
	~mnozhestva();
};