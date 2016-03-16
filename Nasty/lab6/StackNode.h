#pragma once

#if !USE_STATICK_STACK
typedef double Type;

// Узел для односвязного списка
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

	//Запихивает ноывй элемент на вершину стека
	void push(Type value)
	{
		Node* newBack = new Node();
		newBack->value = value;
		newBack->back = back;
		back = newBack;
		size++;
	}

	//Убирает с вершины стека один элемент
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