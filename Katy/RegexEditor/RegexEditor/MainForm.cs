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

        // Инициализация формы
        public MainForm()
        {
            InitializeComponent();
            CreateAutomat();    // Создание автомата
            Reset();    // Сброс симуляции
        }

        // Создание автомата
        private void CreateAutomat()
        {
            //Удаляем все что было во вьюпорте
            viewport.Controls.Clear();

            // Стартовый узел
            rootNode = new NodeControl();
            rootNode.Name = "S";

            // Создае узлы и ребра
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

            
            rootNode.ResetFlag();// Сбрасываем флаг защиты от цикличного обхода
            AddNodeToViewport(rootNode);//Добавляем все узлы связвнные со стартового узла во вьюпорт
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
            if (node.Flag)  // Защита от цикличного обхода
                return;

            viewport.Controls.Add(node);
            // Раставляем узлы на форме
            node.Flag = true;
            node.Size = new Size(80, 80);
            node.Location = new Point(
               10 + (50 + node.Width) * levelX,
               60 + (50 + node.Height) * levelY);

            foreach (var join in node.Joins)// Добавляем дочерние узлы
                AddNodeToViewport(join.To, levelX + 1, levelY++);
        }

        // Событие клика по кнопке Шаг, симулирует один такт автомата
        private void button_step_Click(object sender, EventArgs e)
        {
            if (CurrentPosition > text_input.Text.Length)   // Если автомат уже завершил работу
            {
                Reset();    // Сборос симуляции
            }
            else if (CurrentPosition == text_input.Text.Length)  // Если автомат завершает работу
            {
                if (CurrentNode.Joins.Any(j => j.In != j.To))   // Дошли до конца?
                    MessageBox.Show("Введенное авражение слишком короткое");
                else
                    MessageBox.Show("Введенное вырыжение входит в язык");

                CurrentPosition++;
            }
            else
            {
                char c = text_input.Text[CurrentPosition];  // Читаем очередной символ из строки

                foreach (var join in CurrentNode.Joins) // Ищем ребро по которому можно перейти
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

                    if (isValid)    // Если по это ребру можно пройти
                    {
                        SetCurrentNode(join.To);    // То переходим
                        SetCurrentPosition(CurrentPosition + 1);
                        return; // Выходим из ф-ии
                    }
                }
                // Не нашли ребра по которому можно перейти
                MessageBox.Show("Введенное вырыжение не входит в язык");
            }
        }

        private void button_reset_Click(object sender, EventArgs e)
        {
            Reset(); // Сборос симуляции
        }

        // Сборос симуляции
        private void Reset()
        {
            SetCurrentNode(rootNode); //Переходим на корневой узел
            SetCurrentPosition(0);
            viewport.Invalidate();
        }

        // Устанавливает активный узел автомата
        private void SetCurrentNode(NodeControl node)
        {
            if (CurrentNode != null)    // Если был активнй узел
                CurrentNode.IsActive = false;   // Отключает его

            node.IsActive = true;   // Включает текущий узел
            CurrentNode = node;
        }
        
        // Устанавливает позиция обрабатываемого символа в тексте
        private void SetCurrentPosition(int position)
        {
            CurrentPosition = position;

            // Обновляем текстовые поля, те что слева на форме
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