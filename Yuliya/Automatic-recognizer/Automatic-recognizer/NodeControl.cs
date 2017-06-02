using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Automatic_recognizer
{
    public partial class NodeControl : UserControl
    {
        //контроль узла графа

        public List <NodeJoin> Joins;//массив из связей
        private bool isActive;//активно ли состояние

        public NodeControl()//конструктор
        {
            Joins = new List<NodeJoin>();
            InitializeComponent();

            DoubleBuffered = true;
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true);
        }

        public bool IsActive
        {
            get { return isActive; }//считать
            set//установить
            {
                isActive = value;
                Invalidate();
            }
        }
        public void ConnectTo(NodeControl To, string Label)
        {
            Joins.Add(new NodeJoin()
            {
                In = this,//откуда - текущее состояние
                To = To,//куда - что указано в параметрах метода
                Label = Label//подпись
            });
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            ButtonRenderer.DrawParentBackground(e.Graphics, e.ClipRectangle, this);

            Color backColor;//цвет узла графа (состояния)
            if (IsActive)//если состояние активно
                backColor = Color.Orange;
            else//если не активно
                backColor = Color.PapayaWhip;

            e.Graphics.FillEllipse(new SolidBrush(backColor), 1, 1, Width - 2, Height - 2);
            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            e.Graphics.DrawEllipse(new Pen(Color.Black, 2), 1, 1, Width - 3, Height - 3);
            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighSpeed;

            var textSize = e.Graphics.MeasureString(Name, Font);//возвращает величину строки в пикселях
            e.Graphics.DrawString(Name, Font, new SolidBrush(ForeColor), Width / 2 - textSize.Width / 2, Height / 2 - textSize.Height / 2);
        }


    }
}
