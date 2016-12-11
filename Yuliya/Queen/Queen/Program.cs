using System;
using System.Collections.Generic;
using System.Linq;

namespace Queen
{
    class Program
    {
        /// <summary>
        /// Размер шахмотной доски
        /// </summary>
        private const int Size = 8;

        static void Main(string[] args)
        {
            DateTime startTime = DateTime.Now;  // Засекаем время

            Console.WriteLine("Начинаю перебор");
            int count = 1;

            // Увеличивает количество квин, пока не найдет решение
            while (!Tray(count))
                count++;

            Console.WriteLine("Перебор окончен, затраченно {0} секунд", (DateTime.Now - startTime).TotalSeconds);
            Console.WriteLine("Для блокирования шахмотной доски {0}x{0} понадробится минимум {1} ферзей", Size, count);
            Console.ReadKey();
        }
        
        /// <summary>
        /// Пробует заблокировать доску заданным кличеством квин
        /// </summary>
        /// <param name="count">Количество квин</param>
        private static bool Tray(int count)
        {
            Console.WriteLine("Пробую разместить {0} ферзей", count);
            return Set(count, new Deck(Size));
        }

        /// <summary>
        /// Рекурсивный метод, ищет место для заданного количества квин на доске
        /// Вся магия здесь
        /// </summary>
        /// <param name="count">Сколько еще нужно квин</param>
        /// <param name="master">Доска на которой размещаем</param>
        /// <returns></returns>
        private static bool Set(int count, Deck master)
        {
            if (count == 0) // Если квин не осталось, то проверим есть ли свободные места
                return master.IsFull();

            // Перебирает все комбинации на доске
            for (int i = 0; i < Size; i++)
            {
                for (int j = 0; j < Size; j++)
                {
                    if (master.IsClear(i, j))   // Если клетка свободна, ставим квину на копию доски
                    {
                        Deck deck = new Deck(master);   // Копируем доску, что бы не портить основную
                        deck.SetQueen(i, j);            // Ставим квину на копию доски

                        //Console.WriteLine(deck);      // Показывает как происходит перебор (Вывод в консоль сильно тормозит программу)

                        if (Set(count - 1, deck))       // Рекурсия, пытаемся поставить на копию доски еще count-1 квин
                        {
                            // Если разместили всех квин и не осталось свободных ячеек
                            Console.WriteLine(deck);    // Показывает результат (В обратном порядке)
                            return true;
                        }
                    }
                }
            }

            return false;
        }
    }
}