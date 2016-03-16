#pragma once

#if !USE_STATICK_STACK
// Узел для односвязного списка
struct Node
{
	STACK_ITEM_TYPE value;
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
	void push(STACK_ITEM_TYPE value)
	{
		Node* newBack = new Node();
		newBack->value = value;
		newBack->back = back;
		back = newBack;
		size++;
	}

	//Убирает с вершины стека один элемент
	STACK_ITEM_TYPE pop()
	{
		STACK_ITEM_TYPE value = back->value;
		Node* oldBack = back;
		back = back->back;

		delete oldBack;
		size--;
		return value;
	}

	//Определяет пуст ли стек
	bool empty()
	{
		return !size;
	}
};
#endif