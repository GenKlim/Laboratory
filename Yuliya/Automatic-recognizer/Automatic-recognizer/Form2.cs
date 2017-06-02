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

namespace Automatic_recognizer
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
            Bind();
        }

        NodeControl endNode;
        NodeControl CurrentNode;
        int CurrentPosition = 0;//позиция символа в строке

        private async void button1_Click(object sender, EventArgs e)
        {
            string text = textBox1.Text;
            endNode = q7;
            CurrentNode = q0;
            CurrentNode.IsActive = true;
            await Task.Delay(1000);
            while (CurrentPosition < text.Length && CurrentNode != null)//пока не кончились символы и состояние не пустое
            {
                textBox2.Text = text[CurrentPosition].ToString();
                CurrentNode = SetCurrentNode(CurrentNode);//выбираем новое состояние 
                if (CurrentNode != null)
                {
                    CurrentNode.IsActive = true;
                    await Task.Delay(1000);
                    viewport1.Invalidate();
                }
                else break;
            }

            if (CurrentPosition == text.Length && CurrentNode == endNode)
            {
                CurrentNode = SetCurrentNode(q7);
                MessageBox.Show("Цепочка принадлежит языку");
            }
            else
                MessageBox.Show("Цепочка не принадлежит языку");
            Close();
        }

        private NodeControl SetCurrentNode(NodeControl node)
        {
            string text = textBox1.Text;
            if (node != null) node.IsActive = false;//если предыдущее состояние не пустое, убираем свойство активности


            if (CurrentPosition < text.Length) //если символы в тексте не кончились
            {
                char c = text[CurrentPosition];//считываем очередной символ
                foreach (var join in CurrentNode.Joins)//идем по связям состояния
                {
                    join.IsValid = join.Label.Contains(c);//если в строке, которая привязана к ребру, находим такой символ, то isvalid=true;
                    if (join.IsValid)
                    {
                        CurrentPosition++; //увеличиваем позицию символа в строке     
                        return join.To;//если можем перейти, то возвращаем состояние, в которое переходим
                    }
                }
            }
            return null;//иначе не возвращаем ничего
        }

        private void Form2_Shown(object sender, EventArgs e)
        {
            Form1 f1 = (Form1)Owner;
            string text = f1.textBox1.Text;
            textBox1.Text = text;
            Bind();
        }

        private void Bind()
        {
            q0.ConnectTo(q0, "b01"); q0.ConnectTo(q2, "a");
            q1.ConnectTo(q1, "b01"); q1.ConnectTo(q0, "a");
            q2.ConnectTo(q2, "b01"); q2.ConnectTo(q3, "a");
            q3.ConnectTo(q3, "b01"); q3.ConnectTo(q4, "a");
            q4.ConnectTo(q0, "a1"); q4.ConnectTo(q1, "b"); q4.ConnectTo(q5, "0");
            q5.ConnectTo(q1, "b01"); q5.ConnectTo(q6, "a");
            q6.ConnectTo(q0, "b0"); q6.ConnectTo(q2, "a"); q6.ConnectTo(q7, "1");
            q7.ConnectTo(q0, "b01"); q7.ConnectTo(q2, "a");
        }
    }
}
