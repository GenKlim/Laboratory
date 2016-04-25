#pragma once
#include "iostream"
#include "fstream"
#include "string"

using namespace std;

namespace module2
{
	struct item
	{
		int key;
		int id;
		char fio[20];
		char adress[20];
	};

	void createInText(string dist, string source);
	void print(string source);
	void append(string source, item value);
	void change(string source, int dist, string newFio);
}