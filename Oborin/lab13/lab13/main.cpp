#include <iostream>
#include <vector>
#include <string>
#include <sstream>
#include "Graph.h"

using namespace std;

string get(vector<string> &argv, int index, const string readText);
int getInt(vector<string> &argv, int index, const string readText);
vector<string> splitSting(string base);

int main()
{
	OrGraph graph;

	string cmd;
	while (cmd != "exit")
	{
		getline(cin, cmd, '\n');
		auto argv = splitSting(cmd);

		cmd = get(argv, 0, "Enter command ('help' for show command list)\n");

		if (cmd == "print")
		{
			graph.print();
			cout << endl;
		}
		else if (cmd == "add")
		{
			graph.add(getInt(argv, 1, "Enter new value: "));
			graph.print();
		}
		else if (cmd == "con")
		{
			int a = getInt(argv, 1, "Enter value in: ");
			int b = getInt(argv, 2, "Enter value to: ");
			int w = getInt(argv, 3, "Enter weight: ");
			graph.connect(a, b, w);
			graph.print();
		}
		else if (cmd == "dcon")
		{
			int a = getInt(argv, 1, "Enter value in: ");
			int b = getInt(argv, 2, "Enter value to: ");
			graph.disconect(a, b);
			graph.print();
		}
		else if (cmd == "find")
		{
			if (graph.find(getInt(argv, 1, "Enter find value: ")))
				cout << "Item found" << endl;
			else
				cout << "Item not found" << endl;
		}
		else if (cmd == "del")
		{
			graph.remove(getInt(argv, 1, "Enter target value: "));
			graph.print();
		}
		else if (cmd == "path")
		{
			int a = getInt(argv, 1, "Enter value in: ");
			int b = getInt(argv, 2, "Enter value to: ");
			graph.findPath(a, b);
		}
		else if (cmd == "help")
		{
			cout << "All command:" << endl;
			cout << " exit" << endl;
			cout << " add" << endl;
			cout << " con" << endl;
			cout << " dcon" << endl;
			cout << " print" << endl;
			cout << " del" << endl;
			cout << " find" << endl;
			cout << " path" << endl;
		}
	}

	return EXIT_SUCCESS;
}


vector<string> splitSting(string base)
{
	vector<string> result;
	istringstream stream(base);
	string tmp;
	while (stream >> tmp)
		result.push_back(tmp);

	return result;
}

int getInt(vector<string> &argv, int index, const string readText)
{
	string result = get(argv, index, readText);
	return atoi(result.c_str());
}

string get(vector<string> &argv, int index, const string readText)
{
	if (argv.size() <= index)
	{
		string read;
		cout << readText;
		getline(cin, read, '\n');
		argv.push_back(read);
	}
	return argv[index];
}