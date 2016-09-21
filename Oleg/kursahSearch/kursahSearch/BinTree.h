#pragma once

template <class T>
class TreeNode //���� ������
{
public:
	TreeNode* left, *right, *parent;
	T* data;

	TreeNode(T* data)
	{
		this->data = data;
		parent = left = right = 0;
	}
};

template <class T>
class BinTree	//������
{
public:
	TreeNode<T>* root = 0; // ������ ������

	void add(T* x)		/* ��������� ���� */
	{
		TreeNode<T>* n = new TreeNode<T>(x);	/* ������� ����� ����, ��� �� ����� ��������� */
		TreeNode<T>* ptr=0;
		TreeNode<T>* ptr1=0;

		n->parent = n->left = n->right = 0;		/* �� - ���� */
		ptr = root;
		while (ptr != 0)						/* ���� �� ����� � ���� ���������� ����� ��� ������ ������ ��������, ��� ������ ���� �������� */
		{
			ptr1 = ptr;							/* ������� �������� ������ ���� */
			if (x < ptr->data)			/* �� ����������� ������ ������ - ����� �������� ����� ������ ��������, */
				ptr = ptr->left;
			else
				ptr = ptr->right;				/* ������ - ������ */
		}

		n->parent = ptr1;
		if (ptr1 == 0)							/* ������ ���� �����? */
			root = n;
		else
		{
			if (x < ptr1->data)
				ptr1->left = n;
			else
				ptr1->right = n;
		}
	}

	size_t getMemorySize()
	{
		return getMemorySize(root) + sizeof(BinTree<T>);
	}

	size_t getMemorySize(const TreeNode<T>* n)
	{
		if (n != 0)
			return getMemorySize(n->left) + getMemorySize(n->right) + sizeof(TreeNode<T>);
		return 0;
	}

	TreeNode<T>* find_node(T* val) const
	{
		return find_node(root, val);
	}

	TreeNode<T>* find_node(TreeNode<T>* n, const T* val) const
	{
		if (n == 0 || val == n->data)
			return n;
		if (val > n->data)
			return find_node(n->right, val);
		else
			return find_node(n->left, val);
	}

	TreeNode<T>* remove(TreeNode<T>* n)    /* ������� ���� */
	{
		/* �������� ��� ������ - ���� � n ��� �����, �� �������� 0 � ��������������� ����
		* �������� n, ���� � n ���� ���� �������, �� ����� �������� n, �������� ��� �������� �������� �
		* ��� ��������. ���� �� ����� ����, �� ��������� ��������� �������������: �� ������� ���������
		* (� ������ ������� �� ������) �� n ������� y; � ���� ��� ������ ������� (������). ������ �����
		* ����������� ���� � �������������� ������ �� ������� y � ������� n, � ���� ������� y �������
		* ��������� ���� �������� */

		TreeNode<T> *x, *y;
		if (n->left == 0 || n->right == 0)					/* � ���� � ��������� ���� ������� ���� ������� y, ������� �� ����� ������� �� ������. ��� ���� n, ���� ��������� �� n */
			y = n;
		else
			y = find_succsessor(n->data);
		if (y->left != 0)                                  /* x - ��������� �� ������������� ������� y ��� 0 ���� ������� ��� */
			x = y->left;
		else
			x = y->right;
		if (x != 0)                                        /* ��� � ��������� 9 ����� - ��������� y */
			x->parent = y->parent;
		if (y->parent == 0)
			root = x;
		else
		{
			if (y == (y->parent)->left)
				(y->parent)->left = x;
			else
				(y->parent)->right = x;
		}
		if (y != n)                                        /* ���� �� �������� ������, �������� �� n, �� �� ������ ���������� � n */
			n->data = y->data;
		return y;
	}

	void print(TreeNode<T>* n) const	/* �������� ��� ����� � ����������� ������� */
	{
		if (n != 0)
		{
			print(n->left);
			cout << n->data << endl;
			print(n->right);
		}
	}
};