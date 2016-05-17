#include "TreeBR.h"

TreeBR::TreeBR()
{
	root = NIL;
	stepByStep = false;
}

TreeBR::~TreeBR()
{
	if (root != NIL)
		delete root;
}

void TreeBR::print()
{
	if (root != NIL)
		root->print(0);
}

void TreeBR::add(ItemType value)
{
	Node* current = root;
	Node* parent = 0;
	while (current != NIL)
	{
		if (value == current->value)
			return;
		parent = current;
		current = value < current->value ? current->left : current->right;
	}

	Node *node = new Node(value, RED, parent);

	if (parent)
	{
		if (value < parent->value)
			parent->left = node;
		else
			parent->right = node;
	}
	else
		root = node;

	waitNextStep();
	postAddBalance(node);
}

void TreeBR::remove(Node* node)
{
	if (node == NIL)
		return;

	if (node->left == NIL && node->right == NIL)
	{
		if (node->parent)
		{
			if (node->parent->left == node)
				node->parent->left = NIL;
			else
				node->parent->right = NIL;
		}
		else
		root = NIL;
		delete node;
	}
	else if (node->left == NIL || node->right == NIL)
	{
		Node* n = node->right != NIL ? node->right : node->left;
		n->parent = node->parent;
		if (node->parent)
		{
			if (node->parent->left == node)
				node->parent->left = n;
			else
				node->parent->right = n;
		}
		else
			root = n;
		delete node;
	}
	else
	{
		Node* n = node->right;
		while (n->left != NIL)
			n = n->left;
		
		ItemType data = n->value;
		remove(n);
		node->value = data;
	}
}

void TreeBR::remove(ItemType value)
{
	Node* node = find(value);
	if (node)
		remove(node);
}

Node* TreeBR::find(ItemType value)
{
	Node *node = root;
	while (node != NIL)
	{
		if (node->value == value)
			return node;
		else if (node->value > value)
			node = node->left;
		else
			node = node->right;
	}
	return 0;
}

void TreeBR::postAddBalance(Node* node)
{
	while (node != root && node->parent->color == RED)
	{
		Node* p = node->parent;
		Node* g = p->parent;
		Node *u = p->getBrother();
		if (u->color == RED)
		{
			p->color = BLACK;
			u->color = BLACK;
			g->color = RED;
			node = g;
		}
		else
		{
			if (p == g->left && node == p->right)
			{
				node = node->parent;
				rotateLeft(node);
			}
			else if (p == g->right && node == p->left)
			{
				node = node->parent;
				rotateRight(node);
			}

			p = node->parent;
			g = p->parent;

			p->color = BLACK;
			g->color = RED;
			if (p == g->left)
				rotateRight(g);
			else
				rotateLeft(g);
		}
		waitNextStep();
	}
	root->color = BLACK;
}

void TreeBR::postRemoveBalanve(Node* x)
{
	while (x != root && x->color == BLACK)
	{
		if (x == x->parent->left)
		{
			Node *w = x->parent->right;
			if (w->color == RED)
			{
				w->color = BLACK;
				x->parent->color = RED;
				rotateLeft(x->parent);
				w = x->parent->right;
			}
			if (w->left->color == BLACK && w->right->color == BLACK)
			{
				w->color = RED;
				x = x->parent;
			}
			else
			{
				if (w->right->color == BLACK)
				{
					w->left->color = BLACK;
					w->color = RED;
					rotateRight(w);
					w = x->parent->right;
				}
				w->color = x->parent->color;
				x->parent->color = BLACK;
				w->right->color = BLACK;
				rotateLeft(x->parent);
				x = root;
			}
		}
		else
		{
			Node *w = x->parent->left;
			if (w->color == RED)
			{
				w->color = BLACK;
				x->parent->color = RED;
				rotateRight(x->parent);
				w = x->parent->left;
			}
			if (w->right->color == BLACK && w->left->color == BLACK)
			{
				w->color = RED;
				x = x->parent;
			}
			else
			{
				if (w->left->color == BLACK)
				{
					w->right->color = BLACK;
					w->color = RED;
					rotateLeft(w);
					w = x->parent->left;
				}
				w->color = x->parent->color;
				x->parent->color = BLACK;
				w->left->color = BLACK;
				rotateRight(x->parent);
				x = root;
			}
		}
	}
	x->color = BLACK;
}

void TreeBR::waitNextStep()
{
	if (!stepByStep)
		return;

	print();
	system("pause");
}

void TreeBR::rotateLeft(Node* node)
{
	Node *y = node->right;

	node->right = y->left;
	if (y->left != NIL)
		y->left->parent = node;

	if (y != NIL)
		y->parent = node->parent;
	if (node->parent) {
		if (node == node->parent->left)
			node->parent->left = y;
		else
			node->parent->right = y;
	}
	else
		root = y;

	y->left = node;
	if (node != NIL)
		node->parent = y;
}

void TreeBR::rotateRight(Node* node)
{
	Node *y = node->left;

	node->left = y->right;
	if (y->right != NIL)
		y->right->parent = node;

	if (y != NIL)
		y->parent = node->parent;
	if (node->parent) 
	{
		if (node == node->parent->right)
			node->parent->right = y;
		else
			node->parent->left = y;
	}
	else
		root = y;

	y->right = node;
	if (node != NIL)
		node->parent = y;
}
