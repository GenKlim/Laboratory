#include "module1.h"
#include "module2.h"

#define file1 "test1.txt"
#define file2 "test2.dat"

int main()
{
	cout << "TEST MODULE 1" << endl << endl;
	module1::create(file1);
	module1::print(file1);
	module1::append(file1, 21);
	module1::append(file1, 12);
	module1::print(file1);
	module1::copyDiv7("test1_div7.txt", file1);
	
	cout << endl << "TEST MODULE 2" << endl << endl;

	module2::createInText(file2, "test2.txt");
	module2::print(file2);
	module2::append(file2, { 0, 5432151, "A.I.O", "Lenina 24" });
	module2::change(file2, 2, "P.A.G.");
	module2::print(file2);

	system("pause");
	return EXIT_SUCCESS;
}
