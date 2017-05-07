using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace RegexEditor
{
    public partial class MainForm : Form
    {
        NodeControl rootNode = null;
        NodeControl CurrentNode;
        int CurrentPosition;

        public MainForm()
        {
            InitializeComponent();
            CreateAutomat();
            Reset();
        }

        private void CreateAutomat()
        {
            viewport.Controls.Clear();

            rootNode = new NodeControl();
            rootNode.Name = "S";

            var p1 = rootNode
                .Connect(new NodeControl(), "\\d")
                .Connect(new NodeControl(), "\\d");

            var p2 = p1.Connect(new NodeControl(), "\\s")
                 .Connect(new NodeControl(), "[A-Яа-я]", "\\s")
                 .Connect(new NodeControl(), "\\s", "[A-Яа-я]");

            var p3 = p1.Connect(new NodeControl(), "\\.")
                 .Connect(new NodeControl(), "\\d")
                 .Connect(new NodeControl(), "\\d")
                 .Connect(new NodeControl(), "\\.");

            var p4 = p2.Connect(new NodeControl(), "\\d", "\\s");

            p3.Connect(p4, "\\d");

            p4.Connect(new NodeControl(), "\\d")
               .Connect(new NodeControl(), "\\d")
               .Connect(new NodeControl(), "\\d")
               .Name = "E";

            rootNode.ResetFlag();
            AddNodeToViewport(rootNode);
            viewport.Invalidate();
        }

        /// <summary>
        /// Добавляет узел графа на форму
        /// </summary>
        /// <param name="node">Узел графа</param>
        /// <param name="levelX">Смещение по X</param>
        /// <param name="levelY">Смещение по Y</param>
        private void AddNodeToViewport(NodeControl node, int levelX = 0, int levelY = 0)
        {
            if (node.Flag)
                return;

            viewport.Controls.Add(node);

            node.Flag = true;
            node.Size = new Size(80, 80);
            node.Location = new Point(
               10 + (50 + node.Width) * levelX,
               60 + (50 + node.Height) * levelY);

            foreach (var join in node.Joins)
                AddNodeToViewport(join.To, levelX + 1, levelY++);
        }

        private void button_step_Click(object sender, EventArgs e)
        {
            if (CurrentPosition > text_input.Text.Length)
            {
                Reset();
            }
            else if (CurrentPosition == text_input.Text.Length)
            {
                if (CurrentNode.Joins.Any(j => j.In != j.To))
                    MessageBox.Show("Введенное авражение слишком короткое");
                else
                    MessageBox.Show("Введенное вырыжение входит в язык");

                CurrentPosition++;
            }
            else
            {
                char c = text_input.Text[CurrentPosition];

                foreach (var join in CurrentNode.Joins)
                {
                    bool isValid;

                    switch (join.Label)
                    {
                        case "\\d":
                            isValid = Char.IsDigit(c);
                            break;
                        case "\\s":
                            isValid = Char.IsSeparator(c);
                            break;
                        case "\\.":
                            isValid = c == '.';
                            break;
                        case ".":
                            isValid = true;
                            break;
                        case "[A-Яа-я]":
                            isValid = Char.IsLetter(c);
                            break;
                        default:
                            isValid = c.ToString() == join.Label;
                            break;
                    }

                    if (isValid)
                    {
                        SetCurrentNode(join.To);
                        SetCurrentPosition(CurrentPosition + 1);
                        return;
                    }
                }

                MessageBox.Show("Введенное вырыжение не входит в язык");
            }
        }

        private void button_reset_Click(object sender, EventArgs e)
        {
            Reset();
        }

        private void Reset()
        {
            SetCurrentNode(rootNode);
            SetCurrentPosition(0);
            viewport.Invalidate();
        }

        private void SetCurrentNode(NodeControl node)
        {
            if (CurrentNode != null)
                CurrentNode.IsActive = false;

            node.IsActive = true;
            CurrentNode = node;
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
    }
}