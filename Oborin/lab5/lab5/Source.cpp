#include "Header.h"

int main(int argc, char** argv)
{
	setlocale(0, "rus");

	Student* list = 0;

	cout << "1. �������� ������" << endl;
	cout << "2. �������� ������� � ������ ������" << endl;
	cout << "3. �������� 5 ��������� �������" << endl;
	cout << "4. ����� ��� ������ �� ������ �������" << endl;
	cout << "5. ����������� �� ������" << endl;
	cout << "6. �������� ������� ����� �����, ����� ������ �������� ������ ������ ������" << endl;
	cout << "7. ������� ��� �������� � ��������� �������� ������" << endl;
	cout << "0. �����" << endl << endl;

	while (true)
	{
		cout << "������� ������ �������";
		char c = getch();
		cout << "\r\t\t\t\t\t\t\r";

		switch (c)
		{
		case '1':
			printAll(list);
			break;
		case '2':
			list = insert(list, readStudent());
			printAll(list);
			break;
		case '3':
			list = addRandom(list);
			printAll(list);
			break;
		case '4':
			{
				int id;
				cout << "������� ����� �������: ";
				cin >> id;
				Student* findResult = find(list, id);
				printAll(findResult);
				removeAll(findResult);
			}
			break; 
		case '5':
			list = sort(list);
			printAll(list);
			break;
		case '6':
			list = insertSpacel(list, readStudent());
			printAll(list);
			break;
		case '7':
		{
			int id;
			cout << "������� ����� ������: ";
			cin >> id;
			list = removeByGroup(list, id);
			printAll(list);
		}
		break;
		case '0':
			return 0;
		}
	}
	
	return 0;
}

Student* readStudent()
{
	Student* node = new Student();
	cout << "������� ����� �������, ������, ��� ��������:" << endl;
	cin >> node->id >> node->group >> node->name;
	node->table = 0;

	return node;
}

Student* insert(Student* index, Student* newStudent)
{
	newStudent->next = index;
	return newStudent;
}

Student* find(Student * index, int id)
{
	Student* result = 0;
	while (index)
	{
		if (index->id == id)
			result = insert(result, clone(index));
		index = index->next;
	}
	return result;
}

void printAll(Student* index)
{
	if (index)
	{
		cout << "����� �������\t������\t���" << endl;
		while (index)
		{
			print(index);
			index = index->next;
		}
	}
	else
		cout << "������ ����" << endl;
}

void print(Student * Student)
{
	cout << Student->id << "\t\t" << Student->group << '\t' << Student->name << endl;
}

Student* addRandom(Student* index)
{
	for (int i = 0; i < 5; i++)
	{
		index = insert(index, new Student());
		index->id = 3220 + rand() % 10;
		index->group = 1 + rand() % 6;
		index->table = 0;
		switch (rand() % 3)
		{
		case 0: index->name = "����"; break;
		case 1: index->name = "����"; break;
		case 2: index->name = "����"; break;
		}
	}
	return index;
}

Student* removeByGroup(Student* index, int group)
{
	while (index->group == group)
		index = index->next;

	for (Student* i = index->next; i && i->next;)
	{
		if (i->next->group == group)
			i->next = i->next->next;
		else
			i = i->next;
	}
	return index;
}

Student* insertSpacel(Student* index, Student* newStudent)
{
	if (index->id < newStudent->id)
		return insert(index, newStudent);

	Student* back = index;
	for (Student* i = index->next; i->next; i = i->next)
	{
		if (i->id < newStudent->id)
		{
			if(back)
				back->next = newStudent;
			newStudent->next = i;
			return index;
		}
		back = i;
	}
	return index;
}

Student* sort(Student* index)
{
	for (Student* i = index; i; i = i->next)
	{
		for (Student* j = index; j && j->next != i && j->next; j = j->next)
		{
			if (j->group > j->next->group)
			{
				Student* temp = clone(j);
				copy(j->next, j);
				copy(temp, j->next);
				delete temp;
			}
		}
	}
	return index;
}

Student* clone(Student* student)
{
	Student* c = new Student();
	copy(student, c);
	return c;
}

void copy(Student* in, Student* to)
{
	to->id		= in->id;
	to->group	= in->group;
	to->name	= in->name;
	to->table	= in->table;
}

void removeAll(Student* index)
{
	while (index)
	{
		Student* next = index->next;
		delete index;
		index = next;
	}
}
