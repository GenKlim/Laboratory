#pragma once

template<typename Type>
struct Node
{
	Type value;
	Node* back;
};

template<typename Type>
struct Stack
{
private:
	Node<Type>* last;
	int _size;
public:
	Stack()
	{
		last = 0;
		_size = 0;
	}

	void push(Type value)
	{
		_size++;
		Node<Type>* n = new Node<Type>();
		n->value = value;
		n->back = last;
		last = n;
	}

	Type pop()
	{
		if (!size())
			return 0;

		Node<Type>* n = last;
		Type c = last->value;
		last = last->back;
		_size--;
		delete n;
		return c;
	}

	Type operator()()
	{
		if (!size())
			return 0;
		return last->value;
	}

	int size()
	{
		return _size;
	}

	static Stack<Type> invert(Stack<Type> a)
	{
		Stack<Type> b;
		while (a.size())
			b.push(a.pop());
		return b;
	}
};