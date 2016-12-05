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

        // Тип исключения
        public class NotMathException: Exception
        { }  

        public System_of_Linear_Equation(int n)
        {
            sle = new Linear_Equation[n];

            for (int i = 0; i < CountX; i++)
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

        public System_of_Linear_Equation triangular_matrix()
        {
            //приведение матрицы к треугольному виду

            for (int k = 0; k < CountX; k++)
            {
                for (int i = k + 1; i < CountX; i++)
                {
                    double kf = this[i][k] / this[k][k];
                    this[i] -= this[k] * kf;
                }
            }

            return this;
        }

        //Решение СЛАУ
        //решение методом гаусса, вывести массив одномерный
        public double[] Math()
        {
            var result = new double[CountX];

            var trig_sys = triangular_matrix();
            for (int i = CountX - 1; i >= 0; i--)
            {
                if (trig_sys[i][i] == 0)    // Теорема Кронекера-Капелли, вроде
                    throw new NotMathException();    // Бросаем исключение

                double b = trig_sys[i][CountX];

                for (int j = i + 1; j < CountX; j++)
                {
                    b -= trig_sys[i][j] * result[j];
                }

                result[i] = b / trig_sys[i][i];
            }
            
            return result;
        }

    }
}