using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MPAutomat
{
    /// <summary>
    /// Класс визуального представления узла графа
    /// </summary>
    public partial class StateControl : UserControl
    {
        public bool IsSelect; //активно ли состояние

        public StateControl()
        {
            // Устранияет мерцание картинки
            DoubleBuffered = true;
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true);
        }

        // Рисует круг с обводкой и текстом внутри
        protected override void OnPaint(PaintEventArgs e)
        {
            ButtonRenderer.DrawParentBackground(e.Graphics, e.ClipRectangle, this); // Магия для имитации прозрачности, по сити просто рисует то что стирает

            Color borderColor = IsSelect ? Color.ForestGreen : Color.DarkGray;

            e.Graphics.FillEllipse(new SolidBrush(Color.WhiteSmoke), 1, 1, Width - 2, Height - 2);
            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            e.Graphics.DrawEllipse(new Pen(borderColor, 1), 1, 1, Width - 2, Height - 2);
            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighSpeed;

            var textSize = e.Graphics.MeasureString(Name, Font);
            e.Graphics.DrawString(Name, Font, new SolidBrush(ForeColor), Width / 2 - textSize.Width / 2, Height / 2 - textSize.Height / 2);
        }
    }
}
