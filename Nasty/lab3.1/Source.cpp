#include <iostream>

using namespace std;


int comparestr(char s1[], char s2[])
{
	int i = 0;
	while ((s1[i] != '\0') && (s2[i] != '\0'))
	{
		if (s1[i] != s2[i])
			return i;
		i++;
	}
	return -1;
}

int main()
{
	char a[] = "Hello!";
	char b[] = "Hell0!";

	int index = comparestr(a, b);

	if (index != -1)
		cout << index << endl;
	else
		cout << "Строки совподают" << endl;

	return 0;
}