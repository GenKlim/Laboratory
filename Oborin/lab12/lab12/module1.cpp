#include "module1.h"

namespace module1
{
	void create(string dist)
	{
		ofstream fout;
		fout.open(dist.c_str(), ios::out | ios::trunc);

		cout << "Create text file '" << dist << "'" << endl;
		for (int x = 0; x < 10; x++)
			fout << x + 1 << endl;

		fout.close();
	}

	void print(string source)
	{
		ifstream fin(source.c_str(), ios::in);
		int y;

		cout << "File '" << source << "':" << endl;
		while (!fin.eof())
		{
			fin >> y;
			if (!fin.eof())
			{
				cout << y << ", ";
				fin.get();
			}
		}
		cout << "\b\b " << endl;

		fin.close();
	}

	void append(string source, int value)
	{
		ofstream fout(source.c_str(), ios::out | ios::app);
		fout << value << endl;
		fout.close();
		cout << "Append file '" << source << "' " << value << endl;
	}

	void copyDiv7(string dist, string source)
	{
		ofstream fout(dist.c_str(), ios::out | ios::trunc);
		ifstream fin(source.c_str(), ios::in);
		int y, count = 0;

		while (!fin.eof())
		{
			fin >> y;
			if (!fin.eof())
			{
				fin.get();
				if (y % 7 == 0)
				{
					fout << y << endl;
					count++;
				}
			}
		}

		fout.close();
		fin.close();

		cout << "Copy in '" << source << "' to '" << dist << "' " << count << " items" << endl;
	}
}