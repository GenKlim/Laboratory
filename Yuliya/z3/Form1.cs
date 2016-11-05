using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace z3
{
    public partial class Form1 : Form
    {
        Random rand = new Random();
        bool activeRender = false;

        int N = 100;
        int view = 100;
        int speed = 5;

        List<Vec3> points;

        public Form1()
        {
            InitializeComponent();

            panel1.PaintAction = Panel1_Paint;
        }

        private void Panel1_Paint(Graphics g)
        {
            if (!activeRender)
                return;

            SolidBrush p1 = new SolidBrush(Color.Red);
            int w = panel1.Width;
            int h = panel1.Height;

            foreach (var point in points)
            {
                if (point.Z == 0)
                    point.Z = 1;

                int size = (int)(1 / point.Z * 5000.0f);

                int k = coefRenderScale.Value;
                int x = (int)(w / 2 + (point.X * view / point.Z * k));
                int y = (int)(h / 2 + (point.Y * view / point.Z * k));

                x -= size / 2;
                x -= size / 2;

                g.FillEllipse(p1, x, y, size, size);

                if (point.Z > view)
                    point.Z -= speed;
                else
                    respawn(point);
            }

            panel1.Invalidate();
        }

        private void respawn(Vec3 p)
        {
            p.X = -10 * view + rand.Next(20 * view);
            p.Y = -10 * view + rand.Next(20 * view);
            p.Z = view + rand.Next(20 * view);
        }

        private void start_Click(object sender, EventArgs e)
        {
            activeRender = !activeRender;

            if (activeRender)
            {
                points = new List<Vec3>();
                for (int i = 0; i < N; i++)
                {
                    Vec3 point = new Vec3();
                    respawn(point);
                    points.Add(point);
                }

                panel1.Invalidate();
            }
        }

        private void coefView_Scroll(object sender, EventArgs e)
        {
            view = ((TrackBar)(sender)).Value;
        }

        private void coefSpeed_Scroll(object sender, EventArgs e)
        {
            speed = ((TrackBar)(sender)).Value;
        }
    }
}