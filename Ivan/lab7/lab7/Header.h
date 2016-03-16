#pragma once
#define _CRT_NONSTDC_NO_DEPRECATE

#include <stdio.h>
#include <string>
#include <iostream>
#include "conio.h"

using namespace std;

struct Otzenka
{
	int value, semestr;
	string lesson;
	Otzenka* next;
};

struct Node
{
	string name;
	int id, group;
	Otzenka* otzenki;
	Node* back, *next;

	static Node* read();
	void print();
	void copyTo(Node*);
};

int read(string text);

void printAll(Node*);
void printAllReverse(Node* last);
void insert(Node*&, Node*);
void insertSpacel(Node*&, Node*);
void addRandom(Node*&);
void sort(Node*);
void remove(Node*&);
void removeByGroup(Node*&, int);
Node* find(Node*, int id);
void swap(Node*, Node*);
int getOtzenkiCount(Node*);
void moveToFront(Node*&);
void moveToBack(Node*&);