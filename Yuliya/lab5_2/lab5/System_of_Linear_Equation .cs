using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lab5
{
    class System_of_Linear_Equation
    {
        private Linear_Equation[] sle;
        private Linear_Equation le;

        public System_of_Linear_Equation(int n)
        {
            sle = new Linear_Equation[n];
            
            for (int i=0; i < CountX; i++)
            {
                sle[i] = new Linear_Equation(n);
            }
        }

        public Linear_Equation this[int i]
        {
            set { sle[i] = value; }
            get { return sle[i]; }
        }

        public int CountX
        {
            get { return sle.Length; }
        }

        public override string ToString()//красивый вывод
        {
            string s = "";
            for (int i = 0; i < CountX; i++)
            {
                s += sle[i].ToString() + "\n";
            }
            return s;
        }

        public static explicit operator string(System_of_Linear_Equation a)
        {
            return a.ToString();
        }

        public System_of_Linear_Equation triangular_matrix()//неправильно работает
        {

            //приведение матрицы к треугольному виду

            for (int j = 1; j < CountX; j++)
            {
                for (int i = j; i < CountX; i++)
                {
                    double m1 = this[i-1][j];
                    double m2 = this[i][j];
                    this[i] = this[i] * (m1 / m2);
                    this[i] = this[i] - this[i-1];
                }
            }

            return this;
        }

//решение методом гаусса, вывести массив одномерный

    }
}
