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
		cout << "Меню:\n";
		cout << "1 - Добавить автомобиль\n";
		cout << "2 - Показать все автомобили\n";
		cout << "3 - Упорядочить по объему двигателя\n";
		cout << "4 - Выбрать автомобиль по типу кузова\n";
		cout << "5 - Найти автомобиль с наибольшим пробегом с коробкой автомат\n";
		cout << "6 - Проверить, есть ли в списке автомобили определенной марки\n";
		cout << "7 - Сохранить в файл '" << baseFileName << "'\n";
		cout << "8 - Загрузить из файла '" << baseFileName << "'\n";
		cout << "0 - Выход\n";

		cin >> choice;

		switch (choice) 
		{
		case 1://добавить новый автомобиль
		{
			Car c;
			cout << "Марка: ";
			SetConsoleCP(1251);
			cin >> c.mark;
			SetConsoleCP(866);
			cout << "Тип кузова: ";
			SetConsoleCP(866);
			cin >> c.body;
			cout << "Год выпуска: ";
			SetConsoleCP(866);
			cin >> c.year;
			cout << "Пробег: ";
			SetConsoleCP(866);
			cin >> c.mileage;
			cout << "Объем двигателя: ";
			SetConsoleCP(866);
			cin >> c.capacity;
			char ch = 0;
			bool run = true;
			while (run)
			{
				cout << "Автоматическая коробка передач? (Y/N): ";
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
					cout << "Введите Y(y) или N(n)\n";
					break;
				}
			}

			/*Тут запись в новый массив большей длины и удаление старого*/
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
		case 2://показать все
			printArray(cars, cars_count);
		break;
		case 3://Упорядочить список автомобилей по объему двигателя по убыванию
			sortByCapacity(cars, cars_count);
			printArray(cars, cars_count);
			cout << endl;
		break;
		case 4://Сделать выборку автомобилей по типу кузова
		{
			string body;
			cout << "Введите тип кузова: ";
			cin >> body;

			Car* result = 0;
			int result_count = 0;
			selectByBody(cars, cars_count, body, result, result_count);

			if (result_count)
			{
				cout << "Результат:\n";
				printArray(result, result_count);
			}
			else
				cout << "Нет машин с таким типом кузова\n";
		}
		break;
		case 5:// Найти автомобиль с наибольшим пробегом с коробкой автомат
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
					cout << "Результат:\n";
					cout << "Марка\t\tКузов\t\tГод\tПробег\t\tДвигатель\t\tКоробка_передач_автомат\n";
					print(cars[result]);
					break;
				}
			}
			cout << "Нет таких машин\n";
		}
		break;
		case 6:
		{
			cout << "Ведите марку автомобиля: ";
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
				cout << "В списке есть автомобиль марки " << mark << endl;
			else 
				cout << "В списке нет автомобиля марки " << mark << endl;
		}
		break;
		case 7:
			save(cars, cars_count, baseFileName);
			cout << "Список сохранен в файл '" << baseFileName << '\'' << endl;
			break;
		case 8:
			load(cars, cars_count, baseFileName);
			printArray(cars, cars_count);
			break;
		case 0:
			break;
		default://неверный ввод
			cout << "Неверный ввод данных\n";
		}
	} 
	while (choice != 0);
	return 0;
}