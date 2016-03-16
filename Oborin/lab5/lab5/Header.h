#pragma once

#define _CRT_NONSTDC_NO_DEPRECATE
#define _CRT_SECURE_NO_WARNINGS
#include "iostream"
#include "string"
#include "conio.h"
#include "ctime"

using namespace std;

struct Assessment
{
	int value, semestr;
	string lesson;
	Assessment* next;
};

struct Student
{
	int id, group;
	string name;
	Assessment* table;
	Student* next;
};

Student* readStudent();
Student* insert(Student* index, Student* newStudent);
Student* insertSpacel(Student* index, Student* newStudent);
Student* removeByGroup(Student* index, int group);
Student* find(Student* index, int id);
Student* addRandom(Student* index);
Student* sort(Student* index);
Student* clone(Student* student);
void copy(Student* in, Student* to);
void removeAll(Student* index);
void printAll(Student* index);
void print(Student* Student);