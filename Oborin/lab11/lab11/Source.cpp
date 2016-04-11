#include <string>
#include <iostream>

using namespace std;
#define HashType char
#define TableSize (((size_t)1) << (sizeof(HashType) * 8))

struct Aboniment
{
	short id;
	string fio, adress;

	Aboniment(short id, string fio, string adress)
	{
		this->id = id;
		this->fio = fio;
		this->adress = adress;
	}

	HashType getHash() const
	{
		return (id % 256 + fio.size() + adress.size() * 10) % 256;
	}
};

ostream& operator <<(ostream& f, const Aboniment& a)
{
	f << a.id << '\t' << a.fio << '\t' << a.adress;
	return f;
}

template<class T>
struct HashTable
{
	T* memory[TableSize];
	signed HashType offests[TableSize];

	HashTable()
	{
		memset(memory, 0, sizeof(memory));
		memset(offests, 0, sizeof(offests));
	}
};

template<class T>
class Dictionary
{
	HashTable<T> table;
public:
	Dictionary() {}

	void add(T* item)
	{
		HashType currentHash = item->getHash();
		HashType baseHash = currentHash;

		bool flag = currentHash == 0;

		while (table.memory[currentHash])
		{
			currentHash += currentHash - baseHash;
			if (currentHash == TableSize)
			{
				if (flag)
				{
					cout << "Dictionary is full." << endl;
					return;
				}
				flag = true;
				currentHash = 0;
			}
		}
		table.memory[currentHash] = item;
		table.offests[currentHash] = currentHash - baseHash;
	}

	void print() const
	{
		for (int i = 0; i < TableSize; i++)
		{
			if (table.memory[i])
				cout << '[' << i - table.offests[i] << "] = " << *table.memory[i] << endl;
		}
	}

	void remove(T* obj, bool freeMemory = true)
	{
		remove(obj->getHash(), freeMemory);
	}

	void remove(HashType hash, bool freeMemory = true)
	{
		for (int i = 0; i < TableSize; i++)
		{
			if (table.memory[i] && table.offests[i] == i - hash)
			{
				if (freeMemory)
					delete table.memory[i];
				table.memory[i] = 0;
				table.offests[i] = 0;
			}
		}
	}

	T* operator [](HashType hash) const
	{
		int offest = 0;
		while (table.offests[hash + offest] != offest) 
		{
			offest++;
			if (offest > TableSize)
				offest = -hash;
		}

		return table.memory[hash + offest];
	}
};

int main()
{
	Dictionary<Aboniment> table;

	Aboniment* a = new Aboniment(322, "solo", "feed");
	Aboniment* b = new Aboniment(229, "wedmki", "999666");
	Aboniment* c = new Aboniment(231, "wedm", "999666");
	Aboniment* d = new Aboniment(228, "papich", "123123");

	table.add(a);
	table.add(c);
	table.add(d);
	table.add(b);

	cout << "Dictionary:" << endl;
	table.print();

	cout << endl;
	cout << "get '" << (int)a->getHash() << "'\t = " << *table[a->getHash()] << endl;
	cout << "get '" << (int)b->getHash() << "'\t = " << *table[b->getHash()] << endl;

	cout << endl;
	cout << "Remove '" << (int)c->getHash() << '\'' << endl;
	table.remove(c);
	cout << "Dictionary:" << endl;
	table.print();

	system("pause");
	return EXIT_SUCCESS;
}