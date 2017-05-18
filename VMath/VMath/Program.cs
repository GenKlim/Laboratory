using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace VMath
{
    class Program
    {
        static void Main(string[] args)
        {
            while (true)
            {
                Console.WriteLine("Выберите задание:");
                Console.WriteLine("\t3.");
                Console.WriteLine("\t4.");

                TaskBase task = null;

                switch (Console.ReadLine())
                {
                    case "3": task = new Task3(); break;
                    case "4": task = new Task4(); break;
                }

                if (task != null)
                {
                    Console.Clear();
                    task.Run();
                    Console.WriteLine("Нажмите клавишу для продолжения");
                    Console.ReadKey();
                }

                Console.Clear();
            }
        }
    }
}