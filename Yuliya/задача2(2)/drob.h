#pragma once
#include <iostream>
#include <fstream>
class drob
{
private:
	double ch;//числитель
	double zn;//знаменатель

	friend std::ostream &operator<<(std::ostream &, drob &);
	//friend std::istream &operator>>(std::istream &, drob &); такой ф-ии нет
public:
	drob(){ ch = 0; zn = 0; };
	drob(double, double);
	drob(const drob&);
	~drob();

	void setch(double value){ ch = value; }
	double getch(){ return ch; }

	void setzn(double value){ zn = value; }
	double getzn(){ return zn; }

	static drob reducing(drob);
	drob operator+(drob &);
	drob operator-(drob &);
	drob operator*(drob &);
	drob operator/(drob &);
	static drob power(drob, int);
	static drob readInKeyboard();
};

