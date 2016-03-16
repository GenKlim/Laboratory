#ifndef _CAR_H
#define _CAR_H

struct Car
{
	string mark;//�����
	string body;//��� ������
	int year;//��� �������
	double mileage;//������
	double capacity;//����� ���������
	bool autoTransmission;//��� ��� ���
};

void print(const Car& car);//������� �� ����� ���������� � ������
void sortByCapacity(Car* cars, int count);
void swap(Car& x, Car& y);
void selectByBody(Car* cars, int cars_count, const string& body, Car* &result, int &result_count);
void printArray(Car* cars, int count);
void save(Car* cars, int count, const char* file);
void load(Car* &cars, int &count, const char * file);

#endif _CAR_H