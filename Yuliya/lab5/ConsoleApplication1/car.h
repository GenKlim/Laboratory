#ifndef _CAR_H
#define _CAR_H

struct Car
{
	string mark;//марка
	string body;//тип кузова
	int year;//год выпуска
	double mileage;//пробег
	double capacity;//объем двигателя
	bool autoTransmission;//АКП или МКП
};

void print(const Car& car);//вывести на экран информацию о машине
void sortByCapacity(Car* cars, int count);
void swap(Car& x, Car& y);
void selectByBody(Car* cars, int cars_count, const string& body, Car* &result, int &result_count);
void printArray(Car* cars, int count);
void save(Car* cars, int count, const char* file);
void load(Car* &cars, int &count, const char * file);

#endif _CAR_H