#pragma once
#include <iostream>

using namespace std;
typedef int ItemType;
#define BLACK false
#define RED true

struct Node
{
	static Node* NIL;

	int value;
	bool color;
	Node *left;
	Node *right;
	Node *parent;

	Node(ItemType value, bool color, Node* parent = 0);

	void print(int level);
	Node* getBrother();
};