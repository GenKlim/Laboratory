#define _CRT_NONSTDC_NO_DEPRECATE
#include "iostream"
#include "string"
#include "conio.h"

using namespace std;

struct Node
{
	int yer, saleYer;
	string marka, country;
	Node* next;

	Node(bool read = true);
};

Node::Node(bool read)
{
	if (!read)
		return;

	cout << "������� �����, ������, ��� �������:" << endl;
	cin >> marka >> country >> yer;
	saleYer = 0;
}

Node* insert(Node* index, bool read = true);
Node* addRandom(Node* index);
Node* removeSale(Node* index);
Node* sort(Node* index);
void setSale(Node* index);
void print(Node* index);

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	Node* list = 0;

	cout << "1. �������� ������" << endl;
	cout << "2. �������� ������� � ������ ������" << endl;
	cout << "3. �������� 10 ��������� �������" << endl;
	cout << "4. ���������� ���� ������� ����������" << endl;
	cout << "5. ������� ��� ���� �� ��������� �����������" << endl;
	cout << "6. ����������� ������ ���, ����� ���� ���� ����������� �� ������ ������������" << endl;
	cout << "0. �����" << endl << endl;

	while (true)
	{
		switch (getch())
		{
		case '1':
			print(list);
			break;
		case '2':
			list = insert(list);
			print(list);
			break;
		case '3':
			list = addRandom(list);
			print(list);
			break;
		case '4':
			setSale(list);
			break;
		case '5':
			list = removeSale(list);
			print(list);
			break;
		case '6':
			list = sort(list);
			list = sort(list);
			print(list);
			break;
		case '0':
			return 0;
		}
	}
	return 0;
}

Node* insert(Node* index, bool read)
{
	Node* n = new Node(read);
	n->next = index;
	return n;
}

void print(Node* index)
{
	if (!index)
	{
		cout << "������ ����" << endl;
		return;
	}
	cout << "�����\t������\t���\t��� �������" << endl;
	while (index)
	{
		cout << index->marka << '\t' << index->country << '\t' << index->yer << '\t';
		if (index->saleYer)
			cout << index->saleYer;
		else
			cout << "N/A";
		cout << endl;
		index = index->next;
	}
}

Node* addRandom(Node* index)
{
	for (int i = 0; i < 10; i++)
	{
		index = insert(index, false);

		switch (rand() % 4)
		{
		case 0:
			index->marka = "BMV";
			break;
		case 1:
			index->marka = "KIA";
			break;
		case 2:
			index->marka = "Volvo";
			break;
		case 3:
			index->marka = "Lada";
			break;
		}

		switch (rand() % 3)
		{
		case 0:
			index->country = "Russia";
			break;
		case 1:
			index->country = "China";
			break;
		case 2:
			index->country = "Germany";
			break;
		}

		index->yer = 1995 + rand() % 20;
		index->saleYer = !(rand() % 7) ? 2015 : 0;
	}
	return index;
}

Node* sort(Node* index)
{
	for (Node* i = index; i; i = i->next)
	{
		for (Node* j = i; j && j->next; j = j->next)
		{
			if (j->country < j->next->country)
			{
				Node temp(false);
				temp.country = j->next->country;
				temp.marka = j->next->marka;
				temp.yer = j->next->yer;

				j->next->country = j->country;
				j->next->marka = j->marka;
				j->next->yer = j->yer;

				j->country = temp.country;
				j->marka = temp.marka;
				j->yer = temp.yer;
			}
		}
	}

	return index;
}

Node* removeSale(Node* index)
{
	Node* temp;
	while (index && index->saleYer)
	{
		temp = index->next;
		delete index;
		index = temp;
	}

	Node* old = index;
	temp = index->next;

	while (temp)
	{
		if (temp->saleYer)
		{
			old->next = temp->next;
			delete temp;
			temp = old;
		}
		else
		{
			old = temp;
			temp = temp->next;
		}
	}

	return index;
}

void setSale(Node * index)
{
	int yer, saleYer;
	string marka, country;

	cout << "������� �����, ������, ��� �������:" << endl;
	cin >> marka >> country >> yer;

	while (index)
	{
		if (index->marka == marka &&index->country == country &&index->yer == yer)
		{
			cout << "������� ��� �������:" << endl;
			cin >> index->saleYer;
			return;
		}
		else
			index = index->next;
	}
	cout << "������ �� �������." << endl;
}