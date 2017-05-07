using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RegexEditor
{
    public class Viewport : Panel
    {
        public Viewport()
        {
            DoubleBuffered = true;
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true);
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            Pen pen = new Pen(Color.DarkGray, 3);
            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;

            foreach (NodeControl node in Controls)
            {
                foreach (var join in node.Joins)
                {
                    Point center;
                    if (join.In == join.To) // Ребро-петелька
                    {
                        Point In = new Point(join.In.Location.X + join.In.Size.Width / 2, join.In.Location.Y + join.In.Size.Height / 2);

                        e.Graphics.DrawBezier(pen,
                            new Point(In.X - 10, In.Y),
                            new Point(In.X - 70, In.Y - 100),
                            new Point(In.X + 70, In.Y - 100),
                            new Point(In.X + 10, In.Y)
                        );

                        center = new Point(In.X, In.Y - 90);
                    }
                    else // Прямое ребро
                    {
                        Point In = new Point(join.In.Location.X + join.In.Size.Width / 2, join.In.Location.Y + join.In.Size.Height / 2);
                        Point To = new Point(join.To.Location.X + join.To.Size.Width / 2, join.To.Location.Y + join.To.Size.Height / 2);
                        center = new Point((In.X + To.X) / 2, (In.Y + To.Y) / 2 - 20);

                        e.Graphics.DrawLine(pen, In, To);
                    }

                    var size = e.Graphics.MeasureString(join.Label, Font);
                    center.Offset((int)-size.Width/2, (int)-size.Height/2);

                    e.Graphics.DrawString(join.Label, Font, Brushes.Red, center);
                }
            }
        }
    }
}