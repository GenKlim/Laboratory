#include "Header.h"

int getDay();

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	Node* list = 0;

	cout << "1. �������� ������" << endl;
	cout << "2. �������� ������� � ������ ������" << endl;
	cout << "3. �������� 10 ��������� �������" << endl;
	cout << "4. ����� ��� �������� �� �����" << endl;
	cout << "5. �������� �������� �� �����, � �������� ����� ����� ������ ����� ����" << endl;
	cout << "6. �������� ������� ���� ������" << endl;
	cout << "0. �����" << endl << endl;
	
	while (true)
	{
		switch (getch())
		{
		case '1':
			printAll(list);
			break;
		case '2':
			list = insert(list);
			printAll(list);
			break;
		case '3':
			list = addRandom(list);
			printAll(list);
			break;
		case '4':
		{
			int id;
			cout << "������� ����� �����:" << endl;
			cin >> id;

			Node* fResult = find(list, id);
			printAll(fResult);
			removeAll(fResult);
			break;
		}
		case '5':
			list = removeZero(list);
			printAll(list);
			break;
		case '6':
		{
			Node* fResult = getResult(list);
			printAll(fResult);
			removeAll(fResult);
			break;
		}
		case '0':
			return 0;
		}
	}
	return 0;
}

// ��������� ���� ����� index, read ������������ ���� �� ������ �� ������� ������
Node* insert(Node* index, bool read)
{
	Node* n = new Node(read);
	n->next = index;
	return n;
}

// ����� ����� �� id
Node* find(Node* index, int id)
{
	Node* result = 0;
	while (index)
	{
		if (index->id == id)
		{
			result = insert(result, false);
			result->id = index->id;
			result->date = index->date;
			result->value = index->value;
			result->tradeType = index->tradeType;
		}
		index = index->next;
	}
	return result;
}

// �������� ���� ������
void printAll(Node* index)
{
	if (!index)
	{
		cout << "������ ����" << endl;
		return;
	}

	cout << "����� �����\t����\t�����\t���" << endl;
	while (index)
	{
		cout << index->id << "\t\t" << index->date << '\t' << index->value << '\t';
		if (index->tradeType)
			cout << "������" << endl;
		else
			cout << "������" << endl;
		index = index->next;
	}
}

// ���������� ����������� ����
int getDay()
{
	char buffer[3];
	time_t seconds = time(NULL);
	strftime(buffer, 3, "%d", localtime(&seconds));
	return atoi(buffer);
}

// ��������� 10 ��������� �������
Node* addRandom(Node* index)
{
	for (int i = 0; i < 10; i++)
	{
		index = insert(index, false);
		index->id = 8800 + rand() % 5;
		index->date = 1 + rand() % 31;
		index->value = 500 + rand() % 500;
		index->tradeType = rand() % 2;
	}
	return index;
}

// ������� ���� � ������� ������
Node* removeZero(Node* index)
{
	if (!index)
		return 0;

	Node* temp;
	bool done = false;
	while (!done)
	{
		temp = index;
		done = true;
		while (temp)
		{
			if (!getSum(temp, temp->id))
			{
				index = removeByGroup(index, temp->id);
				done = false;
				break;
			}
			temp = temp->next;
		}
	}
	return index;
}

// ������� ���� �� id
Node* removeByGroup(Node* index, int id)
{
	if (!index)
		return 0;

	Node* temp;
	while (index && index->id == id)
	{
		temp = index->next;
		delete index;
		index = temp;
	}

	Node* old = index;
	temp = index->next;

	while (temp)
	{
		if (temp->id == id)
		{
			old->next = temp->next;
			delete temp;
			temp = old;
		}
		else
		{
			old = temp;
			temp = temp->next;
		}
	}

	return index;
}

// ��������� ����� ������ ��������� �� �� ������������� �����, � ���������� ������
Node* getResult(Node* index)
{
	if (!index)
		return 0;

	Node* result = 0, *temp;
	while (index)
	{
		bool cont = false;
		temp = result;
		while (temp)
		{
			if (temp->id == index->id)
			{
				cont = true;
				break;
			}
			temp = temp->next;
		}

		if (!cont)
		{
			int sum = getSum(index, index->id);
			result = insert(result, false);
			result->id = index->id;
			result->value = abs(sum);
			result->date = getDay();
			result->tradeType = sum > 0;
		}
		index = index->next;
	}
	return result;
}

// �������� ����� ���� ����� �� id
int getSum(Node* index, int id)
{
	int sum = 0;
	Node* temp = index;
	while (temp)
	{
		if (temp->id == id)
			sum += temp->tradeType ? temp->value : -temp->value;
		temp = temp->next;
	}
	return sum;
}

// ������� ���� ������
//		����� ��� ������������ ������ ����� ������ � ������ ��������
void removeAll(Node* index)
{
	while (index)
	{
		Node* next = index->next;
		delete index;
		index = next;
	}
}
