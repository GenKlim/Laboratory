#include <stdlib.h>
#include <string>
#include <conio.h>
#include <iostream>
#include "RMatrix.h"

using namespace std;

//�-�� ��� ������ ������� ���� � �������, � ������� ���������
template<typename type>
type read(string message)
{
	type result;
	cout << message << ": ";
	cin >> result;
	return result;
}

int main()
{
	setlocale(0, "");

	RMatrix* mtx = new RMatrix(5, 5);//�-��
	while (true)//���� ����
	{
		cout << "1.������� ������� �� �����\n"\
			"2.������� ������ �������\n"\
			"3.��������� ������� � ����������\n"\
			"4.��������� ������� ���������� �������\n"\
			"5.���������� ��������\n"\
			"6.�������� ������\n"\
			"7.�������� ������\n"\
			"8.��������� ������\n"\
			"9.������� ����� ���������� ������\n"\
			"0.�����\n";

		cout << "������� �������: ";
		char c = _getch();
		cout << "\r\t\t\t\t" << endl;//��� ������ ����� "������� �������: "

		switch (c)//����
		{
		case '1':
			mtx->print();
			break;
		case '2':
			delete mtx;//������� ������, ������� ����� �-��
			mtx = new RMatrix(
				read<int>("������� ���������� ��������"),
				read<int>("������� ���������� �����"));
			break;
		case '3':
			delete mtx;//������� ������, ������� ����� �-��
			mtx = new RMatrix(
				read<int>("������� ���������� ��������"),
				read<int>("������� ���������� �����"));

			for (size_t i = 0; i < mtx->getHeight(); i++)//��������� ��������� �-�� 
			{
				cout << "������� " << i + 1 << " ������." << endl;
				for (size_t j = 0; j < mtx->getWidth(); j++)
					mtx->set(i, j, read<int>(""));
			}
			break;
		case '4':
			{
				mtx->clear();//��������� ������
				size_t count = read<size_t>("������� ���������� ���������");

				for (size_t i = 0; i < count; i++)//������ count ��������� �������� (�� 1 �� 100) � ��������� �������
					mtx->set(rand() % mtx->getHeight(), rand() % mtx->getWidth(), 1 + rand() % 99);
			}
			break;
		case '5'://������������� �������� �� �����������
			mtx->set(
				read<size_t>("������� ������ ������"),
				read<size_t>("������� ������ �������"),
				read<int>("������� �������� ������"));
			break;
		case '6':
			cout << "A:" << endl << endl;
			mtx->print();
			cout << "A+A:" << endl;
			(*mtx + *mtx).print();//��������
			break;
		case '7':
			cout << "A:" << endl << endl;
			mtx->print();
			cout << "A-A:" << endl;
			(*mtx - *mtx).print();
			break;
		case '8':
			cout << "A:" << endl << endl;
			mtx->print();
			cout << "A*A:" << endl;
			(*mtx * *mtx).print();//���������
			break;
		case '9':
			cout << mtx->getMemorySize() << " ����" << endl;//���������� ������
			break;
		case '0':
			return EXIT_SUCCESS;//�����
		}

		cout << endl;
	}
}