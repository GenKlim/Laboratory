using System;
using System.Windows.Forms;

namespace MPAutomat
{
    /// <summary>
    /// Класс формы
    /// </summary>
    public partial class MainForm : Form
    {
        /// <summary>
        /// Конструктор
        /// </summary>
        public MainForm()
        {
            InitializeComponent();
            automat.Reset(inputBox.Text);
            UpdateStackBox();

            animTimer.Interval = 750; // Скорость анимации (длительность шага) в миллисекундах
        }

        /*
            Тут просто события с кнопок управляют автоматом и таймером
            Сам автомат в классе AutomatPanel (он же контейнер для узлов и он же отображает стрелки)
            animTimer - таймер для анимации, вызывает animTimer_Tick
        */

        private void buttonReset_Click(object sender, EventArgs e)
        {
            automat.Reset(inputBox.Text);
            UpdateStackBox();
            animTimer.Enabled = false;
        }

        private void buttonStep_Click(object sender, EventArgs e)
        {
            automat.Step();
            UpdateStackBox();
            animTimer.Enabled = false;
        }

        private void buttonPlay_Click(object sender, EventArgs e)
        {
            animTimer.Enabled = true;
        }

        private void buttonPause_Click(object sender, EventArgs e)
        {
            animTimer.Enabled = false;
        }

        private void animTimer_Tick(object sender, EventArgs e)
        {
            animTimer.Enabled = false;
            animTimer.Enabled = !automat.Step();
            UpdateStackBox();
        }
        
        private void buttonCheck_Click(object sender, EventArgs e)
        {
            automat.Reset(inputBox.Text);
            while (!automat.Step()) { } // Шагаем пока можем
        }

        /// <summary>
        /// Обновляет информацию о стеке на экране
        /// </summary>
        private void UpdateStackBox()
        {
            stack.Items.Clear();
            stack.Items.AddRange(automat.Stack.ToArray());
        }
    }
}
