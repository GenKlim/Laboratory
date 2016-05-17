#include "TreeBR.h"
#include <vector>
#include <string>
#include <sstream>

string getOrRead(vector<string> &argv, int index, const string readText);
int getOrReadInt(vector<string> &argv, int index, const string readText);
vector<string> splitSting(string base);

int main()
{
	TreeBR tree;
	for (int i = 0; i < 3; i++)
		tree.add(i);

	tree.print();
	cout << endl;

	string cmd;
	while (cmd != "exit")
	{
		getline(cin, cmd, '\n');
		auto argv = splitSting(cmd);

		cmd = getOrRead(argv, 0, "Enter command ('help' for show command list)\n");

		if (cmd == "print")
		{
			tree.print();
			cout << endl;
		}
		else if (cmd == "add")
		{
			int value = getOrReadInt(argv, 1, "Enter new value: ");
			tree.add(value);
			if (!tree.stepByStep)
				tree.print();
		}
		else if (cmd == "find")
		{
			int value = getOrReadInt(argv, 1, "Enter find value: ");
			Node* n = tree.find(value);
			if (n)
				cout << "Node adress " << n << endl;
			else
				cout << "Node not found" << endl;
		}
		else if (cmd == "del")
		{
			int index = getOrReadInt(argv, 1, "Enter target value: ");
			tree.remove(index);
			tree.print();
		}
		else if (cmd == "step")
		{
			tree.stepByStep = !tree.stepByStep;
			cout << "Step by step mode " << (tree.stepByStep ? "active" : "disabled") << endl;
		}
		else if (cmd == "help")
		{
			cout << "All command:" << endl;
			cout << " exit" << endl;
			cout << " add" << endl;
			cout << " print" << endl;
			cout << " del" << endl;
			cout << " find" << endl;
			cout << " step" << endl;
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

int getOrReadInt(vector<string> &argv, int index, const string readText)
{
	string result = getOrRead(argv, index, readText);
	return atoi(result.c_str());
}

string getOrRead(vector<string> &argv, int index, const string readText)
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