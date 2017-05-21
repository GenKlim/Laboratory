using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace AutomaticRecognizer
{
    public partial class MainForm : Form
    {
        NodeControl rootNode;
        NodeControl endNode;
        NodeControl CurrentNode;
        int CurrentPosition;

        public MainForm()
        {
            InitializeComponent();
            Bind();
            Reset();
        }

        private void Bind()
        {
            rootNode = q0;
            endNode = q7;

            q0.ConnectTo(q0, "b01");
            q0.ConnectTo(q2, "a");

            q1.ConnectTo(q1, "b01");
            q1.ConnectTo(q0, "a");

            q2.ConnectTo(q2, "b01");
            q2.ConnectTo(q3, "a");

            q3.ConnectTo(q3, "b01");
            q3.ConnectTo(q4, "a");

            q4.ConnectTo(q0, "a1");
            q4.ConnectTo(q1, "b");
            q4.ConnectTo(q5, "0");

            q5.ConnectTo(q1, "b01");
            q5.ConnectTo(q6, "a");

            q6.ConnectTo(q0, "b0");
            q6.ConnectTo(q2, "a");
            q6.ConnectTo(q7, "1");

            q7.ConnectTo(q0, "b01");
            q7.ConnectTo(q2, "a");
        }

        // Исполнитеть автомата
        private void button_step_Click(object sender, EventArgs e)
        {
            if (CurrentPosition > text_input.Text.Length)
            {
                Reset();
            }
            else if (CurrentPosition == text_input.Text.Length)
            {
                if (CurrentNode == endNode)
                    MessageBox.Show("Введенное вырыжение входит в язык");
                else
                    MessageBox.Show("Введенное вырыжение не входит в язык");

                CurrentPosition++;
            }
            else
            {
                NodeJoin found = CurrentNode.Joins.FirstOrDefault(j => j.IsValid);

                if (found != null)
                {
                    SetCurrentPosition(CurrentPosition + 1);
                    SetCurrentNode(found.To);
                }
                else
                    MessageBox.Show("Введенное вырыжение не входит в язык");
            }
            viewport1.Invalidate(true);
        }

        private void button_reset_Click(object sender, EventArgs e)
        {
            Reset();
        }

        private void Reset()
        {
            SetCurrentNode(rootNode);
            SetCurrentPosition(0);
            viewport1.Invalidate();
        }

        private void SetCurrentNode(NodeControl node)
        {
            if (CurrentNode != null)
                CurrentNode.IsActive = false;

            node.IsActive = true;
            CurrentNode = node;

            if (text_input.Text.Length > CurrentPosition)
            {
                char c = text_input.Text[CurrentPosition];
                foreach (var join in CurrentNode.Joins)
                {
                    join.IsValid = join.Label.Contains(c);
                }
            }
        }

        private void SetCurrentPosition(int position)
        {
            CurrentPosition = position;

            string input = text_input.Text;
            textBefore.Text = input.Substring(0, position);

            if (position < input.Length)
            {
                textCurrent.Text = input.Substring(position, 1);
                textAfer.Text = input.Substring(position + 1);
            }
            else
            {
                textCurrent.Text = "";
                textAfer.Text = "";
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
    }
}