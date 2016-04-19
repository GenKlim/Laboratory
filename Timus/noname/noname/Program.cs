using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Введите количество напитков:");
        int count = int.Parse(Console.ReadLine());
        int result = 0;
        for (int i = 2; i <= count; i++)
            result += A(count, i);

        Console.WriteLine("Можно составить {0} различных коктейлей.", result);
        Console.ReadKey();
    }

    static int Factorial(int x)
    {
        if (x <= 1)
            return 1;
        else
            return x * Factorial(x - 1);
    }

    static int A(int n, int k)
    {
        return Factorial(n) / Factorial(n - k);
    }
}