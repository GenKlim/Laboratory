using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AutomaticRecognizer
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
            using (GraphicsPath capPath = new GraphicsPath())
            {
                Pen pen = new Pen(Color.DarkBlue, 2);
                SolidBrush fontBrush = new SolidBrush(Color.Black);

                //Стрелочка
                capPath.AddLine(-3, 0, 0, 5);
                capPath.AddLine(0, 5, 3, 0);
                pen.CustomEndCap = new CustomLineCap(null, capPath);

                e.Graphics.SmoothingMode = SmoothingMode.HighQuality;

                foreach (NodeControl node in Controls)
                {
                    foreach (var join in node.Joins)
                    {
                        if (join.In == null || join.To == null)
                            continue;

                        if (join.In.IsActive)
                        {
                            pen.Color = join.IsValid ? Color.Green : Color.Red;
                            fontBrush.Color = pen.Color;
                        }
                        else
                        {
                            pen.Color = Color.DarkBlue;
                            fontBrush.Color = ForeColor;
                        }

                        Point center;
                        if (join.In == join.To) // Ребро-петелька
                        {
                            Point In = new Point(join.In.Location.X + join.In.Size.Width / 2, join.In.Location.Y + join.In.Size.Height / 2);

                            int x1 = 10;
                            int x7 = 60;
                            int y9 = 90;

                            e.Graphics.DrawBezier(pen,
                                new Point(In.X - x1, In.Y),
                                new Point(In.X - x7, In.Y - 90),
                                new Point(In.X + x7, In.Y - 90),
                                new Point(In.X + x1, In.Y)
                            );

                            center = new Point(In.X, In.Y - y9);
                        }
                        else // Прямое ребро
                        {
                            Point In = new Point(join.In.Location.X + join.In.Size.Width / 2, join.In.Location.Y + join.In.Size.Height / 2);
                            Point To = GetPointFromBorder(In, join.To);

                            center = new Point((In.X + To.X) / 2, (In.Y + To.Y) / 2 - 20);

                            e.Graphics.DrawLine(pen, In, To);
                        }

                        string text = String.Join(",", join.Label.ToArray());

                        var size = e.Graphics.MeasureString(text, Font);
                        center.Offset((int)-size.Width / 2, (int)-size.Height / 2);

                        e.Graphics.DrawString(text, Font, fontBrush, center);
                    }
                }
            }
        }

        private Point GetPointFromBorder(Point In, Control To)
        {
            Point to_c = new Point(To.Location.X + To.Size.Width / 2, To.Location.Y + To.Size.Height / 2);
            Point forvard = new Point(In.X - to_c.X, In.Y - to_c.Y);

            double r = To.Size.Width / 2 + 10;
            double angle = Math.Atan2(forvard.Y, forvard.X);

            return new Point((int)(to_c.X + r * Math.Cos(angle)), (int)(to_c.Y + r * Math.Sin(angle)));
        }
    }
}