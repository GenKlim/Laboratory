#include "stdafx.h"

void print(const Car& car)//вывести на экран информацию о машине
{
	cout << car.mark << "\t" << car.body << "\t" << car.year << "\t" << car.mileage << "\t" << car.capacity << "\t\t";
	cout << (car.autoTransmission ? "Yes" : "No");
	cout << endl;
}

//void swap(Car x, Car y) - Это работать не будет
void swap(Car& x, Car& y)
{
	Car c = x;
	x = y;
	y = c;
}

void sortByCapacity(Car* cars, int count)
{
	for (size_t i = 0; i < count; i++)
	{
		for (size_t j = i; j < count; j++)
		{
			if (cars[i].capacity < cars[j].capacity)
				swap(cars[i], cars[j]);
		}
	}
}

void selectByBody(Car* cars, int cars_count, const string& body, Car* &result, int &result_count)
{
	result_count = 0;
	for (size_t i = 0; i < cars_count; i++)
	{
		if (cars[i].body == body)
			result_count++;
	}

	result = new Car[result_count];
	for (size_t i = 0, j = 0; j < result_count; i++)
	{
		if (cars[i].body == body)
			result[j++] = cars[i];
	}
}

void printArray(Car* cars, int count)//вывести на экран информацию о машине
{
	cout << "Марка\tКузов\tГод\tПробег\tДвигатель\tКоробка_передач_автомат\n";
	for (size_t i = 0; i < count; i++)
	{
		print(cars[i]);
	}
}

void save(Car * cars, int count, const char * file)
{
	ofstream out(file, ios::binary | ios::out);		//Поток для записи в двоичном режиме

	out.write((const char*)&count, sizeof(int));	//Так записывается int в двоичном виде, первое число в файле - длинна списка

	for (size_t i = 0; i < count; i++)
	{
		int temp = cars[i].body.size();		//Сохранение string
		out.write((const char*)&temp, sizeof(int));
		out.write(cars[i].body.c_str(), temp);

		temp = cars[i].mark.size();
		out.write((const char*)&temp, sizeof(int));
		out.write(cars[i].mark.c_str(), temp);

		out.write((const char*)&cars[i].autoTransmission, sizeof(bool));
		out.write((const char*)&cars[i].capacity, sizeof(double));
		out.write((const char*)&cars[i].mileage, sizeof(double));
		out.write((const char*)&cars[i].year, sizeof(int));
	}

	out.close();
}

void load(Car* &cars, int &count, const char * file)
{
	ifstream in(file, ios::binary | ios::in);		//Поток для записи в двоичном режиме

	in.read((char*)&count, sizeof(int));
	cars = new Car[count];

	int tempInt;
	char* tempChar;

	for (size_t i = 0; i < count; i++) 
	{
		in.read((char*)&tempInt, sizeof(int));
		tempChar = new char[tempInt + 1];
		in.read(tempChar, tempInt);
		tempChar[tempInt] = 0;
		cars[i].body = string(tempChar);

		in.read((char*)&tempInt, sizeof(int));
		tempChar = new char[tempInt + 1];
		in.read(tempChar, tempInt);
		tempChar[tempInt] = 0;
		cars[i].mark = string(tempChar);

		in.read((char*)&cars[i].autoTransmission, sizeof(bool));
		in.read((char*)&cars[i].capacity, sizeof(double));
		in.read((char*)&cars[i].mileage, sizeof(double));
		in.read((char*)&cars[i].year, sizeof(int));
	}

	in.close();
}
