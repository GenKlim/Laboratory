#pragma once

template <class T>
class TreeNode //Узел дерева
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
class BinTree	//Дерево
{
public:
	TreeNode<T>* root = 0; // корень дерева

	void add(T* x)		/* вставляет узел */
	{
		TreeNode<T>* n = new TreeNode<T>(x);	/* создаем новый узел, его мы будем вставлять */
		TreeNode<T>* ptr=0;
		TreeNode<T>* ptr1=0;

		n->parent = n->left = n->right = 0;		/* он - лист */
		ptr = root;
		while (ptr != 0)						/* идем от корня и ищем подходящее место для нашего нового элемента, оно должно быть свободно */
		{
			ptr1 = ptr;							/* будущий родитель нового узла */
			if (x < ptr->data)			/* по определению нашего дерева - слева значение ключа меньше родителя, */
				ptr = ptr->left;
			else
				ptr = ptr->right;				/* справа - больше */
		}

		n->parent = ptr1;
		if (ptr1 == 0)							/* дерево было пусто? */
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

	TreeNode<T>* remove(TreeNode<T>* n)    /* удаляет узел */
	{
		/* возможны три случая - если у n нет детей, то помещаем 0 в соответствующее поле
		* родителя n, если у n есть один ребенок, то можно вырезать n, соединив его родителя напрямую с
		* его ребенком. Если же детей двое, то требуются некоторые приготовления: мы находим следующий
		* (в смысле порядка на ключах) за n элемент y; у него нет левого ребенка (всегда). Теперь можно
		* скопировать ключ и дополнительные данные из вершины y в вершину n, а саму вершину y удалить
		* описанным выше способом */

		TreeNode<T> *x, *y;
		if (n->left == 0 || n->right == 0)					/* в этой и следующих двух строках ищем вершину y, которую мы потом вырежем из дерева. Это либо n, либо следующий за n */
			y = n;
		else
			y = find_succsessor(n->data);
		if (y->left != 0)                                  /* x - указатель на существующего ребенка y или 0 если таковых нет */
			x = y->left;
		else
			x = y->right;
		if (x != 0)                                        /* эта и следующие 9 строк - вырезание y */
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
		if (y != n)                                        /* если мы вырезали вершин, отличную от n, то ее данные перемещаем в n */
			n->data = y->data;
		return y;
	}

	void print(TreeNode<T>* n) const	/* печатает все ключи в неубывающем порядке */
	{
		if (n != 0)
		{
			print(n->left);
			cout << n->data << endl;
			print(n->right);
		}
	}
};