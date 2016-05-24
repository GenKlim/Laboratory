#pragma once
#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Hafman
{
	struct Code
	{
		short value;
		char size;

		Code() :value(0), size(0) {}
		Code(Code& c) :value(c.value), size(c.size) {}

		Code operator+(char b);
	};

	struct Tree
	{
		char value;
		long count;
		Tree *left = 0, *right = 0;

		Tree(char value=0, long count=0) : count(count), value(value) {}
		~Tree();

		void collapse(Hafman::Code path);
	};
	
	static Code table[256];

	static Tree* makeTree();
	static Tree* makeTree(Hafman::Code code);
	static void makeTable(char* data, long size);
public:
	static void Compress(string input, string output);
	static void Decompress(string input, string output);
};