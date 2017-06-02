using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Automatic_recognizer
{
    class viewport: Panel//класс наследуюется от класса Panel
    {
        public viewport()//конструктор
        {
            DoubleBuffered = true;
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true);
        }


        private Point GetPointFromBorder(Point In, Control To)
        {
            Point to_c = new Point(To.Location.X + To.Size.Width / 2, To.Location.Y + To.Size.Height / 2);
            Point forvard = new Point(In.X - to_c.X, In.Y - to_c.Y);

            double r = To.Size.Width / 2 + 10;
            double angle = Math.Atan2(forvard.Y, forvard.X);

            return new Point((int)(to_c.X + r * Math.Cos(angle)), (int)(to_c.Y + r * Math.Sin(angle)));
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            using (GraphicsPath gPath = new GraphicsPath())//создание экземпляра класса GraphicsPath
            {
                Pen pen = new Pen(Color.Black, 1);//перо для стрелок
                SolidBrush fontBrush = new SolidBrush(Color.Black);//кись для текста

                //рисование стрелки
                gPath.AddLine(-2, -2, 0, 3);
                gPath.AddLine(0, 3, 2, -2);

                pen.CustomEndCap = new CustomLineCap(null, gPath);
                e.Graphics.SmoothingMode = SmoothingMode.HighQuality;

                foreach (NodeControl node in Controls)//идем по состояниям
                {
                    foreach (var join in node.Joins)//по связям между состояниями
                    {
                        if (join.In == null || join.To == null)//если связей нет
                            continue;//переходим на следующую итерацию

                        if (join.In.IsActive)//если состояние, откуда идет связь, активно
                        {
                            if (join.IsValid)//если по этой связи переходим
                                pen.Color = Color.Orange;//выбираем перо ораньжевого цвета
                        }
                        else // если состояние, откуда идет связь, не активно
                        {
                            pen.Color = Color.Black;//выбираем перо черного цвета
                            fontBrush.Color = ForeColor;//таким же цветом делаем цвет текста над ребром
                        }

                        Point center;
                        if (join.In == join.To) // если состояние, из которого идет связь, равно состоянию, в которое идет связь, то создаем ребро-петельку
                        {
                            Point In = new Point(join.In.Location.X + join.In.Size.Width / 2, join.In.Location.Y + join.In.Size.Height / 2); //начало отрезка

                            //параметры для кривой 
                            int x1 = 10;
                            int x7 = 60;
                            int y9 = 90;

                            //рисуем кривую  Безье
                            e.Graphics.DrawBezier(pen,
                                new Point(In.X - x1, In.Y),
                                new Point(In.X - x7, In.Y - 90),
                                new Point(In.X + x7, In.Y - 90),
                                new Point(In.X + x1, In.Y)
                            );

                            center = new Point(In.X, In.Y - y9);//координаты центра для подписи
                        }
                        else // если не равны, то рисуем прямое ребро
                        {
                            Point In = new Point(join.In.Location.X + join.In.Size.Width / 2, join.In.Location.Y + join.In.Size.Height / 2);
                            Point To = GetPointFromBorder(In, join.To);

                            center = new Point((In.X + To.X) / 2, (In.Y + To.Y) / 2 - 20);//считаем координаты центра для подписи текста над ребром

                            e.Graphics.DrawLine(pen, In, To);
                        }

                        string text = String.Join(",", join.Label.ToArray());//текст над ребром

                        var size = e.Graphics.MeasureString(text, Font);
                        center.Offset((int)-size.Width / 2, (int)-size.Height / 2);//задаем координаты центра для подписи над ребром

                        e.Graphics.DrawString(text, Font, fontBrush, center);//пишем текст над ребром
                    }
                }
            }
        }


    }
}
