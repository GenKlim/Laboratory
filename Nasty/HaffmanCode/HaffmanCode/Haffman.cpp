#include "Haffman.h"
#include <fstream>
#include <algorithm>

typedef unsigned char byte;

Hafman::Code Hafman::table[256];

void Hafman::Compress(string input, string output)
{
	ifstream ifs(input.c_str(), ios_base::binary);
	if (!ifs.is_open())
		throw "File not found";

	ifs.seekg(0, ios::end);
	long size = (long)ifs.tellg();
	ifs.seekg(0, 0);

	if (!size)
		throw "File is empty";

	char* data = new char[size];
	ifs.read(data, size);
	ifs.close();

	makeTable(data, size);

	char* result = new char[size];
	memset(result, 0, sizeof(result));

	char offest = 0;
	long j = 0;
	for (long i = 0; i < size; i++)
	{
		Code code = table[(byte)data[i]];

		result[j] |= code.value << offest;
		offest += code.size;
		while (offest > 7)
		{
			offest -= 8;
			result[++j] = code.value >> (code.size - offest);
		}
	}
	delete[] data;

	ofstream ofs(output.c_str(), ios_base::binary);

	for (size_t i = 0; i < 256; i++)
	{
		ofs.write(&table[i].size, 1);
		if (table[i].size)
			ofs.write((char*)&table[i].value, sizeof(Code::value));
	}

	ofs.write(&offest, 1);
	ofs.write(result, j + 1);

	float p = (float)size / ofs.tellp();
	cout << size / 1024 << "KB -> " << ofs.tellp()/1024 << "KB (x" << p << ")" << endl;

	ofs.close();

	delete[] result;
}

void Hafman::Decompress(string input, string output)
{
	ifstream ifs(input.c_str(), ios_base::binary);
	if (!ifs.is_open())
		throw "File not found";

	for (size_t i = 0; i < 256; i++)
	{
		ifs.read(&table[i].size, 1);
		if (table[i].size)
			ifs.read((char*)&table[i].value, sizeof(Code::value));
	}
	char overOffest;
	ifs.read(&overOffest, 1);

	long size = (long)ifs.tellg();
	ifs.seekg(0, ios::end);
	size = (long)ifs.tellg() - size;
	ifs.seekg(-size, ios::cur);

	char* data = new char[size];
	ifs.read(data, size);
	ifs.close();

	Tree* root = makeTree();
	Tree* tr = root;

	char* result = new char[size*8];
	int offest = 0;
	long j = 0;
	for (long i = 0; i < size;)
	{
		bool bit = (data[i] & (1 << offest)) != 0;
		offest++;
		if (offest > 7)
		{
			offest -= 8;
			i++;
		}
		tr = bit ? tr->right : tr->left;
		if (!tr->left)
		{
			result[j++] = tr->value;
			tr = root;
			if (i + 1 == size && offest == overOffest)
				break;
		}
	}

	delete[] data;
	delete root;

	ofstream ofs(output.c_str(), ios_base::binary);
	ofs.write(result, j);

	float p = (float)size / ofs.tellp();
	cout << size / 1024 << "KB -> " << ofs.tellp() / 1024 << "KB (x" << p << ")" << endl;

	ofs.close();

	delete[] result;
}

void Hafman::makeTable(char * data, long size)
{
	if (!size)
		return;

	long count_buffer[256];
	memset(count_buffer, 0, sizeof(count_buffer));
	for (long i = 0; i < size; i++)
		count_buffer[(byte)data[i]]++;

	vector<Tree*> ls;
	for (size_t i = 0; i < 256; i++)
	{
		if (count_buffer[(byte)i])
			ls.push_back(new Tree((byte)i, count_buffer[(byte)i]));
	}

	while (ls.size() != 1)
	{
		sort(ls.begin(), ls.end(), [](Tree* i, Tree* j) {return i->count < j->count; });

		Tree* tr = new Tree();
		tr->left = ls[0];
		tr->right = ls[1];
		tr->count = tr->left->count + tr->right->count;
		ls.erase(ls.erase(ls.begin()));
		ls.push_back(tr);
	}

	ls[0]->collapse(Code());
	delete ls[0];
}

Hafman::Tree* Hafman::makeTree()
{
	Tree* node = new Tree();
	node->left = makeTree(Code() + 0);
	node->right = makeTree(Code() + 1);
	return node;
}

Hafman::Tree* Hafman::makeTree(Hafman::Code code)
{
	for (size_t i = 0; i < 256; i++)
	{
		if (table[i].size == code.size && table[i].value == code.value)
			return new Tree((char)i);
	}

	Tree* node = new Tree();
	node->left = makeTree(code + 0);
	node->right = makeTree(code + 1);
	return node;
}

Hafman::Code Hafman::Code::operator+(char b)
{
	Code c;
	c.size = size + 1;
	c.value = value | (b << size);
	return c;
}

void Hafman::Tree::collapse(Hafman::Code code)
{
	if (left && right)
	{
		left->collapse(code + 0);
		right->collapse(code + 1);
	}
	else
		table[(byte)value] = code;
}

Hafman::Tree::~Tree()
{
	if (left)
		delete left;
	if (right)
		delete right;
}