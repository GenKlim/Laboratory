using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lab5
{
    class Linear_Equation
    {
        private double[] le;

        static Random rand = new Random();
        static StreamReader file = new StreamReader("matrix.txt");
        public Linear_Equation(int n)
        {
            le = new double[n + 1];
        }

        public int CountX
        {
            get { return le.Length-1; }
        }

        public Linear_Equation(double[] arr)
        {
            le = arr;
        }

        public double this[int i]//это чтобы можно было обратиться по индексу
        {
            set { le[i] = value; }
            get { return le[i]; }
        }

        public static Linear_Equation operator +(Linear_Equation a, Linear_Equation b)
        {
            Linear_Equation result = new Linear_Equation(a.CountX);
            for (int i = 0; i <= result.CountX; i++)
                result[i] = a[i] + b[i];
            return result;
        }

        public static Linear_Equation operator -(Linear_Equation a, double b)
        {
            Linear_Equation result = new Linear_Equation(a.CountX);
            for (int i = 0; i <= result.CountX; i++)
                result[i] = a[i] - b;
            return result;
        }

        public static Linear_Equation operator -(Linear_Equation a)
        {
            Linear_Equation result = new Linear_Equation(a.CountX);
            for (int i = 0; i <= result.CountX; i++)
                result[i] = -a[i];
            return result;
        }

        public static Linear_Equation operator -(Linear_Equation a, Linear_Equation b)
        {
            return a + (-b);
        }

        public static Linear_Equation operator *(Linear_Equation a, double r)
        {
            Linear_Equation result = new Linear_Equation(a.CountX);
            for (int i = 0; i <= result.CountX; i++)
                result[i] = a[i] * r;
            return result;
        }
        public static Linear_Equation operator *(double r, Linear_Equation a)
        {
            Linear_Equation result = new Linear_Equation(a.CountX);
            for (int i = 0; i <= result.CountX; i++)
                result[i] = r * a[i];
            return result;
        }

        public static Linear_Equation operator / (double r, Linear_Equation a)
        {
            Linear_Equation result = new Linear_Equation(a.CountX);
            for (int i = 0; i <= result.CountX; i++)
                result[i] = a[i]/r;
            return result;
        }

        public  static  bool operator !=(Linear_Equation a, Linear_Equation b)
        {
            int count = 0;
            for (int i = 0; i <= a.CountX; i++)
                if (a[i] == b[i]) count++;
            if (count > 0) return false;
            else return true;
        }


        public static bool operator ==(Linear_Equation a, Linear_Equation b)
        {
            int count = 0;
            for (int i = 0; i <= a.CountX; i++)
                if (a[i] != b[i]) count++;
            if (count > 0) return false;
            else return true;             
        }


        public static bool operator true(Linear_Equation a)//это типа если уравненрие разрешимое, эта штука не работает
        {
            double count = 0;
            for (int i = 1; i <= a.CountX; i++)
            {
                if (a[i] != 0) count++;
            }
            if (count == 0 && a[0]!=0) return false;
            else return true;
        }


        public static bool operator false(Linear_Equation a)//это если противоречивое, тоже не работает
        {
            double count = 0;
            for (int i = 1; i <= a.CountX; i++)
            {
                if (a[i] == 0) count++;
            }
            if (count == a.CountX && a[0] != 0) return true;
            else return false;
        }

        public override string ToString()
        {
            string s = "";
            for (int i=1; i<=CountX; i++)
            {
                if (this[i] >= 0 && i != 1) s += " + "; else
                    if (this[i] < 0)
                    s += " - ";
                s += Math.Abs(this[i]).ToString()+ "x_" + i.ToString();
            }
            return s+" = "+this[0].ToString();
        }

        public static explicit operator string(Linear_Equation a)
        {
            return a.ToString();
        }

        public Linear_Equation initrand(double a, double b)//задать рандомно
        {  
            int A = (int)(a);
            int B = (int)(b);
            double c;
            for (int i = 0; i <= CountX; i++)
            {
                c = rand.Next(A, B);
                this[i] = c;
            }
            return this;
        }

        public Linear_Equation initfile()//считать из файла, тут все работает
        {
            string line = file.ReadLine();
            string [] mas = line.Split(' ');
            for (int i = 0; i < mas.Length; i++)
            {
                this[i] = double.Parse(mas[i]);
            }
            return this;
        }

    }
}
