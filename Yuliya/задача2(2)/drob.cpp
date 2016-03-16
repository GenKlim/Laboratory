#include "stdafx.h"
#include "drob.h"


drob::drob(double ch,double zn)
{
	this->ch = ch;
	this->zn = zn;
}

drob::drob(const drob & a)
{
	this->ch = a.ch;
	this->zn = a.zn;
}

drob drob::reducing(drob a)//сокращение дроби
{
	int nod;
	int b = a.ch;
	int k = a.zn;
	while ((k != 0) && (b != 0))
	{
		if (k > b)
			k = k%b;
		else b = b%k;
	}
	nod = k + b;
	drob c(a.ch / nod, a.zn / nod);
	return c;
}

drob drob::power(drob a, int n)//вовезедение в степень
{
	drob c(pow(a.ch, n), pow(a.zn, n));
	return drob::reducing(c);
}

drob drob::readInKeyboard()
{
	int ch, zn;
	std::cout << "Введите числитель: ";
	std::cin >> ch;
	std::cout << "Введите знаменатель: ";
	std::cin >> zn;
	return drob(ch, zn);
}

drob drob::operator + (drob & a)//перегрузка оператора сложения
{
	int o = a.zn*zn;//общий знаменатель
	int d1 = o / zn;//дополнительный множитель для 1 числа
	int d2 = o / a.zn;//дополнительный множитель для 2 числа
	drob c(ch*d1 + a.ch*d2, o);
	return drob::reducing(c);
}

drob drob::operator - (drob & a)//перегрузка оператора вычитания
{
	int o = a.zn*zn;//общий знаменатель
	int d1 = o / zn;//дополнительный множитель для 1 числа
	int d2 = o / a.zn;//дополнительный множитель для 2 числа
	drob c(ch*d1 - a.ch*d2, o);
	return drob::reducing(c);
}

drob drob::operator * (drob & a)//перегрузка оператора умножения
{
	drob c(ch*a.ch,zn*a.zn);
	return drob::reducing(c);
}

drob drob::operator / (drob & a)//перегрузка оператора деления
{
	if (a.ch == 0)
	{
		std::cout << "Деление на ноль!" << std::endl;
		return drob();
	}

	drob c(ch*a.zn, zn*a.ch);
	return drob::reducing(c);
}


std::ostream &operator<<(std::ostream &output, drob &number)
{
	output << number.ch << " /" << number.zn;
	return output;
}


drob::~drob()
{
}
