#pragma once

template<typename Type>
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

	void push(Type value)
	{
		if (curent + 1 < maxSize)
			buffer[curent++] = value;
	}

	Type pop()
	{
		if (!curent)
			return 0;
		return buffer[--curent];
	}

	int size()
	{
		return curent;
	}

	static Stack<Type> invert(Stack<Type> a)
	{
		Stack<Type> b;
		while (a.size())
			b.push(a.pop());
		return b;
	}
};