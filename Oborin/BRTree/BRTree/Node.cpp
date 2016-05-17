#include "Node.h"

Node* Node::NIL = new Node(0, BLACK);

Node::Node(ItemType value, bool color, Node* parent)
{
	this->value = value;
	this->color = color;
	this->parent = parent;
	left = NIL;
	right = NIL;
}


void Node::print(int level)
{
	if (left != NIL)
		left->print(level + 1);

	for (int l = 0; l < level - 1; l++)
		cout << "    ";

	if (level)
		cout << "+---";

	cout << value << (color == RED ? " R" : " B") << endl;

	if (right != NIL)
		right->print(level + 1);
}

Node* Node::getBrother()
{
	if (parent)
		return parent->left == this ? parent->right : parent->left;
	return NIL;
}

//void Node::removeChild(Node* node)
//{
//	if (node == NIL)
//		return;
//
//	if (left == node)
//		left = NIL;
//	else if (right == node)
//		right = NIL;
//}
//
//void Node::replace(Node* node)
//{
//	if(node != NIL)
//		node->parent = parent;
//	if (parent)
//	{
//		if (parent->left == this)
//			parent->left = node;
//		else
//			parent->right = node;
//	}
//}
//
//Node::~Node()
//{
//	if (left != NIL)
//		delete left;
//	if (right != NIL)
//		delete right;
//}