#pragma once

#include <vector>
using namespace std;
#define inf 1000000

class OrGraph
{
	vector<int> elements;
	vector<vector<int>> weights;
public:
	void add(int value)
	{
		if (!find(value))
		{
			elements.push_back(value);
			
			for (auto i = weights.begin(); i != weights.end(); i++)
				i->push_back(inf);

			vector<int> newLine;
			newLine.resize(elements.size(), inf);
			weights.push_back(newLine);
		}
	}

	void remove(int value)
	{
		for (auto i = elements.begin(); i != elements.end(); i++)
		{
			if (*i == value)
			{
				int d = distance(elements.begin(), i);
				weights.erase(weights.begin() + d);
				for (auto j = weights.begin(); j != weights.end(); j++)
					j->erase(j->begin() + d);

				elements.erase(i);
				return;
			}
		}
	}

	void connect(int a, int b, int w)
	{
		int i1 = -1, i2 = -1;
		for (auto i = elements.begin(); i != elements.end(); i++)
		{
			if (*i == a)
				i1 = distance(elements.begin(), i);
			if (*i == b)
				i2 = distance(elements.begin(), i);

			if (i1 != -1 && i2 != -1)
				break;
		}
		
		weights[i1][i2] = w;
	}

	void disconect(int a, int b)
	{
		connect(a, b, inf);
	}

	bool find(int value)
	{
		for (auto i = elements.begin(); i != elements.end(); i++)
		{
			if (*i == value)
				return true;
		}
		return false;
	}

	void print()
	{
		for (auto i = elements.begin(); i != elements.end(); i++)
		{
			cout << '[' << *i << "] -> ";

			int d = distance(elements.begin(), i);
			for (auto j = weights[d].begin(); j != weights[d].end(); j++)
			{
				if (*j != inf)
				{
					int d2 = distance(weights[d].begin(), j);
					cout << elements[d2] << '[' << *j << "] ";
				}
			}
			cout << endl;
		}
	}

	void findPath(int a, int b)
	{
		int n = elements.size();
		int i1 = -1, i2 = -1;

		for (auto i = elements.begin(); i != elements.end(); i++)
		{
			if (*i == a)
				i1 = distance(elements.begin(), i);
			if (*i == b)
				i2 = distance(elements.begin(), i);

			if (i1 != -1 && i2 != -1)
				break;
		}

		int** d = new int*[n];
		int** par = new int*[n];
		for (int i = 0; i < n; ++i)
		{
			d[i] = new int[n];
			par[i] = new int[n];
			for (int j = 0; j < n; ++j)
			{
				d[i][j] = weights[i][j];
				par[i][j] = i;
			}
		}

		for (int k = 0; k < n; ++k)
		{
			for (int i = 0; i < n; ++i)
			{
				for (int j = 0; j < n; ++j)
				{
					if (d[i][j] > d[i][k] + d[k][j])
					{
						d[i][j] = d[i][k] + d[k][j];
						par[i][j] = par[k][j];
					}
				}
			}
		}

		if (d[i1][i2] < inf)
		{
			cout << "Total = " << d[i1][i2] << endl << "Path: ";
			int v = i2;
			while (v != i1)
			{
				cout << elements[v] << " <- ";
				v = par[i1][v];
			}
			cout << elements[i1] << endl;
		}
		else
			cout << "Path not found!" << endl;

		for (int i = 0; i < n; ++i)
		{
			delete[] par[i];
			delete[] d[i];
		}
		delete[] par;
		delete[] d;
	}
};