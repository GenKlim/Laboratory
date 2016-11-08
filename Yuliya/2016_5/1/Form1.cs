using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using SharpGL;

namespace opengl
{
    public partial class Form1 : Form
    {
        private float rtri = 0;
        private float rot_x = 0;
        private float rot_y = 0;
        private float Z = -80.0f;
        private OpenGL gl;
        private Model model;
        private bool isMoudeDown = false;
        private Point oldMoudePosition;

        public Form1()
        {
            InitializeComponent();

            viewport = new OpenGLControl();

            // Загружает модельку
            model = new Model("star.obj");  // Звезда
            //model = new Model("Teapot.obj"); // Чайник
            
            gl = viewport.OpenGL;
        }

        private void openGLControl1_OpenGLDraw(object sender, RenderEventArgs e)
        {
            gl.Clear(OpenGL.GL_COLOR_BUFFER_BIT | OpenGL.GL_DEPTH_BUFFER_BIT);
            gl.Enable(OpenGL.GL_DEPTH_TEST);
            
            gl.LoadIdentity();

            gl.Translate(0.0f, 0.0f, Z);

            gl.Rotate(rot_x, 0.0f, -1.0f, 0.0f);//Поворот осей
            gl.Rotate(rot_y, -1.0f, 0.0f, 0.0f);
            gl.Rotate(rtri, 0.0f, 1.0f, 0.0f);

            if (comboBox1.Text == "GL_POLYGON")
                gl.Begin(OpenGL.GL_TRIANGLES);  // Тут не полигон, а треугольник. Это важно
            else
                gl.Begin(OpenGL.GL_LINE_LOOP);
            
            // Рисует модель
            for (int i = 0; i < model.PolygonCount; i++)
            {
                gl.Color(1.0f, i / (float)model.PolygonCount, 0.1f);    //Цвет

                var poly = model.GetPolygon(i);
                gl.Vertex(poly[0].Item1, poly[0].Item2, poly[0].Item3);
                gl.Vertex(poly[1].Item1, poly[1].Item2, poly[1].Item3);
                gl.Vertex(poly[2].Item1, poly[2].Item2, poly[2].Item3);

            }
            gl.End();
            //

            // Рисует оси, хз зачем они тут
            gl.Begin(OpenGL.GL_LINES);

            gl.Color(1.0f, 0.0f, 0.0f);
            gl.Vertex(0.0f, 0.0f, 0.0f);
            gl.Vertex(30.0f, 0.0f, 0.0f);

            gl.Color(0.0f, 1.0f, 0.0f);
            gl.Vertex(0.0f, 0.0f, 0.0f);
            gl.Vertex(0.0f, 30.0f, 0.0f);

            gl.Color(0.0f, 0.0f, 1.0f);
            gl.Vertex(0.0f, 0.0f, 0.0f);
            gl.Vertex(0.0f, 0.0f, 30.0f);

            gl.End();
            //

            gl.Flush();

            rtri += speedBar.Value;
        }

        private void viewport_MouseMove(object sender, MouseEventArgs e)
        {
            if (!isMoudeDown)
                return;

            //Поворот осей
            rot_x += (oldMoudePosition.X - e.X) * 0.1f; // 0.1f это чуствительность
            rot_y += (oldMoudePosition.Y - e.Y) * 0.1f;

            oldMoudePosition = e.Location;
        }

        private void viewport_MouseDown(object sender, MouseEventArgs e)
        {
            oldMoudePosition = e.Location;
            isMoudeDown = true;
        }

        private void viewport_MouseUp(object sender, MouseEventArgs e)
        {
            isMoudeDown = false;
        }

        protected override void OnMouseWheel(MouseEventArgs e)
        {
            Z += e.Delta * 0.02f; // 0.02f это чуствительность колесика
        }
    }
}