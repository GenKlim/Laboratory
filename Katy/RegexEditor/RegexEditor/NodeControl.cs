using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RegexEditor
{
    /// <summary>
    /// Узел графа
    /// </summary>
    public partial class NodeControl : UserControl
    {
        public List<NodeJoin> Joins = new List<NodeJoin>(); // Список связей
        public static int NodeCounter = 0; // Счетчик узлов
        private bool isActive;  // Флаг активности узла
        private bool isMouseHover;// Флаг выделения узла
        private bool isDrag;    // Флаг для перетягивая узлов
        public bool Flag;   // Флаг для защиты от циклического обхода
        Point mouseOffest;  // Позиция курсора в момент начала перетягивания узла

        // Инкапсуляция флага активности
        public bool IsActive
        {
            get => isActive;
            set
            {
                isActive = value;
                Invalidate();   // Вызываем перерисовку узла
            }
        }

        // Конструктор
        public NodeControl()
        {
            InitializeComponent();
            Name = string.Format("q{0}", NodeCounter++);    // Формируем имя узла

            DoubleBuffered = true; // Включает двойной буффер для устранения мерцания при перерисовки картинки
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true);
        }

        // Цикличный сброс флага зашщиты
        public void ResetFlag()
        {
            if (!Flag)
                return;

            Flag = false;
            foreach (var join in Joins)
                join.To.ResetFlag();
        }

        // Связывалка двух узлов
        public NodeControl Connect(NodeControl destenation, string Label, string JoinToSelf = "")
        {
            // Создаем ребро и добавляем его в список
            Joins.Add(new NodeJoin(this, destenation, Label));

            if(!string.IsNullOrEmpty(JoinToSelf))
                Joins.Add(new NodeJoin(this, this, JoinToSelf));

            return destenation;
        }

        // Переопределяем метод отрисовки узла
        protected override void OnPaint(PaintEventArgs e)
        {
            ButtonRenderer.DrawParentBackground(e.Graphics, e.ClipRectangle, this); // Имитация прозрачноти (узел на самом деле квадратный а не круглый)

            // Выбор цвета узла
            Color backColor;
            if (IsActive)
            {
                backColor = Color.LightYellow;
            }
            else
            {
                if (isMouseHover)
                    backColor = Color.LightSteelBlue;
                else
                    backColor = SystemColors.Control;
            }

            // Рисует круги и текст
            e.Graphics.FillEllipse(new SolidBrush(backColor), 2, 2, Width - 4, Height - 4);
            
            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            e.Graphics.DrawEllipse(new Pen(Color.Black, 3), 1, 1, Width - 3, Height - 3);
            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighSpeed;

            var textSize = e.Graphics.MeasureString(Name, Font);
            e.Graphics.DrawString(Name, Font, new SolidBrush(ForeColor),
                Width / 2 - textSize.Width / 2,
                Height / 2 - textSize.Height / 2);
        }
        
        // Метод для перетачкивания узла, двигает узел за курсором
        protected override void OnMouseMove(MouseEventArgs e)
        {
            base.OnMouseMove(e);
            if(isDrag)
            {
                Point loc = Parent.PointToClient(MousePosition);
                loc.Offset(-mouseOffest.X, -mouseOffest.Y);

                Location = loc;
                Invalidate(false);
            }
        }

        // Метод для перетачкивания узла, начало перетаскивая
        protected override void OnMouseDown(MouseEventArgs e)
        {
            mouseOffest = e.Location;
            BringToFront();
            isDrag = true;
        }

        // Метод для перетачкивания узла, конец перетаскивания
        protected override void OnMouseUp(MouseEventArgs e)
        {
            isDrag = false;
            Parent.Invalidate(false);
        }

        // Подствечивает узел
        protected override void OnMouseEnter(EventArgs e)
        {
            isMouseHover = true;
            Invalidate(false);
        }

        // Вырубает подсветку узла
        protected override void OnMouseLeave(EventArgs e)
        {
            isMouseHover = false;
            isDrag = false;
            Invalidate(false);
        }

        // Переопределяем метод преобразования в строку
        public override string ToString()
        {
            return String.Join(", ", Joins.Select(j => string.Format("{0}->{1}", j.Label, j.To)));
        }
    }
}