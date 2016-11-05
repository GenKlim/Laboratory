namespace z3
{
    partial class Form1
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
            this.start = new System.Windows.Forms.Button();
            this.panel1 = new z3.DoubleBuffPanel();
            this.coefView = new System.Windows.Forms.TrackBar();
            this.coefRenderScale = new System.Windows.Forms.TrackBar();
            this.coefSpeed = new System.Windows.Forms.TrackBar();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.coefView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.coefRenderScale)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.coefSpeed)).BeginInit();
            this.SuspendLayout();
            // 
            // start
            // 
            this.start.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.start.Location = new System.Drawing.Point(12, 504);
            this.start.Name = "start";
            this.start.Size = new System.Drawing.Size(112, 23);
            this.start.TabIndex = 1;
            this.start.Text = "start/stop";
            this.start.UseVisualStyleBackColor = true;
            this.start.Click += new System.EventHandler(this.start_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.WindowText;
            this.panel1.Controls.Add(this.coefView);
            this.panel1.Controls.Add(this.coefRenderScale);
            this.panel1.Controls.Add(this.coefSpeed);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(508, 539);
            this.panel1.TabIndex = 0;
            // 
            // coefView
            // 
            this.coefView.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.coefView.LargeChange = 100;
            this.coefView.Location = new System.Drawing.Point(350, 504);
            this.coefView.Maximum = 1000;
            this.coefView.Minimum = 10;
            this.coefView.Name = "coefView";
            this.coefView.Size = new System.Drawing.Size(104, 45);
            this.coefView.SmallChange = 100;
            this.coefView.TabIndex = 2;
            this.coefView.TickFrequency = 100;
            this.coefView.Value = 100;
            this.coefView.Scroll += new System.EventHandler(this.coefView_Scroll);
            // 
            // coefRenderScale
            // 
            this.coefRenderScale.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.coefRenderScale.Location = new System.Drawing.Point(240, 504);
            this.coefRenderScale.Minimum = 1;
            this.coefRenderScale.Name = "coefRenderScale";
            this.coefRenderScale.Size = new System.Drawing.Size(104, 45);
            this.coefRenderScale.TabIndex = 1;
            this.coefRenderScale.Value = 1;
            // 
            // coefSpeed
            // 
            this.coefSpeed.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.coefSpeed.Location = new System.Drawing.Point(130, 504);
            this.coefSpeed.Maximum = 20;
            this.coefSpeed.Name = "coefSpeed";
            this.coefSpeed.Size = new System.Drawing.Size(104, 45);
            this.coefSpeed.TabIndex = 0;
            this.coefSpeed.TickFrequency = 2;
            this.coefSpeed.Value = 5;
            this.coefSpeed.Scroll += new System.EventHandler(this.coefSpeed_Scroll);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.ClientSize = new System.Drawing.Size(508, 539);
            this.Controls.Add(this.start);
            this.Controls.Add(this.panel1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.coefView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.coefRenderScale)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.coefSpeed)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DoubleBuffPanel panel1;
        private System.Windows.Forms.Button start;
        private System.Windows.Forms.TrackBar coefView;
        private System.Windows.Forms.TrackBar coefRenderScale;
        private System.Windows.Forms.TrackBar coefSpeed;
    }
}

