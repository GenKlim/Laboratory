#include <iostream>
#include <stdio.h>
#include <string>
#include <fstream>
#include <time.h>  
#include <vector>
#include "HashTable.h"
#include "BinTree.h"

/*—равнение алгоритмов поиска, основанных на бинарном дереве поиска и на хеш-таблице, в файле данных.*/

using namespace std;

#define DATA_FILE "data.txt"//файлй данных
#define FIND_COUNT 500000	//кол-во тестов
#define TEST_COUNT 20		//кол-во повторов теста
							//чем они больше, тем точнее будет результат

#define getClock clock()/(double)CLOCKS_PER_SEC	//нужно дл€ измерени€ времени

struct Persone//—труктура данных, они записанны в файле
{
	int id;//ƒанные
	string name;
	int date;

	size_t getHash() { return id^date; } // вычисление хеша
	bool operator <(const Persone& b) { return id < b.id; }//Ёти операторы нужны дереву
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

	//„итаем из файла все данные и распихиваем их по структурам
	while (!fs.eof())
	{
		Persone* p = new Persone();
		fs >> p->id >> p->date >> p->name;

		table.add(p);
		tree.add(p);
		persones.push_back(p);
	}

	fs.close();
	
	// оличество пам€ти, занимаемое структурой (без учета пам€ти, занимаемой данными)
	cout << "Hash table weight:\t" << table.getMemorySize() << " byte" << endl;
	cout << "Tree weight:\t\t" << tree.getMemorySize() << " byte" << endl << endl;

	cout << "Please wait, speed testing..." << endl << endl;

	double totalHash = 0;
	double totalTree = 0;

	// ѕовтор€ем тесты TEST_COUNT раз, в каждый раз выбира€ случайную запись
	for (size_t j = 0; j < TEST_COUNT; j++)
	{
		Persone* testPersone = persones[rand() % persones.size()];

		// ¬ каждом тесте FIND_COUNT раз выполн€ем поиск в дереве и таблици

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

	// ƒелим на количество опреций поиска, дл€ нахождени€ среднего времени одного вызова
	totalHash /= TEST_COUNT * FIND_COUNT;
	totalTree /= TEST_COUNT * FIND_COUNT;
	double t = totalTree/ totalHash; //Hash table в t раз быстрей

	cout << "Average find time in hash table:\t" << totalHash << endl;
	cout << "Average find time in tree:\t\t" << totalTree << endl << endl;
	cout << "Hash table " << t << " times faster tree" << endl;
	
	return 0;
}