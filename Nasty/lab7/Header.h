#pragma once
#define _CRT_NONSTDC_NO_DEPRECATE

#include <stdio.h>
#include <string.h>
#include <iostream>
#include <conio.h>

using namespace std;

struct Node
{
	Node* back;
	Node* next;

	int id, date, cost;
	bool ret;
};

const char* nodeHeader = "Номер\tДата\tЦена\tВозврат";

void print(Node* node);
void printAll(Node* node);
void printAllReverse(Node* last);
Node* sort(Node* node);
Node* findFront(Node* node);
Node* findBack(Node* node);
Node* find(Node* node, int id);
Node* insert(Node* node, Node newNode);
Node* addRandom(Node* node);
Node* remove(Node* node);
Node* removeByDataAndID(Node* node);
Node* findByRet(Node* node);
int getMaxRet(Node* node);
Node readNode();