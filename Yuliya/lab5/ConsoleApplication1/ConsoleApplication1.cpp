#include "stdafx.h"

const char* baseFileName = "base.dat";

int main()
{
	setlocale(LC_CTYPE, "rus");

	Car* cars = 0;
	int cars_count = 0;

	int choice;
	do
	{
		cout << "����:\n";
		cout << "1 - �������� ����������\n";
		cout << "2 - �������� ��� ����������\n";
		cout << "3 - ����������� �� ������ ���������\n";
		cout << "4 - ������� ���������� �� ���� ������\n";
		cout << "5 - ����� ���������� � ���������� �������� � �������� �������\n";
		cout << "6 - ���������, ���� �� � ������ ���������� ������������ �����\n";
		cout << "7 - ��������� � ���� '" << baseFileName << "'\n";
		cout << "8 - ��������� �� ����� '" << baseFileName << "'\n";
		cout << "0 - �����\n";

		cin >> choice;

		switch (choice) 
		{
		case 1://�������� ����� ����������
		{
			Car c;
			cout << "�����: ";
			SetConsoleCP(1251);
			cin >> c.mark;
			SetConsoleCP(866);
			cout << "��� ������: ";
			SetConsoleCP(866);
			cin >> c.body;
			cout << "��� �������: ";
			SetConsoleCP(866);
			cin >> c.year;
			cout << "������: ";
			SetConsoleCP(866);
			cin >> c.mileage;
			cout << "����� ���������: ";
			SetConsoleCP(866);
			cin >> c.capacity;
			char ch = 0;
			bool run = true;
			while (run)
			{
				cout << "�������������� ������� �������? (Y/N): ";
				cin >> ch;
				switch (ch)
				{
				case 'Y':
				case 'y':
					c.autoTransmission = true;
					run = false;
					break;
				case 'N':
				case 'n':
					c.autoTransmission = false;
					run = false;
					break;
				default:
					cout << "������� Y(y) ��� N(n)\n";
					break;
				}
			}

			/*��� ������ � ����� ������ ������� ����� � �������� �������*/
			Car* temp = new Car[cars_count + 1];
			for (size_t i = 0; i < cars_count; i++)
				temp[i] = cars[i];

			temp[cars_count] = c;
			cars_count++;
			if (cars_count)
				delete[] cars;
			cars = temp;
		}
		break;
		case 2://�������� ���
			printArray(cars, cars_count);
		break;
		case 3://����������� ������ ����������� �� ������ ��������� �� ��������
			sortByCapacity(cars, cars_count);
			printArray(cars, cars_count);
			cout << endl;
		break;
		case 4://������� ������� ����������� �� ���� ������
		{
			string body;
			cout << "������� ��� ������: ";
			cin >> body;

			Car* result = 0;
			int result_count = 0;
			selectByBody(cars, cars_count, body, result, result_count);

			if (result_count)
			{
				cout << "���������:\n";
				printArray(result, result_count);
			}
			else
				cout << "��� ����� � ����� ����� ������\n";
		}
		break;
		case 5:// ����� ���������� � ���������� �������� � �������� �������
		{
			if (cars_count)
			{
				bool found = cars[0].autoTransmission;
				size_t result = found ? cars[0].mileage : 0;

				for (size_t i = 1; i < cars_count; i++)
				{
					if (cars[i].autoTransmission)
					{
						if (cars[i].mileage > cars[result].mileage)
						{
							result = i;
							found = true;
						}
					}
				}

				if (found)
				{
					cout << "���������:\n";
					cout << "�����\t\t�����\t\t���\t������\t\t���������\t\t�������_�������_�������\n";
					print(cars[result]);
					break;
				}
			}
			cout << "��� ����� �����\n";
		}
		break;
		case 6:
		{
			cout << "������ ����� ����������: ";
			string mark;
			cin >> mark;
			bool found = false;
			for (size_t i = 0; i < cars_count; i++)
			{
				if (cars[i].mark == mark)
				{
					found = true;
					break;
				}
			}
			if (found)
				cout << "� ������ ���� ���������� ����� " << mark << endl;
			else 
				cout << "� ������ ��� ���������� ����� " << mark << endl;
		}
		break;
		case 7:
			save(cars, cars_count, baseFileName);
			cout << "������ �������� � ���� '" << baseFileName << '\'' << endl;
			break;
		case 8:
			load(cars, cars_count, baseFileName);
			printArray(cars, cars_count);
			break;
		case 0:
			break;
		default://�������� ����
			cout << "�������� ���� ������\n";
		}
	} 
	while (choice != 0);
	return 0;
}