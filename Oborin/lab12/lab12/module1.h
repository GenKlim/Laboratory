#pragma once
#include "iostream"
#include "fstream"
#include "string"

using namespace std;

namespace module1
{
	void create(string dist);
	void print(string source);
	void append(string source, int value);
	void copyDiv7(string dist, string source);
}