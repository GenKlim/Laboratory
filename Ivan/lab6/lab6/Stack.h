#pragma once

struct Node
{
	int value;
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

	void push(int value)
	{
		Node* newBack = new Node();
		newBack->value = value;
		newBack->back = back;
		back = newBack;
		size++;
	}

	int pop()
	{
		if (size == 0)
			return 0;

		int value = back->value;
		Node* oldBack = back;
		back = back->back;

		delete oldBack;
		size--;
		return value;
	}
};