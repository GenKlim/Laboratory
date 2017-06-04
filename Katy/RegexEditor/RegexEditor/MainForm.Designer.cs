namespace RegexEditor
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
            this.viewport = new RegexEditor.Viewport();
            this.text_input = new System.Windows.Forms.TextBox();
            this.button_step = new System.Windows.Forms.Button();
            this.button_reset = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.textBefore = new System.Windows.Forms.Label();
            this.textCurrent = new System.Windows.Forms.Label();
            this.textAfer = new System.Windows.Forms.Label();
            this.flowLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // viewport
            // 
            this.viewport.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.viewport.AutoScroll = true;
            this.viewport.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.viewport.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.viewport.Location = new System.Drawing.Point(12, 73);
            this.viewport.Name = "viewport";
            this.viewport.Size = new System.Drawing.Size(1062, 407);
            this.viewport.TabIndex = 2;
            // 
            // text_input
            // 
            this.text_input.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.text_input.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.text_input.Location = new System.Drawing.Point(12, 527);
            this.text_input.Name = "text_input";
            this.text_input.Size = new System.Drawing.Size(830, 29);
            this.text_input.TabIndex = 3;
            this.text_input.Text = "01 января 2017";
            this.text_input.TextChanged += new System.EventHandler(this.button_reset_Click);
            // 
            // button_step
            // 
            this.button_step.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.button_step.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.button_step.Location = new System.Drawing.Point(956, 527);
            this.button_step.Name = "button_step";
            this.button_step.Size = new System.Drawing.Size(118, 29);
            this.button_step.TabIndex = 4;
            this.button_step.Text = "Шаг";
            this.button_step.UseVisualStyleBackColor = true;
            this.button_step.Click += new System.EventHandler(this.button_step_Click);
            // 
            // button_reset
            // 
            this.button_reset.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.button_reset.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.button_reset.Location = new System.Drawing.Point(848, 527);
            this.button_reset.Name = "button_reset";
            this.button_reset.Size = new System.Drawing.Size(102, 29);
            this.button_reset.TabIndex = 5;
            this.button_reset.Text = "Сброс";
            this.button_reset.UseVisualStyleBackColor = true;
            this.button_reset.Click += new System.EventHandler(this.button_reset_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("MS Reference Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(673, 48);
            this.label1.TabIndex = 6;
            this.label1.Text = "Язык - дата в формете \"01 января 2017\" либо \"01.01.2017\"\r\nРегулярное выражение: \"" +
    "\\d{2}(\\s+[A-Яа-я]+\\s+|\\.\\d{2}\\.)\\d{4}\"";
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.flowLayoutPanel1.Controls.Add(this.textBefore);
            this.flowLayoutPanel1.Controls.Add(this.textCurrent);
            this.flowLayoutPanel1.Controls.Add(this.textAfer);
            this.flowLayoutPanel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.flowLayoutPanel1.Location = new System.Drawing.Point(12, 486);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(1062, 35);
            this.flowLayoutPanel1.TabIndex = 7;
            // 
            // textBefore
            // 
            this.textBefore.AutoSize = true;
            this.textBefore.Location = new System.Drawing.Point(0, 0);
            this.textBefore.Margin = new System.Windows.Forms.Padding(0);
            this.textBefore.Name = "textBefore";
            this.textBefore.Size = new System.Drawing.Size(33, 24);
            this.textBefore.TabIndex = 1;
            this.textBefore.Text = "Te";
            // 
            // textCurrent
            // 
            this.textCurrent.AutoSize = true;
            this.textCurrent.ForeColor = System.Drawing.Color.Red;
            this.textCurrent.Location = new System.Drawing.Point(33, 0);
            this.textCurrent.Margin = new System.Windows.Forms.Padding(0);
            this.textCurrent.Name = "textCurrent";
            this.textCurrent.Size = new System.Drawing.Size(20, 24);
            this.textCurrent.TabIndex = 2;
            this.textCurrent.Text = "x";
            // 
            // textAfer
            // 
            this.textAfer.AutoSize = true;
            this.textAfer.ForeColor = System.Drawing.SystemColors.ControlDark;
            this.textAfer.Location = new System.Drawing.Point(53, 0);
            this.textAfer.Margin = new System.Windows.Forms.Padding(0);
            this.textAfer.Name = "textAfer";
            this.textAfer.Size = new System.Drawing.Size(14, 24);
            this.textAfer.TabIndex = 3;
            this.textAfer.Text = "t";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1086, 561);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button_step);
            this.Controls.Add(this.button_reset);
            this.Controls.Add(this.text_input);
            this.Controls.Add(this.viewport);
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Визуализатор конечного автомата";
            this.flowLayoutPanel1.ResumeLayout(false);
            this.flowLayoutPanel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private Viewport viewport;
        private System.Windows.Forms.TextBox text_input;
        private System.Windows.Forms.Button button_step;
        private System.Windows.Forms.Button button_reset;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Label textBefore;
        private System.Windows.Forms.Label textCurrent;
        private System.Windows.Forms.Label textAfer;
    }
}

