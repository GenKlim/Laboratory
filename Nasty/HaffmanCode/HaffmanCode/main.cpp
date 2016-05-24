#include "Haffman.h"

int main()
{
	char cmd;
	string file_in, file_to;

	do
	{
		cout << "Select commant:" << endl;
		cout << " 1.Comress file" << endl;
		cout << " 2.Decompress file" << endl;
		cout << " 0.Exit" << endl;
		cin >> cmd;

		if (cmd == '1' || cmd == '2')
		{
			try
			{
				cout << "Enter input file name:" << endl;
				cin >> file_in;
				cout << "Enter output file name:" << endl;
				cin >> file_to;
				if (cmd == '1')
					Hafman::Compress(file_in, file_to);
				else
					Hafman::Decompress(file_in, file_to);
				cout << "Done." << endl << endl;
			}
			catch (char* msg)
			{
				cout << "Error: " << msg << endl << endl;
			}
		}
	} while (cmd!='0');

	return 0;
}