#include <iostream>
#include <vector>
#include <string>
#include <sstream>
#include "Graph.h"

using namespace std;

string get(vector<string> &argv, int index, const string readText);
vector<string> splitSting(string base);

void showHelp()
{
	cout << "Command:" << endl;
	cout << " map\tshow graph" << endl;
	cout << " add\tcreate new ñity" << endl;
	cout << " con\tcreate connect" << endl;
	cout << " dcon\tremove connect" << endl;
	cout << " del\tremove ñity" << endl;
	cout << " go\tfind path in A to B" << endl;
	cout << " exit\texit in the program" << endl;
}

int main()
{
	Graph graph;

	graph.add("Moscow");
	graph.add("SPB");
	graph.add("Rostov");

	graph.connect("Moscow", "SPB", 700);
	graph.connect("Moscow", "Rostov", 1100);

	graph.print();
	graph.findPath("Rostov", "SPB");
	cout << endl;

	showHelp();
	cout << endl;

	string cmd = "";
	while (cmd != "exit")
	{
		getline(cin, cmd, '\n');
		auto argv = splitSting(cmd);

		cmd = get(argv, 0, "");

		if (cmd == "map")
		{
			graph.print();
			cout << endl;
		}
		else if (cmd == "add")
		{
			graph.add(get(argv, 1, "Enter new value: "));
			graph.print();
		}
		else if (cmd == "con")
		{
			string a = get(argv, 1, "Enter value in: ");
			string b = get(argv, 2, "Enter value to: ");
			int w = atoi(get(argv, 3, "Enter weight: ").c_str());
			graph.connect(a, b, w);
			graph.print();
		}
		else if (cmd == "dcon")
		{
			string a = get(argv, 1, "Enter value in: ");
			string b = get(argv, 2, "Enter value to: ");
			graph.disconect(a, b);
			graph.print();
		}
		else if (cmd == "go")
		{
			string a = get(argv, 1, "Enter value in: ");
			string b = get(argv, 2, "Enter value to: ");
			graph.findPath(a, b);
		}
		else if (cmd == "del")
		{
			graph.remove(get(argv, 1, "Enter target value: "));
			graph.print();
		}
		else if (cmd == "help")
			showHelp();
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