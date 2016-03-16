#pragma once

#define _CRT_NONSTDC_NO_DEPRECATE
#define _CRT_SECURE_NO_WARNINGS
#include "iostream"
#include "conio.h"
#include "ctime"

using namespace std;

struct Node
{
	int id, date, value;
	bool tradeType;
	Node* next;

	Node(bool read = true);
};

Node* insert(Node* index, bool read = true);
Node* find(Node* index, int id);
Node* addRandom(Node* index);
Node* removeZero(Node* index);
Node* removeByGroup(Node* index, int id);
Node* getResult(Node* index);
int getSum(Node* index, int id);
void removeAll(Node* index);
void printAll(Node* index);

Node::Node(bool read)
{
	if (!read)
		return;

	cout << "¬ведите номер счета, дату, сумму:" << endl;
	cin >> id >> date >> value;
	cout << "¬ид операции приход или расход? (y/n)" << endl;
	tradeType = getch() == 'y';
}