#pragma once
#include "Node.h"

using namespace std;
#define NIL Node::NIL

class TreeBR
{
	Node* root;

	void postAddBalance(Node*);
	void postRemoveBalanve(Node*);
	void waitNextStep();
	void rotateLeft(Node*);
	void rotateRight(Node*);
public:
	bool stepByStep;

	TreeBR();
	~TreeBR();

	void print();
	void add(ItemType);
	void remove(Node*);
	void remove(ItemType);
	Node* find(ItemType);
}; 