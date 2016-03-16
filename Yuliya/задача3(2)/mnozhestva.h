#pragma once
#include <iostream>
#include <fstream>
class mnozhestva
{
private:
	unsigned int count;//количество элементов
	unsigned int* mass;//элементы
	friend std::ostream &operator<<(std::ostream &, mnozhestva &);
	//friend std::istream &operator>>(std::istream &, mnozhestva &); такой ф-ии нет
public:
	mnozhestva(){ count = 0; mass = new unsigned int[count]; };
	mnozhestva(unsigned int, unsigned int*);	
	mnozhestva(const mnozhestva&);

	// Тут "mnozhestva::" можно не писать
	void mnozhestva::Enter(); // ввод
	void Show(); // вывод
	void community(mnozhestva, mnozhestva);//объединение
	void intersection(mnozhestva, mnozhestva);//пересечение
	void difference(mnozhestva, mnozhestva);//Разность
	bool check(int);//Тут немного поменял
	void ADD(int);//Тут немного поменял
	void deletion();
	~mnozhestva();
};