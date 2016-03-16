#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <cstring>
#include <stdio.h>
#include <stdlib.h>

using namespace std;
#define maxStrLen 256

int main()
{
	char s1[maxStrLen];
	char s2[maxStrLen];
	char **ss1 = new char*[maxStrLen];
	char **ss2 = new char*[maxStrLen];
	cout << "Input first string:" << endl;
	cin.getline(s1, 256);
	char *p = strtok(s1, " .,!?");
	int i = 0;

	while (p != NULL)
	{
		ss1[i] = new char[strlen(p)];
		strcpy(ss1[i], p);
		i++;
		p = strtok(NULL, " .,!?");
	}

	cout << "Input second string:" << endl;
	cin.getline(s2, 256);
	char *p2 = strtok(s2, " .,!?");
	int j = 0;

	while (p2 != NULL)
	{
		ss2[j] = new char[strlen(p2)];
		strcpy(ss2[j], p2);
		j++;
		p2 = strtok(NULL, " .,!?");
	}

	int flag = 0;
	for (int k = 0; k < i; k++)
	{
		for (int l = 0; l < j; l++)
		{
			if (!strcmp(ss1[k], ss2[l]))
			{
				cout << ss1[k] << endl;
				flag = 1;
			}
		}
	}

	if (!flag)
		cout << "No common words" << endl;

	return 0;
}
