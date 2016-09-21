using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

namespace lab2
{
    public partial class Form1 : Form
    {
        private List<fly> LC = new List<fly>(); // Список для хранения созданных Тараканов
        private int AlgStep = 0;
        private int bugCount = 0;   // Кол-во мух, для формирования имени новой мухи
        private Bitmap flyImage; // Картинка с мухой
        private bool paintMode = false; // Режим рисования маршрута
        private bool paintModeStart = false; // Разрешает рисовать
        private Direction oldDirection; // Направление, нужно для рисования
        private Point oldPoint; // последняя активная точка, нужно для рисования

        public Form1()
        {
            InitializeComponent();
            flyImage = new Bitmap("fly.png");    // Загружаем картинку с диска только 1 раз
        }

        private void Form1_Load_1(object sender, EventArgs e)
        {
            NewBtn.PerformClick();
        }

        private void NewBtn_Click(object sender, EventArgs e)
        {
            fly cockroach = new fly(Field, flyImage);
            cockroach.Name = "Таракан №" + (++bugCount).ToString(); // увеличиваем bugCount на 1 и даем имя таракану

            bugList.Items.Add(cockroach.ToString());
            LC.Add(cockroach);
        }

        private void addCommandBtn_Click(object sender, EventArgs e)
        {
            Algorithm.Items.Add((sender as Button).Text);
        }

        private void bugList_ItemChecked(object sender, ItemCheckedEventArgs e)
        {
            // Переберает всех насекомых, активирует их если они есть в bugList.CheckedItems
            foreach (var bug in LC)
            {
                bug.IsActive = false;
                foreach (ListViewItem i in bugList.CheckedItems)
                {
                    if (i.Text == bug.Name)
                    {
                        bug.IsActive = true;
                        break;
                    }
                }
            }
        }

        private void timerAlgorithm_Tick(object sender, EventArgs e)
        {
            Graphics field = Field.CreateGraphics();

            if (AlgStep < Algorithm.Items.Count)  // выполнение команды из списка
            {
                // Всю логику в Eval запихал
                foreach (var bug in LC)
                    bug.Eval(field, Algorithm.Items[AlgStep] as string);

                Algorithm.SetSelected(AlgStep++, true);
            }
            else // конец алгоритма
                timerAlgorithm.Stop();
        }

        // Убить всех несекомых!
        private void killAllBtn_Click(object sender, EventArgs e)
        {
            bugCount = 0;
            bugList.Items.Clear();
            Field.Controls.Clear();
            LC.Clear();
            Field.Invalidate();
            Field.Update();
        }

        private void RunBtn_Click(object sender, EventArgs e)
        {
            Field.Invalidate();
            AlgStep = 0;
            timerAlgorithm.Start();
        }
        
        private void ClearBtn_Click(object sender, EventArgs e)
        { 
            Algorithm.Items.Clear();
            Field.Invalidate();
        }

        // Подготовка к рисованию
        private void makePathBtn_Click(object sender, EventArgs e)
        {
            Graphics g = Field.CreateGraphics();

            // Рисует точки, без понятия зачем они вообще нужны
            for (int i = 0; i < Field.Width; i += fly.StepSize)
            {
                for (int j = 0; j < Field.Height; j += fly.StepSize)
                    g.FillRectangle(Brushes.LightGray, i - 2, j - 2, 4, 4);
            }

            // Убираем мух, ставим точки
            // Мухи мешают рисовать
            foreach (var bug in LC)
            {
                bug.Workpb.Visible = false;
                g.FillEllipse(Brushes.Black,
                    bug.X - 10 + bug.Workpb.Width / 2,
                    bug.Y - 10 + bug.Workpb.Height / 2, 20, 20);
            }

            g.DrawString("Режим рисования маршрута\nНажмите на точку и не отпуская кнопки нарисуйте путь", Font, Brushes.DarkRed, new Point(5, 5));
            paintModeStart = false;
            paintMode = true;
        }

        // Разрешает рисование
        private void Field_MouseDown(object sender, MouseEventArgs e)
        {
            if (paintMode && e.Button == MouseButtons.Left)
            {
                oldPoint = getPointByPosition(e.Location);
                oldDirection = Direction.Left;
                Algorithm.Items.Add(oldDirection.ToString());
                paintModeStart = true;
            }
        }

        // Рисует
        private void Field_MouseMove(object sender, MouseEventArgs e)
        {
            if (paintMode && paintModeStart)
            {
                Point nPoint = getPointByPosition(e.Location);

                // Если мышка передвинулась на другую клетку
                // Тут баг: если переместить по диагонали или через несколько клеток сразу, то все поедит и получится бред
                if (nPoint != oldPoint)
                {
                    // Рисуем линию
                    Field.CreateGraphics().DrawLine(Pens.Red,
                        getPositionByPoint(oldPoint),
                        getPositionByPoint(nPoint));

                    // Вычисляем направление движения
                    Point delta = new Point(nPoint.X - oldPoint.X, nPoint.Y - oldPoint.Y);
                    Direction newDir = Direction.Left;

                    if (delta.X > 0)
                        newDir = Direction.Right;
                    else if (delta.X < 0)
                        newDir = Direction.Left;

                    if (delta.Y > 0)
                        newDir = Direction.Down;
                    else if (delta.Y < 0)
                        newDir = Direction.Up;

                    // Если нужно повернуть
                    if (newDir != oldDirection)
                    {
                        Algorithm.Items.Add(newDir.ToString());
                        oldDirection = newDir;
                    }

                    Algorithm.Items.Add("Step");
                    oldPoint = nPoint;
                }
            }
        }

        // Заканчивает рисование
        private void Field_MouseUp(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left && paintMode)
            {
                Field.Invalidate();
                paintMode = false;

                foreach (var bug in LC) // Возвращаем всех мух обратно
                    bug.Workpb.Visible = true;
            }
        }

        // Делят/умножают координаты на StepSize
        private static Point getPointByPosition(Point position)
        {
            return new Point(position.X / fly.StepSize, position.Y / fly.StepSize);
        }

        private static Point getPositionByPoint(Point position)
        {
            return new Point(position.X * fly.StepSize, position.Y * fly.StepSize);
        }

        // Оо
        private void button1_Click(object sender, EventArgs e)
        {
            Algorithm.Items.Clear();
            Algorithm.Items.Add("Down");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Left");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Up");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Right");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Down");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Left");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
            Algorithm.Items.Add("Step");
        }
    }
}