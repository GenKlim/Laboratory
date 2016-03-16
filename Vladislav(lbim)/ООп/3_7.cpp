#include <iostream>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <istream>

using namespace std;

class String
{
	int len;
	char* data;
public:
	String();
	String(char*);
	~String();
	void print();
	void set(char*);
	void run();

	String& operator =(String&);
};

int main(int argc, char* argv[])
{
	String s1, *s2 = new String("TEst TEXt.");
	s1 = *s2;
	delete s2;

	s1.print();
	s1.run();
	s1.print();

	system("pause");
	return 0;
}


String::String()
{
	data = 0;
	len = 0;
}

String::String(char* str)
{
	data = 0;
	set(str);
}

String& String::operator=(String& b)
{
	set(b.data);
	return *this;
}

void String::set(char* str)
{
	if (data != 0)
		delete data;

	int i = -1;
	len = 0;
	while (str[++i])
		len++;

	data = new char[len+1];
	for (int n = 0; n < len+1; n++)
		data[n] = str[n];
}

void String::print()
{
	cout << data << endl;
}

void String::run()
{
	if (len != 10)
		return;

	char* temp = new char[len+1];
	int n = 0;
	for (int i = 0; i < len; i++)
	{
		if (data[i] < 'A' || data[i] > 'Z')
			temp[n++] = data[i];
	}
	temp[n] = 0;
	set(temp);
	delete temp;
}

String::~String()
{
	if (data != 0)
		delete data;
}
