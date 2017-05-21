namespace AutomaticRecognizer
{
    partial class MainForm
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.text_input = new System.Windows.Forms.TextBox();
            this.button_step = new System.Windows.Forms.Button();
            this.button_reset = new System.Windows.Forms.Button();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.textBefore = new System.Windows.Forms.Label();
            this.textCurrent = new System.Windows.Forms.Label();
            this.textAfer = new System.Windows.Forms.Label();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.справкаToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.авторToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.темаРаботыToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.оПрограммеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewport1 = new AutomaticRecognizer.Viewport();
            this.q7 = new AutomaticRecognizer.NodeControl();
            this.q6 = new AutomaticRecognizer.NodeControl();
            this.q5 = new AutomaticRecognizer.NodeControl();
            this.q4 = new AutomaticRecognizer.NodeControl();
            this.q2 = new AutomaticRecognizer.NodeControl();
            this.q3 = new AutomaticRecognizer.NodeControl();
            this.q0 = new AutomaticRecognizer.NodeControl();
            this.q1 = new AutomaticRecognizer.NodeControl();
            this.button_chek = new System.Windows.Forms.Button();
            this.flowLayoutPanel1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.viewport1.SuspendLayout();
            this.SuspendLayout();
            // 
            // text_input
            // 
            this.text_input.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.text_input.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.text_input.Location = new System.Drawing.Point(12, 37);
            this.text_input.Name = "text_input";
            this.text_input.Size = new System.Drawing.Size(501, 29);
            this.text_input.TabIndex = 3;
            this.text_input.Text = "a00aa0aba1aa0a1";
            this.text_input.TextChanged += new System.EventHandler(this.button_reset_Click);
            // 
            // button_step
            // 
            this.button_step.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.button_step.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.button_step.Location = new System.Drawing.Point(519, 37);
            this.button_step.Name = "button_step";
            this.button_step.Size = new System.Drawing.Size(139, 29);
            this.button_step.TabIndex = 4;
            this.button_step.Text = "Шаг";
            this.button_step.UseVisualStyleBackColor = true;
            this.button_step.Click += new System.EventHandler(this.button_step_Click);
            // 
            // button_reset
            // 
            this.button_reset.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.button_reset.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.button_reset.Location = new System.Drawing.Point(809, 37);
            this.button_reset.Name = "button_reset";
            this.button_reset.Size = new System.Drawing.Size(110, 29);
            this.button_reset.TabIndex = 5;
            this.button_reset.Text = "Сброс";
            this.button_reset.UseVisualStyleBackColor = true;
            this.button_reset.Click += new System.EventHandler(this.button_reset_Click);
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.flowLayoutPanel1.Controls.Add(this.textBefore);
            this.flowLayoutPanel1.Controls.Add(this.textCurrent);
            this.flowLayoutPanel1.Controls.Add(this.textAfer);
            this.flowLayoutPanel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.flowLayoutPanel1.Location = new System.Drawing.Point(12, 72);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(907, 35);
            this.flowLayoutPanel1.TabIndex = 7;
            // 
            // textBefore
            // 
            this.textBefore.AutoSize = true;
            this.textBefore.Location = new System.Drawing.Point(0, 0);
            this.textBefore.Margin = new System.Windows.Forms.Padding(0);
            this.textBefore.Name = "textBefore";
            this.textBefore.Size = new System.Drawing.Size(65, 24);
            this.textBefore.TabIndex = 1;
            this.textBefore.Text = "Before";
            // 
            // textCurrent
            // 
            this.textCurrent.AutoSize = true;
            this.textCurrent.ForeColor = System.Drawing.Color.Red;
            this.textCurrent.Location = new System.Drawing.Point(65, 0);
            this.textCurrent.Margin = new System.Windows.Forms.Padding(0);
            this.textCurrent.Name = "textCurrent";
            this.textCurrent.Size = new System.Drawing.Size(78, 24);
            this.textCurrent.TabIndex = 2;
            this.textCurrent.Text = "Currrent";
            // 
            // textAfer
            // 
            this.textAfer.AutoSize = true;
            this.textAfer.ForeColor = System.Drawing.SystemColors.ControlDark;
            this.textAfer.Location = new System.Drawing.Point(143, 0);
            this.textAfer.Margin = new System.Windows.Forms.Padding(0);
            this.textAfer.Name = "textAfer";
            this.textAfer.Size = new System.Drawing.Size(44, 24);
            this.textAfer.TabIndex = 3;
            this.textAfer.Text = "Afer";
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.справкаToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(931, 24);
            this.menuStrip1.TabIndex = 8;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // справкаToolStripMenuItem
            // 
            this.справкаToolStripMenuItem.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.справкаToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.авторToolStripMenuItem,
            this.темаРаботыToolStripMenuItem,
            this.оПрограммеToolStripMenuItem});
            this.справкаToolStripMenuItem.Name = "справкаToolStripMenuItem";
            this.справкаToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.справкаToolStripMenuItem.Text = "Справка";
            // 
            // авторToolStripMenuItem
            // 
            this.авторToolStripMenuItem.Name = "авторToolStripMenuItem";
            this.авторToolStripMenuItem.Size = new System.Drawing.Size(149, 22);
            this.авторToolStripMenuItem.Text = "Автор";
            this.авторToolStripMenuItem.Click += new System.EventHandler(this.авторToolStripMenuItem_Click);
            // 
            // темаРаботыToolStripMenuItem
            // 
            this.темаРаботыToolStripMenuItem.Name = "темаРаботыToolStripMenuItem";
            this.темаРаботыToolStripMenuItem.Size = new System.Drawing.Size(149, 22);
            this.темаРаботыToolStripMenuItem.Text = "Тема работы";
            this.темаРаботыToolStripMenuItem.Click += new System.EventHandler(this.темаРаботыToolStripMenuItem_Click);
            // 
            // оПрограммеToolStripMenuItem
            // 
            this.оПрограммеToolStripMenuItem.Name = "оПрограммеToolStripMenuItem";
            this.оПрограммеToolStripMenuItem.Size = new System.Drawing.Size(149, 22);
            this.оПрограммеToolStripMenuItem.Text = "О программе";
            this.оПрограммеToolStripMenuItem.Click += new System.EventHandler(this.оПрограммеToolStripMenuItem_Click);
            // 
            // viewport1
            // 
            this.viewport1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.viewport1.Controls.Add(this.q7);
            this.viewport1.Controls.Add(this.q6);
            this.viewport1.Controls.Add(this.q5);
            this.viewport1.Controls.Add(this.q4);
            this.viewport1.Controls.Add(this.q2);
            this.viewport1.Controls.Add(this.q3);
            this.viewport1.Controls.Add(this.q0);
            this.viewport1.Controls.Add(this.q1);
            this.viewport1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.viewport1.Location = new System.Drawing.Point(12, 99);
            this.viewport1.Name = "viewport1";
            this.viewport1.Size = new System.Drawing.Size(907, 595);
            this.viewport1.TabIndex = 9;
            // 
            // q7
            // 
            this.q7.BackColor = System.Drawing.Color.Transparent;
            this.q7.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.q7.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.q7.IsActive = false;
            this.q7.Location = new System.Drawing.Point(683, 487);
            this.q7.Margin = new System.Windows.Forms.Padding(6);
            this.q7.Name = "q7";
            this.q7.Size = new System.Drawing.Size(48, 48);
            this.q7.TabIndex = 7;
            // 
            // q6
            // 
            this.q6.BackColor = System.Drawing.Color.Transparent;
            this.q6.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.q6.IsActive = false;
            this.q6.Location = new System.Drawing.Point(551, 420);
            this.q6.Margin = new System.Windows.Forms.Padding(6);
            this.q6.Name = "q6";
            this.q6.Size = new System.Drawing.Size(48, 48);
            this.q6.TabIndex = 6;
            // 
            // q5
            // 
            this.q5.BackColor = System.Drawing.Color.Transparent;
            this.q5.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.q5.IsActive = false;
            this.q5.Location = new System.Drawing.Point(465, 333);
            this.q5.Margin = new System.Windows.Forms.Padding(6);
            this.q5.Name = "q5";
            this.q5.Size = new System.Drawing.Size(48, 48);
            this.q5.TabIndex = 5;
            // 
            // q4
            // 
            this.q4.BackColor = System.Drawing.Color.Transparent;
            this.q4.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.q4.IsActive = false;
            this.q4.Location = new System.Drawing.Point(427, 216);
            this.q4.Margin = new System.Windows.Forms.Padding(6);
            this.q4.Name = "q4";
            this.q4.Size = new System.Drawing.Size(48, 48);
            this.q4.TabIndex = 4;
            // 
            // q2
            // 
            this.q2.BackColor = System.Drawing.Color.Transparent;
            this.q2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.q2.IsActive = false;
            this.q2.Location = new System.Drawing.Point(480, 80);
            this.q2.Margin = new System.Windows.Forms.Padding(6);
            this.q2.Name = "q2";
            this.q2.Size = new System.Drawing.Size(48, 48);
            this.q2.TabIndex = 3;
            // 
            // q3
            // 
            this.q3.BackColor = System.Drawing.Color.Transparent;
            this.q3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.q3.IsActive = false;
            this.q3.Location = new System.Drawing.Point(340, 118);
            this.q3.Margin = new System.Windows.Forms.Padding(6);
            this.q3.Name = "q3";
            this.q3.Size = new System.Drawing.Size(48, 48);
            this.q3.TabIndex = 2;
            // 
            // q0
            // 
            this.q0.BackColor = System.Drawing.Color.Transparent;
            this.q0.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.q0.IsActive = false;
            this.q0.Location = new System.Drawing.Point(163, 447);
            this.q0.Margin = new System.Windows.Forms.Padding(6);
            this.q0.Name = "q0";
            this.q0.Size = new System.Drawing.Size(48, 48);
            this.q0.TabIndex = 1;
            // 
            // q1
            // 
            this.q1.BackColor = System.Drawing.Color.Transparent;
            this.q1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.q1.IsActive = false;
            this.q1.Location = new System.Drawing.Point(326, 397);
            this.q1.Margin = new System.Windows.Forms.Padding(6);
            this.q1.Name = "q1";
            this.q1.Size = new System.Drawing.Size(48, 48);
            this.q1.TabIndex = 0;
            // 
            // button_chek
            // 
            this.button_chek.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.button_chek.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.button_chek.Location = new System.Drawing.Point(664, 37);
            this.button_chek.Name = "button_chek";
            this.button_chek.Size = new System.Drawing.Size(139, 29);
            this.button_chek.TabIndex = 10;
            this.button_chek.Text = "Проверить";
            this.button_chek.UseVisualStyleBackColor = true;
            this.button_chek.Click += new System.EventHandler(this.button_chek_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(931, 696);
            this.Controls.Add(this.button_chek);
            this.Controls.Add(this.viewport1);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Controls.Add(this.button_step);
            this.Controls.Add(this.button_reset);
            this.Controls.Add(this.text_input);
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Automatic-recognizer";
            this.flowLayoutPanel1.ResumeLayout(false);
            this.flowLayoutPanel1.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.viewport1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox text_input;
        private System.Windows.Forms.Button button_step;
        private System.Windows.Forms.Button button_reset;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Label textBefore;
        private System.Windows.Forms.Label textCurrent;
        private System.Windows.Forms.Label textAfer;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem справкаToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem авторToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem темаРаботыToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem оПрограммеToolStripMenuItem;
        private Viewport viewport1;
        private NodeControl q2;
        private NodeControl q3;
        private NodeControl q0;
        private NodeControl q1;
        private NodeControl q7;
        private NodeControl q6;
        private NodeControl q5;
        private NodeControl q4;
        private System.Windows.Forms.Button button_chek;
    }
}


