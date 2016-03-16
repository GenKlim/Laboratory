#pragma once

#if !USE_STATICK_STACK
typedef double Type;

// ���� ��� ������������ ������
struct Node
{
	Type value;
	Node* back;
};

struct Stack
{
private:
	int size;
	Node* back;
public:
	Stack()
	{
		back = 0;
		size = 0;
	}

	//���������� ����� ������� �� ������� �����
	void push(Type value)
	{
		Node* newBack = new Node();
		newBack->value = value;
		newBack->back = back;
		back = newBack;
		size++;
	}

	//������� � ������� ����� ���� �������
	Type pop()
	{
		if (!size)
			return 0;

		size--;

		Type value = back->value;
		Node* oldBack = back;
		back = back->back;
		delete oldBack;
		return value;
	}
};
#endif