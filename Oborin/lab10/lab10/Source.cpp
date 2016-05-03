#include <iostream>

using namespace std;

class Tree
{
public:
	Tree *left, *right;
	char value;

	Tree()
	{
		left = 0;
		right = 0;
	}

	Tree(char data) : Tree()
	{
		value = data;
	}

	void print(int level = 0)
	{
		if (left)
			left->print(level + 1);

		for (int l = 0; l < level - 1; l++)
			cout << "   ";

		if (level)
			cout << "+--";

		cout << value << endl;

		if (right)
			right->print(level + 1);
	}

	void rotate_right()
	{
		if (!left)
		{
			rotate_left();
			return;
		}

		Tree* l = right;
		Tree* b = left;
		Tree* c = left->right;
		Tree* r = left->left;

		swap(value, b->value);

		b->right = l;
		b->left = c;
		right = b;
		left = r;
	}

	void rotate_left()
	{
		if (!right)
		{
			rotate_right();
			return;
		}

		Tree* l = left;
		Tree* b = right;
		Tree* c = right->left;
		Tree* r = right->right;

		swap(value, b->value);
		b->left = l;
		b->right = c;
		left = b;
		right = r;
	}

	int bfactor() const
	{
		return (right ? right->height() : 0) - (left ? left->height() : 0);
	}

	unsigned char height()
	{
		unsigned char hl = left ? left->height() : 0;
		unsigned char hr = right ? right->height() : 0;
		return (hl > hr ? hl : hr) + 1;
	}
};

class BalanceTree : public Tree
{
	BalanceTree* insert(BalanceTree* p, char value)
	{
		if (!p)
			return new BalanceTree(value);

		if (value < p->value)
			p->left = insert((BalanceTree*)p->left, value);
		else
			p->right = insert((BalanceTree*)p->right, value);

		p->balance();
		return p;
	}

	void balance()
	{
		switch (bfactor())
		{
		case 2:
			if (right->bfactor() < 0)
				right->rotate_right();
			rotate_left();
			break;
		case-2:
			if (left->bfactor() < 0)
				left->rotate_left();
			rotate_right();
			break;
		}
	}

public:
	BalanceTree(char value) : Tree(value)
	{}

	BalanceTree(const BalanceTree& base)
	{
		value = base.value;
		right = new BalanceTree(*((const BalanceTree*)base.right));
		left = new BalanceTree(*((const BalanceTree*)base.left));
	}

	BalanceTree(int count)
	{
		value = '0' + count - 1;
		while (--count)
			insert('0' + count - 1);
	}

	void insert(char value)
	{
		insert(this, value); 
	}

	int getSum()const
	{
		int total = left ? ((BalanceTree*)left)->getSum() : 0;

		if (value >= '1' && value <= '9')
			total += value - '0';

		if (right)
			total += ((BalanceTree*)right)->getSum();

		return total;
	}

	BalanceTree* find(char target)
	{
		if (target > value)
			return right ? ((BalanceTree*)right)->find(target) : 0;
		if (target < value)
			return left ? ((BalanceTree*)left)->find(target) : 0;
		return this;
	}

	char getMax()
	{
		return right ? ((BalanceTree*)right)->getMax() : value;
	}

	~BalanceTree()
	{
		if (left)
			delete left;
		if (right)
			delete right;
	}
};

int main()
{
	BalanceTree tree(10);
	tree.print();

	cout << endl;
	cout << "Sum of numbers = " << tree.getSum() << endl;
	cout << "Max value = " << tree.getMax() << endl;
	cout << "Result find by value '2' = " << tree.find('2') << endl;

	return EXIT_SUCCESS;
}