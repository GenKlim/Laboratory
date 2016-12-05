using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lab5
{
    class Program
    {
        static void Main(string[] args)
        {

            int m = 3;
            System_of_Linear_Equation b = new System_of_Linear_Equation(m);


            for (int i = 0; i < m; i++)
            {
                b[i] = b[i].initfile();
            }

            Console.WriteLine("Ваша система линейных уравнений:");
            Console.WriteLine("");
            Console.WriteLine((string)b);
            Console.WriteLine("Приведение к треугольному виду:");
            Console.WriteLine("");
            Console.WriteLine((string)b.triangular_matrix());
            Console.ReadKey();
        }
    }
}
