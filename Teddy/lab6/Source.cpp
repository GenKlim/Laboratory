/*
	Дан текст.
	Требуется для каждой пары соответствующих открывающей и закрывающей скобок вывести номера
	их позиций в тексте, упорядочив пары номеров в порядке возрастания номеров позиций: 
		а) закрывающих скобок
		б) открывающих скобок.
	Например, для текста А+(45-А(ч)*(В-С)) должно быть выведено: 
		а) 8 10; 12 16; 3 17;
		б) 3 17; 8 10; 12 16.
*/

#include "Header.h"

Stack find1(string str);		//Возвращает стек с парами (позиция откр. и закр. скобки), упоряжоченый в порядке возрастания номеров позиций закрывающих скобок
Stack find2(string str);		//Возвращает стек с парами (позиция откр. и закр. скобки), упоряжоченый в порядке возрастания номеров позиций открывающих скобок
void PrintStack(Stack stack);	//Выводит стек на экран
Stack InvertStack(Stack a);		//Возвращает перевернутый стек

int main()
{
	setlocale(0, "rus");

	cout << "Введите выражение:" << endl;
	
	string line;
	getline(cin, line);

	cout << "a) ";
	PrintStack(find1(line));
	cout << endl;

	cout << "b) ";
	PrintStack(find2(line));
	cout << endl;

	return 0;
}

Stack find1(string str)
{
	Stack a, b;

	for (int i = 0; i < str.size(); i++)
	{
		if (str[i] == '(')
			a.push({ i + 1, 0 });
		else if (str[i] == ')')
			b.push({ a.pop().a, i + 1 });
	}

	return b;
}

Stack find2(string str)
{
	Stack a, b;

	for (int i = str.size() - 1; i >= 0; i--)
	{
		if (str[i] == ')')
			a.push({ 0, i + 1 });
		else if (str[i] == '(')
			b.push({ i + 1, a.pop().b });
	}

	return InvertStack(b);
}

void PrintStack(Stack stack)
{
	if (stack.empty())
		return;
	Range r = stack.pop();
	PrintStack(stack);
	cout << r.a << ' ' << r.b << "; ";
}

Stack InvertStack(Stack a)
{
	Stack b;
	while (!a.empty())
		b.push(a.pop());
	return b;
}