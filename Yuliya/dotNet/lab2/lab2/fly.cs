using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

namespace lab2
{
    enum Direction : byte { Up, Right, Down, Left };

    class fly
    {
        public const int StepSize = 30;

        private bool isActive = false;
        private Bitmap baseImage;   // исходник картинки
        private Direction trend = Direction.Right;

        public PictureBox Workpb; // рабочее поле PictureBox - поле на котрой будет рабочий Таракан
        public string Name { get; set; }    // Имя таракана
        public int X { set; get; }  // Методы-свойства X и Y – хранение координат
        public int Y { set; get; }  // Не понятно, зачем они вообще нужны. Все же уже есть в workpb

        public bool IsActive    // Свойство, показывает активно ли нсекомое
        {
            get { return isActive; }
            set
            {
                if (isActive != value)  //Если нужно изменить состояние
                {
                    isActive = value;
                    Workpb.BorderStyle = IsActive ? BorderStyle.FixedSingle : BorderStyle.None; // Меняем рамку
                }
            }
        }

        //Конструктор с параметром – панель для таракана и картинка
        public fly(Panel owner, Bitmap img)
        {
            Name = "";
            baseImage = img;

            X = (owner.Width - img.Width) / 2;  // Начальное положение
            Y = (owner.Height - img.Height) / 2;

            Workpb = new PictureBox(); // создание PictureBox
            Workpb.Image = img;
            Workpb.Location = new Point(X, Y);
            Workpb.Size = img.Size;

            owner.Controls.Add(Workpb); // добавляем PictureBox к элементу Panel
        }

        public void Eval(Graphics g, string command)    // Обрабатывает команду
        {
            if (!IsActive)
                return;

            if (command == "Step")
            {
                Rectangle oldBound = Workpb.Bounds; // Запоминаем положение мухи
                Step();

                // Какахи
                g.FillEllipse(
                    new SolidBrush(Color.Brown),
                    oldBound.X + oldBound.Width / 2,
                    oldBound.Y + oldBound.Height / 2,
                    3, 3);
            }
            else
                ChangeTrend(command);
        }

        //Выполнение шага в заданном направлении
        public void Step()
        {
            switch (trend)
            {
                case Direction.Right: X += StepSize; break;
                case Direction.Down: Y += StepSize; break;
                case Direction.Left: X -= StepSize; break;
                case Direction.Up: Y -= StepSize; break;
            }

            Workpb.Location = new Point(X, Y);
        }

        //Изменение направления, параметр – первая буква направления
        public void ChangeTrend(string command)
        {
            trend = (Direction)Enum.Parse(typeof(Direction), command);  // Переводит string в direction
            Bitmap image = (Bitmap)baseImage.Clone();  // Копируем исходник

            switch (trend)  //Поворачиваем исходник, если надо
            {
                case Direction.Right: break;
                case Direction.Down: image.RotateFlip(RotateFlipType.Rotate90FlipNone); break;
                case Direction.Left: image.RotateFlip(RotateFlipType.Rotate180FlipNone); break;
                case Direction.Up: image.RotateFlip(RotateFlipType.Rotate270FlipNone); break;
            }

            Workpb.Image = image;   // Обновляем PictureBox
        }

        public override string ToString()   // Нужно для корректного отображения имени в ListView
        {
            return Name;
        }
    }
}