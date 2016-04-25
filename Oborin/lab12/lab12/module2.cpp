#include "module2.h"
#include "assert.h"

namespace module2
{
	void createInText(string dist, string source)
	{
		ofstream fout(dist.c_str(), ios::binary | ios::out);
		ifstream fin(source.c_str(), ios::in);
		cout << "Create binary file '" << dist << "'" << endl;

		item i;
		i.key = 1;

		while (!fin.eof())
		{
			fin >> i.id >> i.fio >> i.adress;
			if (!fin.eof())
			{
				fout.write((char *)&i, sizeof(item));
				i.key++;
			}
		}

		fout.close();
		fin.close();
	}

	void print(string source)
	{
		cout << "File '" << source << "':" << endl;
		ifstream fin(source.c_str(), ios::binary | ios::in);
		item i;

		while (fin.read((char *)&i, sizeof(item)))
			cout << i.key << ' ' << i.fio << ' ' << i.adress << endl;

		fin.close();
	}

	void append(string source, item value)
	{
		ofstream fout;
		fout.open(source.c_str(), ios::out | ios::app | ios::binary);
		fout.write((char *)&value, sizeof(item));
		fout.close();
		cout << "Append file '" << source << "' " << value.id << endl;
	}

	void change(string source, int dist, string newFio)
	{
		fstream fs(source.c_str(), ios::binary | ios::out | ios::in);
		item r;

		fs.seekg(dist*sizeof(item), ios::beg);
		fs.read((char*)&r, sizeof(item));
		fs.seekg(-(signed)sizeof(item), ios::cur);

		strcpy_s(r.fio, newFio.c_str());
		fs.write((char *)&r, sizeof(item));
		fs.close();
		cout << "File '" << source << "' update " << dist << " item (FIO = " << newFio << ")" << endl;
	}
}