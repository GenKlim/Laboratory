#pragma once
#define _CRT_NONSTDC_NO_DEPRECATE

#include <stdio.h>
#include <string>
#include <iostream>
#include <conio.h>

using namespace std;

struct BookNode
{
	BookNode* back;
	BookNode* next;

	int id, dateStart, dateReturn, dateReturnReal;
	string name;
};

const char* nodeHeader = "Номер\tКнига\tДата выдачи\tДата возврата\tДата фактического возврата";

void print(BookNode* node);
void printAll(BookNode* node);
void printAllReverse(BookNode*);
BookNode* findFront(BookNode*);
BookNode* findBack(BookNode*);
BookNode* find(BookNode*, int);
void editByIdAndName(BookNode*, int, string);
BookNode* insert(BookNode*, BookNode);
BookNode* insert2(BookNode*, BookNode);
BookNode* addRandom(BookNode*, int);
BookNode* remove(BookNode*);
BookNode* removeNormal(BookNode*);
int getBookByAbonent(BookNode*, int id);
BookNode readNode();