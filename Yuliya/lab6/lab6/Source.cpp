#include "iostream"

using namespace std;

template<typename type, unsigned int size>
class Matrix
{
	typedef Matrix<type, size> thisType;

	type data[size][size];

	bool chekSize(unsigned int row, unsigned int col)
	{
		return row < size && col < size;
	}

public:
	Matrix()
	{
		setAll(0);
	}

	void setAll(type value)
	{
		for (int r = 0; r < size; r++)
		{
			for (int c = 0; c < size; c++)
				data[r][c] = value;
		}
	}

	void set(unsigned int row, unsigned int col, type value)
	{
		if (chekSize(row, col))
			data[row][col] = value;
	}

	type get(unsigned int row, unsigned int col)
	{
		return chekSize(row, col) ? data[row][col] : 0;
	}

	void print()
	{
		for (int r = 0; r < size; r++)
		{
			for (int c = 0; c < size; c++)
				cout << data[r][c] << ' ';
			cout << endl;
		}
		cout << endl;
	}

	thisType& operator*(type b)
	{
		for (int r = 0; r < size; r++)
		{
			for (int c = 0; c < size; c++)
				data[r][c] *= b;
		}
		return *this;
	}

	thisType& operator*(thisType b)
	{
		thisType m;
		for (int r = 0; r < size; r++)
		{
			for (int c = 0; c < size; c++)
			{
				type temp = 0;
				for (int k = 0; k < size; k++)
					temp += data[r][k] * b.data[k][c];

				m.data[r][c] = temp;
			}
		}

		for (int r = 0; r < size; r++)
		{
			for (int c = 0; c < size; c++)
				data[r][c] = m.data[r][c];
		}

		return *this;
	}

	thisType& operator+(thisType b)
	{
		for (int r = 0; r < size; r++)
		{
			for (int c = 0; c < size; c++)
				data[r][c] += b.data[r][c];

		}
		return *this;
	}

	thisType& operator-(thisType b)
	{
		for (int r = 0; r < size; r++)
		{
			for (int c = 0; c < size; c++)
				data[r][c] -= b.data[r][c];
		}
		return *this;
	}

	type determenant()
	{
		if (size == 1)
			return data[0][0];
		else if (size == 2)
			return data[0][0] * data[1][1] - data[0][1] * data[1][0];

		type result = 1;
		thisType m;

		for (int r = 0; r < size; r++) 
		{
			for (int c = 0; c < size; c++)
				m.data[r][c] = data[r][c];
		}

		for (int r = 0; r < size; r++)
		{
			for (int c = r + 1; c < size; c++)
			{
				type b = 0;
				if (m.data[r][r] == 0 && m.data[r][c] != 0)
					return 0;
				else
					b = m.data[c][r] / m.data[r][r];

				for (int k = r; k < size; k++)
					m.data[c][k] = m.data[c][k] - m.data[r][k] * b;
			}
			result *= m.data[r][r];
		}

		return result;
	}
};

int main()
{
	Matrix<double, 3> A, B;

	cout << "A:" << endl;
	A.set(0, 0, 5);
	A.set(1, 1, 7);
	A.set(2, 2, 9);
	A.set(0, 1, 6);
	A.set(0, 2, 7);
	A.set(1, 0, 1);
	A.print();

	cout << "B:" << endl;
	B.set(0, 0, 9);
	B.set(1, 1, 1);
	B.set(2, 2, 2);
	B.set(0, 1, 1);
	B.set(0, 2, 3);
	B.set(1, 0, 4);
	B.print();

	cout << "det(A) = " << A.determenant() << endl;
	cout << "det(B) = " << B.determenant() << endl << endl;

	cout << "A+B" << endl;
	(A + B).print();

	cout << "A-B" << endl;
	(A - B).print();

	cout << "A*B" << endl;
	(A * B).print();

	cout << "A*-5" << endl;
	(A * -5).print();

	return 0;
}