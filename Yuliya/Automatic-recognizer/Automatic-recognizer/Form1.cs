using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Automatic_recognizer
{
    public partial class Form1 : Form
    {
        public string text;

        public Form1()
        {
            InitializeComponent();     
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FSM fsm = new FSM();
            text = textBox1.Text;
            textBox3.Text = "";
            textBox3.Text = fsm.func(text);
            bool check = fsm.CheckString(text);
            if (check)
            {
                textBox2.ForeColor = Color.Green;
                textBox2.Text = "Принадлежит";
            }
            else
            {
                textBox2.ForeColor = Color.Red;
                textBox2.Text = "false";
            }
        }

        private void авторToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Шибанова Юлия Сергеевна\nФакультет компьютерныx и физико-математических наук\nГруппа ФИб-31", "Автор");
        }

        private void темаРаботыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Распознавание стандартных автоматных языков конечными автоматами. Разработка программного приложения-распознавателя заданного языка по его описанию.", "Тема работы");
        }

        private void оПрограммеToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Данная программа с помощью конечного автомата распознает язык следующего вида:\nАлфавит: {a,b,0,1}\nОбязательная конечная подцепочка: a0a1\nКратность вхождения символа 'a' равна четырем");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form2 form2 = new Form2();
            form2.Show(this);
        }
    }
}
