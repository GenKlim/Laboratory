using System;
using System.Collections.Generic;
using System.Linq;

namespace Queen
{
    /// <summary>
    /// Класс шахмотной доски
    /// </summary>
    public class Deck
    {
        /// <summary>
        /// Размер доски
        /// </summary>
        public readonly int Size = 0;

        /// <summary>
        /// Двумерный массив ячеек доски
        /// </summary>
        private Cell[,] map;

        /// <summary>
        /// Ячейка шахмотной доски
        /// </summary>
        private enum Cell : byte
        {
            Clear,  // Пустая
            Queen,  // Ферзь
            Attack, // Клетка, которую может аттаковать квина
        }

        /// <summary>
        /// Конструктор, создает доску заданного размера
        /// </summary>
        /// <param name="size">Размер доски</param>
        public Deck(int size)
        {
            map = new Cell[size, size];
            Size = size;
        }

        /// <summary>
        /// Коеструктор, корирует доску
        /// </summary>
        /// <param name="master">Доска, которую копируем</param>
        public Deck(Deck master)
        {
            map = (Cell[,])master.map.Clone();  //Копируем двумерный массив
            Size = master.Size;
        }

        /// <summary>
        /// Проверяет что в ячейки нет квины и ни одна квина не может атаковать эту ячейку
        /// </summary>
        public bool IsClear(int x, int y)
        {
            return map[x, y] == Cell.Clear;
        }

        /// <summary>
        /// Проверяет есть ли свободное место на доске
        /// </summary>
        public bool IsFull()
        {
            for (int i = 0; i < Size; i++)
            {
                for (int j = 0; j < Size; j++)
                {
                    if (map[i, j] == Cell.Clear)
                        return false;
                }
            }
            return true;
        }

        /// <summary>
        /// Ставит ферзя на по зпаданным координатам и отмечает клетки которые она блокирует
        /// </summary>
        public void SetQueen(int x, int y)
        {
            for (int i = 0; i < Size; i++)
            {
                //Рисуем плюсик
                map[i, y] = Cell.Attack;
                map[x, i] = Cell.Attack;

                //Рисуем крестик...
                if (x + i < Size == y + i < Size)
                    map[(x + i) % Size, (y + i) % Size] = Cell.Attack;

                if (x + i < Size != y + Size - i < Size)
                    map[(x + i) % Size, (y + Size - i) % Size] = Cell.Attack;
            }

            map[x, y] = Cell.Queen; //Ставим квину
        }

        /// <summary>
        /// Рисует доску, нужно только для вывода в консоль
        /// </summary>
        public override string ToString()
        {
            string str = "";

            for (int i = 0; i < Size; i++)
            {
                for (int j = 0; j < Size; j++)
                    str += CellToString(map[i, j]) + " ";

                str += "\n";
            }

            return str;
        }

        /// <summary>
        /// Сопостовляет содержимому ячейки символ
        /// </summary>
        /// <param name="cell">Ячейка шахмотной доски</param>
        private string CellToString(Cell cell)
        {
            switch (cell)
            {
                case Cell.Queen: return "O";
                case Cell.Attack: return "-";
                default: return " ";
            }
        }
    }
}