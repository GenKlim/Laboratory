#include "Header.h"

int getDay();

int main(int argc, char* argv[])
{
	setlocale(0, "rus");

	Node* list = 0;

	cout << "1. Показать список" << endl;
	cout << "2. Добавить элемент в начало списка" << endl;
	cout << "3. Добавить 10 случайных записей" << endl;
	cout << "4. Найти все операции по счету" << endl;
	cout << "5. Удаление сведений по счету, у которого общая сумма вклада равна нулю" << endl;
	cout << "6. Показать остаток всех счетов" << endl;
	cout << "0. Выход" << endl << endl;
	
	while (true)
	{
		switch (getch())
		{
		case '1':
			printAll(list);
			break;
		case '2':
			list = insert(list);
			printAll(list);
			break;
		case '3':
			list = addRandom(list);
			printAll(list);
			break;
		case '4':
		{
			int id;
			cout << "Введите номер счета:" << endl;
			cin >> id;

			Node* fResult = find(list, id);
			printAll(fResult);
			removeAll(fResult);
			break;
		}
		case '5':
			list = removeZero(list);
			printAll(list);
			break;
		case '6':
		{
			Node* fResult = getResult(list);
			printAll(fResult);
			removeAll(fResult);
			break;
		}
		case '0':
			return 0;
		}
	}
	return 0;
}

// Добавляет узел перед index, read устанавливет надо ли читать из консоли данные
Node* insert(Node* index, bool read)
{
	Node* n = new Node(read);
	n->next = index;
	return n;
}

// Поиск узлов по id
Node* find(Node* index, int id)
{
	Node* result = 0;
	while (index)
	{
		if (index->id == id)
		{
			result = insert(result, false);
			result->id = index->id;
			result->date = index->date;
			result->value = index->value;
			result->tradeType = index->tradeType;
		}
		index = index->next;
	}
	return result;
}

// Печатает весь список
void printAll(Node* index)
{
	if (!index)
	{
		cout << "Список пуст" << endl;
		return;
	}

	cout << "Номер счета\tДата\tСумма\tТип" << endl;
	while (index)
	{
		cout << index->id << "\t\t" << index->date << '\t' << index->value << '\t';
		if (index->tradeType)
			cout << "Приход" << endl;
		else
			cout << "Расход" << endl;
		index = index->next;
	}
}

// Возвращает сегодняшний день
int getDay()
{
	char buffer[3];
	time_t seconds = time(NULL);
	strftime(buffer, 3, "%d", localtime(&seconds));
	return atoi(buffer);
}

// Добавляет 10 случайных записей
Node* addRandom(Node* index)
{
	for (int i = 0; i < 10; i++)
	{
		index = insert(index, false);
		index->id = 8800 + rand() % 5;
		index->date = 1 + rand() % 31;
		index->value = 500 + rand() % 500;
		index->tradeType = rand() % 2;
	}
	return index;
}

// Удаляет узлы с нулевой суммой
Node* removeZero(Node* index)
{
	if (!index)
		return 0;

	Node* temp;
	bool done = false;
	while (!done)
	{
		temp = index;
		done = true;
		while (temp)
		{
			if (!getSum(temp, temp->id))
			{
				index = removeByGroup(index, temp->id);
				done = false;
				break;
			}
			temp = temp->next;
		}
	}
	return index;
}

// Удаляет узлы по id
Node* removeByGroup(Node* index, int id)
{
	if (!index)
		return 0;

	Node* temp;
	while (index && index->id == id)
	{
		temp = index->next;
		delete index;
		index = temp;
	}

	Node* old = index;
	temp = index->next;

	while (temp)
	{
		if (temp->id == id)
		{
			old->next = temp->next;
			delete temp;
			temp = old;
		}
		else
		{
			old = temp;
			temp = temp->next;
		}
	}

	return index;
}

// Возращает новый список состоящий из не повторяющихся узлов, с вычисленой суммой
Node* getResult(Node* index)
{
	if (!index)
		return 0;

	Node* result = 0, *temp;
	while (index)
	{
		bool cont = false;
		temp = result;
		while (temp)
		{
			if (temp->id == index->id)
			{
				cont = true;
				break;
			}
			temp = temp->next;
		}

		if (!cont)
		{
			int sum = getSum(index, index->id);
			result = insert(result, false);
			result->id = index->id;
			result->value = abs(sum);
			result->date = getDay();
			result->tradeType = sum > 0;
		}
		index = index->next;
	}
	return result;
}

// Выисляет сумму всех узлов по id
int getSum(Node* index, int id)
{
	int sum = 0;
	Node* temp = index;
	while (temp)
	{
		if (temp->id == id)
			sum += temp->tradeType ? temp->value : -temp->value;
		temp = temp->next;
	}
	return sum;
}

// Удаляет весь список
//		Нужен для освобождения памяти после работы с новыми списками
void removeAll(Node* index)
{
	while (index)
	{
		Node* next = index->next;
		delete index;
		index = next;
	}
}
