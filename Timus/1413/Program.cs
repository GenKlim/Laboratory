using System;

class Program
{
    static double D = Math.Sqrt(2) / 2;
    static double[] deltaX = { -D,  0,  D, -1, 0, 1, -D, 0, D };
    static double[] deltaY = { -D, -1, -D,  0, 0, 0,  D, 1, D };

    static void Main(string[] args)
    {
        double x = 0;
        double y = 0;

        foreach (char c in Console.ReadLine())
        {
            if (c == '0')
                break;
            
            x += deltaX[c - '1'];
            y += deltaY[c - '1'];
        }

        Console.WriteLine("{0:F10} {1:F10}", x, y);
    }
}