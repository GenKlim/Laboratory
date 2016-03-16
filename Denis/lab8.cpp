#include <iostream>
#include <conio.h>

using namespace std;

/*
	Разработать программу, которая вводит адрес электронной 
	почты и проверяет наличие имени в адресе.
*/

void main()
{
	char email[50];
	bool valid = false;

	while (!valid)
	{
		cout << "Enter e-mail: ";
		cin >> email;

		int i = 0;;
		int nameLen = 0;
		int domenLen = 0;
		bool dog = false;
		while (email[i])
		{
			if (email[i] == '@')
				dog = true;
			else
			{
				if (dog)
					domenLen++;
				else
					nameLen++;
			}
			i++;
		}

		valid = nameLen && dog && domenLen;
		if(!valid)
			cout << "E-main is not valid. Try again." << endl;
	}
	
	cout << "Email valid!" << endl;

	system("pause");
}