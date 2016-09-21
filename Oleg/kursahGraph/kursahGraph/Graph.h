#pragma once
#include <iostream>
#include <vector>

#define inf 999999

using namespace std;

class Graph
{
	vector<vector<int>> conects;
	vector<string> points;

public:

	void print()
	{
		for (auto i = points.begin(); i != points.end(); i++)
		{
			cout << '[' << *i << "] -> ";

			int d = distance(points.begin(), i);
			for (auto j = conects[d].begin(); j != conects[d].end(); j++)
			{
				if (*j != inf)
				{
					int d2 = distance(conects[d].begin(), j);
					cout << points[d2] << '[' << *j << "] ";
				}
			}
			cout << endl;
		}
		cout << endl;
	}

	bool find(string value)
	{
		for (auto i = points.begin(); i != points.end(); i++)
		{
			if (*i == value)
				return true;
		}
		return false;
	}

	void add(string value)
	{
		if (!find(value))
		{
			points.push_back(value);

			for (auto i = conects.begin(); i != conects.end(); i++)
				i->push_back(inf);

			vector<int> newLine;
			newLine.resize(points.size(), inf);
			conects.push_back(newLine);
		}
		else
			cout << "Error: city found" << endl;
	}

	void remove(string value)
	{
		for (auto i = points.begin(); i != points.end(); i++)
		{
			if (*i != value)
				continue;

			int d = distance(points.begin(), i);
			conects.erase(conects.begin() + d);

			for (auto j = conects.begin(); j != conects.end(); j++)
				j->erase(j->begin() + d);

			points.erase(i);
			return;
		}
		cout << "Error: city not found" << endl;
	}

	void connect(string a, string b, int w)
	{
		int i1 = -1, i2 = -1;
		for (auto i = points.begin(); i != points.end(); i++)
		{
			if (*i == a)
				i1 = distance(points.begin(), i);
			if (*i == b)
				i2 = distance(points.begin(), i);

			if (i1 != -1 && i2 != -1)
				break;
		}

		if (i1 != -1 && i2 != -1)
		{
			conects[i1][i2] = w;
			conects[i2][i1] = w;
		}
		else
			cout << "Error: city not found" << endl;
	}

	void disconect(string a, string b)
	{
		connect(a, b, inf);
	}

	void findPath(string a, string b)
	{
		int n = points.size();
		int i1 = -1, i2 = -1;

		for (auto i = points.begin(); i != points.end(); i++)
		{
			if (*i == a)
				i1 = distance(points.begin(), i);
			if (*i == b)
				i2 = distance(points.begin(), i);

			if (i1 != -1 && i2 != -1)
				break;
		}

		if (i1 == -1 || i2 == -1)
		{
			cout << "Error: city not found" << endl;
			return;
		}

		int** d = new int*[n];
		int** par = new int*[n];
		for (int i = 0; i < n; ++i)
		{
			d[i] = new int[n];
			par[i] = new int[n];
			for (int j = 0; j < n; ++j)
			{
				d[i][j] = conects[i][j];
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
			cout << "Distance = " << d[i1][i2] << "km" << endl << "Way: ";

			int v = i1;
			while (v != i2)
			{
				cout << points[v] << " -> ";
				v = par[i2][v];
			}
			cout << points[i2] << endl;
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