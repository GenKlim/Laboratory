#pragma once

#if USE_STATICK_STACK
#define STATICK_STACK_MAX_SIZE 256

struct Stack
{
private:

	STACK_ITEM_TYPE buffer[STATICK_STACK_MAX_SIZE];
	unsigned int size;
public:
	Stack()
	{
		size = 0;
	}

	//Запихивает ноывй элемент на вершину стека
	void push(STACK_ITEM_TYPE value)
	{
		if (size < STATICK_STACK_MAX_SIZE - 1)
			buffer[size++] = value;
	}

	//Убирает с вершины стека один элемент
	STACK_ITEM_TYPE pop()
	{
		return buffer[--size];
	}

	//Определяет пуст ли стек
	bool empty()
	{
		return !size;
	}
};
#endif