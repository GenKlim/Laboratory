#include <iostream>
#include <stdio.h>
#include <string>
#include <fstream>
#include <time.h>  
#include <vector>
#include "HashTable.h"
#include "BinTree.h"

/*��������� ���������� ������, ���������� �� �������� ������ ������ � �� ���-�������, � ����� ������.*/

using namespace std;

#define DATA_FILE "data.txt"//����� ������
#define FIND_COUNT 500000	//���-�� ������
#define TEST_COUNT 20		//���-�� �������� �����
							//��� ��� ������, ��� ������ ����� ���������

#define getClock clock()/(double)CLOCKS_PER_SEC	//����� ��� ��������� �������

struct Persone//��������� ������, ��� ��������� � �����
{
	int id;//������
	string name;
	int date;

	size_t getHash() { return id^date; } // ���������� ����
	bool operator <(const Persone& b) { return id < b.id; }//��� ��������� ����� ������
	bool operator >(const Persone& b) { return id > b.id; }
	bool operator ==(const Persone& b) { return id == b.id; }
	bool operator !=(const Persone& b) { return id != b.id; }
};

int main()
{
	ifstream fs;
	HashTable<Persone> table;
	BinTree<Persone> tree;
	vector<Persone*> persones;

	fs.open(DATA_FILE);
	if (!fs.is_open())
	{
		cout << "Data file '" << DATA_FILE << "' not found" << endl;
		return 1;
	}

	//������ �� ����� ��� ������ � ����������� �� �� ����������
	while (!fs.eof())
	{
		Persone* p = new Persone();
		fs >> p->id >> p->date >> p->name;

		table.add(p);
		tree.add(p);
		persones.push_back(p);
	}

	fs.close();
	
	//���������� ������, ���������� ���������� (��� ����� ������, ���������� �������)
	cout << "Hash table weight:\t" << table.getMemorySize() << " byte" << endl;
	cout << "Tree weight:\t\t" << tree.getMemorySize() << " byte" << endl << endl;

	cout << "Please wait, speed testing..." << endl << endl;

	double totalHash = 0;
	double totalTree = 0;

	// ��������� ����� TEST_COUNT ���, � ������ ��� ������� ��������� ������
	for (size_t j = 0; j < TEST_COUNT; j++)
	{
		Persone* testPersone = persones[rand() % persones.size()];

		// � ������ ����� FIND_COUNT ��� ��������� ����� � ������ � �������

		double start1 = getClock;
		for (size_t i = 0; i < FIND_COUNT; i++)
			table.get(testPersone->getHash());
		double stop1 = getClock;

		double start2 = getClock;
		for (size_t i = 0; i < FIND_COUNT; i++)
			tree.find_node(testPersone);
		double stop2 = getClock;

		totalHash += stop1 - start1;
		totalTree += stop2 - start2;
	}

	// ����� �� ���������� ������� ������, ��� ���������� �������� ������� ������ ������
	totalHash /= TEST_COUNT * FIND_COUNT;
	totalTree /= TEST_COUNT * FIND_COUNT;
	double t = totalTree/ totalHash; //Hash table � t ��� �������

	cout << "Average find time in hash table:\t" << totalHash << endl;
	cout << "Average find time in tree:\t\t" << totalTree << endl << endl;
	cout << "Hash table " << t << " times faster tree" << endl;
	
	return 0;
}