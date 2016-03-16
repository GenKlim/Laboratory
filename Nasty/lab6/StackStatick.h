#pragma once

#if USE_STATICK_STACK
typedef double Type;

struct Stack
{
private:
	#define maxSize 256

	Type buffer[maxSize];
	int curent;
public:
	Stack()
	{
		curent = 0;
	}

	//Запихивает ноывй элемент на вершину стека
	void push(Type value)
	{
		if (curent < maxSize - 1)
			buffer[curent++] = value;
	}

	//Убирает с вершины стека один элемент
	Type pop()
	{
		if (!curent)
			return 0;
		return buffer[--curent];
	}
};
#endif