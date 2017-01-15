using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Skydiver
{
    public partial class MainForm : Form
    {
        private Graphics gViwe;
        private Graphics gDiagram;
        private int FPS = 30;
        private int diagramPos = 0;

        private double Mass;
        private double K;
        private double TimeScale;
        private double F_H;
        private Vec2 Position;
        private Vec2 V;
        private Vec2 A;
        private Vec2 G;
        private Vec2 F;

        public MainForm()
        {
            InitializeComponent();
        }

        protected override void OnResize(EventArgs e)
        {
            base.OnResize(e);
            gViwe = viwe.CreateGraphics();
            gDiagram = diagram.CreateGraphics();
        }

        private void StartStopBtn_Click(object sender, EventArgs e)
        {
            if (StartStopBtn.Text == "Старт")
            {
                Position = new Vec2(0, double.Parse(start_h.Text));
                V = new Vec2(double.Parse(start_v_x.Text), double.Parse(start_v_y.Text));
                F = new Vec2(double.Parse(const_f_x.Text), double.Parse(const_f_y.Text));
                A = new Vec2(0, 0);
                G = new Vec2(0, double.Parse(const_g.Text));
                K = double.Parse(const_k.Text);
                F_H = double.Parse(const_f_h.Text);
                Mass = double.Parse(const_m.Text);
                TimeScale = double.Parse(const_ts.Text);

                diagramPos = 20;
                gDiagram.Clear(BackColor);

                int offest = diagram.Height / 2;
                gDiagram.DrawLine(Pens.Black, diagramPos, offest, diagram.Width, offest);
                gDiagram.DrawString("0", Font, Brushes.Black, 0, offest - 5);
                gDiagram.DrawString("+V", Font, Brushes.Black, 0, offest - 35);
                gDiagram.DrawString("-V", Font, Brushes.Black, 0, offest + 25);
                
                StartStopBtn.Text = "Стоп";

                SimulateWorker.RunWorkerAsync();
            }
            else
            {
                SimulateWorker.CancelAsync();
                StartStopBtn.Text = "Старт";
                Position.Y = 0;
            }
        }

        private void SimulateWorker_DoWork(object sender, DoWorkEventArgs e)
        {
            while (Position.Y > 0)
            {
                // Сопротивление воздуха, направленно против движения тела
                var force = (V * V * K) * -new Vec2(Math.Sign(V.X), Math.Sign(V.Y));
                
                force -= G * Mass;

                if (Position.Y <= F_H)  //Если вошли в зону теплого воздуха, добавляет силу потока
                    force += F;

                // Если я еще помню физику...
                // TimeScale это шаг симуляции
                A = force / Mass;
                V += A * TimeScale;
                Position += V * TimeScale;

                // Сообщаем что нужно обновить графики
                SimulateWorker.ReportProgress(0);
                //Приостанавливает симуляцию. Если убрать то симуляция произойдет почти мнгновенно и анимация пользователь не увидит анимации
                Thread.Sleep(FPS);
            }
        }

        private void SimulateWorker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            if (IsDisposed)
                return;

            try
            {
                gViwe.Clear(BackColor);

                int ground = 20;
                int offest = viwe.Height - ground;

                string text_v = string.Format("V={0:0.00}м/с  ({1})\nA={2:0.00}м/с^2  ({3})", V.Length(), V, A.Length(), A);

                gViwe.FillRectangle(Brushes.Brown, 0, viwe.Height - ground, viwe.Width, ground);
                gViwe.DrawString(text_v, Font, Brushes.Black, (int)Position.X + 12, offest - (int)Position.Y - 30);

                gViwe.DrawLine(Pens.Blue, 0, offest - (int)F_H, viwe.Width, offest - (int)F_H);
                gViwe.FillEllipse(Brushes.Black, (int)Position.X - 5, offest - (int)Position.Y - 9, 9, 9);
                
                offest = diagram.Height/2;
                
                gDiagram.FillRectangle(Brushes.Blue, diagramPos, offest - (int)V.Y, 1, 1);
                gDiagram.FillRectangle(Brushes.Red, diagramPos, offest - (int)V.X, 1, 1);
                diagramPos++;
            }
            catch
            {
                Position.Y = 0;
            }
        }

        private void SimulateWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            StartStopBtn.Text = "Старт";
        }
    }
}