using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MPAutomat
{
    /// <summary>
    /// Класс визуального представления графа
    /// </summary>
    public class AutomatPanel : Panel //класс наследуюется от класса Panel
    {
        private List<Connection> joins; //список связей
        private StateControl StartState;
        private StateControl CurrentState;
        private StateControl EndState;
        private int Position = 0; //позиция символа в строке
        private string Input;
        public Stack<string> Stack; // магазин (стек) автомата

        /// <summary>
        /// Конструктор автомата
        /// </summary>
        public AutomatPanel()
        {
            // Устранияет мерцание картинки
            DoubleBuffered = true;
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true);

            // Устанавливаем связи
            joins = new List<Connection>()
            {
                // Формат:
                // Откуда, Куда, Какой символ, Что на стеке, Что положим в стек
                new Connection("Start", "q0", "a", "z", "az"),
                new Connection("Start", "End", "E", "z", "z"),
                new Connection("q0", "q0", "a", "a", "aa"),
                new Connection("q0", "q1", "b", "a", "E"),
                new Connection("q1", "q1", "b", "a", "E"),
                new Connection("q1", "End", "E", "z", "z")
            };

            Reset("");
        }

        /// <summary>
        /// Основной метод, реализует шаг автомата в новое сосояние
        /// </summary>
        /// <returns>Достигнут ли конец</returns>
        public bool Step()
        {
            Position++;

            // Ищем куда можно перейти
            var nextJoin = joins.FirstOrDefault(j => j.IsValid);
            if (nextJoin == null)   // Не куда переходить
            {
                MessageBox.Show(string.Format("Выражение '{0}' не принадлежит языку", Input));
                Reset(Input);
                return true;
            }

            // Если строка кончилась
            if (Position > Input.Length)
            {
                MessageBox.Show(string.Format("Выражение '{0}' принадлежит языку", Input));
                Reset(Input);
                return true;
            }

            // Переходим по связи
            // Controls[...] - поиск визуального представления
            // ...  as StateControl преоброзование к типу StateControl ( Класс визуального представления узла графа )
            CurrentState = Controls[nextJoin.To] as StateControl;
            Stack.Pop();

            foreach (var terminal in nextJoin.StackPush.Reverse())
            {
                if (terminal != 'E')
                    Stack.Push(terminal.ToString());
            }
        
            FindNext();
            return false;
        }

        /// <summary>
        /// Метод, выполняющий поиск доступных связей из текущего узла
        /// Результат работы остается в IsValid каждой связи
        /// Это удобно для отображения в OnPaint
        /// </summary>
        private void FindNext()
        {
            var c = Position < Input.Length ? Input[Position].ToString() : "";

            // заменяем E на пустоту
            if (c == "E")
                c = "";

            // Обносляем состояние всех связей
            foreach (var join in joins)
            {
                // Связь активна только тогда, когда источник активен и выполняется условие перехода
                join.IsValid = CurrentState?.Name == join.In && join.Symbol == c && join.StackPop == Stack.Peek();
            }

            Invalidate(true);   // Обновляем картинку
        }
        
        /// <summary>
        /// Сбрасывает автомат в начальное состояние
        /// </summary>
        /// <param name="input">Входная строка</param>
        public void Reset(string input)
        {
            // Сбрасываем стек
            Stack = new Stack<string>();
            Stack.Push("z");

            // Ищем визуальные обьекты узлов по имени
            StartState = Controls["Start"] as StateControl;
            EndState = Controls["End"] as StateControl;

            Input = input;
            CurrentState = StartState;
            Position = 0;
            FindNext();
        }

        /// <summary>
        /// Метод для рисования стрелок и подписей
        /// </summary>
        protected override void OnPaint(PaintEventArgs e)
        {
            using (GraphicsPath gPath = new GraphicsPath())//создание экземпляра класса GraphicsPath
            {
                Pen pen = new Pen(Color.Black, 2);//перо для стрелок
                SolidBrush fontBrush = new SolidBrush(Color.Black);//кись для текста
                     
                //Все магичиские числа найдены методом тыка

                //рисование шаблона стрелки
                gPath.AddLine(-2, -2, 0, 3);
                gPath.AddLine(0, 3, 2, -2);

                pen.CustomEndCap = new CustomLineCap(null, gPath);
                e.Graphics.SmoothingMode = SmoothingMode.HighQuality;   // Качество сглаживания

                // текст и указатель
                if (!string.IsNullOrEmpty(Input))   // Если текст вообще есть
                {
                    string spaced = string.Join(" ", Input.ToArray());  // Пихаем пробелы между буквами
                    int pos = Math.Min(Position * 2, spaced.Length);

                    int x = (int)e.Graphics.MeasureString(spaced.Substring(0, pos), Font).Width;
                    e.Graphics.DrawString(spaced, Font, fontBrush, 15, 25);
                    e.Graphics.DrawLine(pen, new Point(15 + x + 5, 25 + 30), new Point(15 + x + 5, 25 + 20));
                }

                foreach (var join in joins)//перебираем все связи
                {
                    if (join.In == null || join.To == null)//если связей нет
                        continue;//переходим на следующую итерацию

                    StateControl In = Controls[join.In] as StateControl;
                    StateControl To = Controls[join.To] as StateControl;

                    In.IsSelect = In == CurrentState;
                    if (In.IsSelect)//если состояние, откуда идет связь, активно
                    {
                        pen.Color = join.IsValid ? Color.DarkGreen : Color.Red;
                    }
                    else // если состояние, откуда идет связь, не активно
                    {
                        pen.Color = Color.Black;//выбираем перо черного цвета
                        fontBrush.Color = ForeColor;//таким же цветом делаем цвет текста над ребром
                    }

                    Point center;
                    if (In == To) // если состояние, из которого идет связь, равно состоянию, в которое идет связь, то создаем ребро-петельку
                    {
                        Point InPos = new Point(In.Location.X + In.Size.Width / 2, In.Location.Y + In.Size.Height / 2); //начало отрезка

                        //рисуем кривую  Безье
                        e.Graphics.DrawBezier(pen,
                            new Point(InPos.X - 15, InPos.Y),
                            new Point(InPos.X - 50, InPos.Y - 90),
                            new Point(InPos.X + 50, InPos.Y - 90),
                            new Point(InPos.X + 15, InPos.Y)
                        );

                        center = new Point(InPos.X, InPos.Y - 80);//координаты центра для подписи
                    }
                    else // если не равны, то рисуем прямое ребро
                    {
                        // Какаето лютая алгебра
                        Point InPos = new Point(In.Location.X + In.Size.Width / 2, In.Location.Y + In.Size.Height / 2);
                        Point to_c = new Point(To.Location.X + To.Size.Width / 2, To.Location.Y + To.Size.Height / 2);
                        Point forvard = new Point(InPos.X - to_c.X, InPos.Y - to_c.Y);

                        double r = To.Size.Width / 2 + 10;
                        double angle = Math.Atan2(forvard.Y, forvard.X);

                        Point ToPos = new Point((int)(to_c.X + r * Math.Cos(angle)), (int)(to_c.Y + r * Math.Sin(angle)));

                        center = new Point((InPos.X + ToPos.X) / 2 + 15, (InPos.Y + ToPos.Y) / 2 - 10);//координаты центра для подписи

                        e.Graphics.DrawLine(pen, InPos, ToPos);
                    }

                    string text = join.ToString();//текст над ребром

                    var size = e.Graphics.MeasureString(text, Font);
                    center.Offset((int)-size.Width / 2, (int)-size.Height / 2);//задаем координаты центра для подписи над ребром

                    e.Graphics.DrawString(text, Font, fontBrush, center);//пишем текст над ребром
                }
            }
        }
    }
}