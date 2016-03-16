#pragma once

#define _CRT_NONSTDC_NO_DEPRECATE
#define _CRT_SECURE_NO_WARNINGS
#include "iostream"
#include "string"
#include "conio.h"

using namespace std;

struct Node
{
	Node* next;

	int id, date, cost, retDate;
	bool ret;
};

Node* readNode();
Node* clone(Node*);
void copy(Node*, Node*);

void insert(Node*&, Node*);
void addRandom(Node*&);
void removeForDate(Node*&, int);
void sort(Node*&);
void sort2(Node*&);
Node* find(Node*, int);

void printList(Node*);
void printOne(Node*);