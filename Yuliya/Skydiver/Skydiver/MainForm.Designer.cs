namespace Skydiver
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
            this.SimulateWorker = new System.ComponentModel.BackgroundWorker();
            this.splitContainer2 = new System.Windows.Forms.SplitContainer();
            this.const_f_y = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.const_f_x = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.const_f_h = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.const_ts = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.const_m = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.start_v_y = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.const_k = new System.Windows.Forms.TextBox();
            this.const_g = new System.Windows.Forms.TextBox();
            this.start_v_x = new System.Windows.Forms.TextBox();
            this.start_h = new System.Windows.Forms.TextBox();
            this.StartStopBtn = new System.Windows.Forms.Button();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.viwe = new System.Windows.Forms.Panel();
            this.diagram = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer2)).BeginInit();
            this.splitContainer2.Panel1.SuspendLayout();
            this.splitContainer2.Panel2.SuspendLayout();
            this.splitContainer2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.SuspendLayout();
            // 
            // SimulateWorker
            // 
            this.SimulateWorker.WorkerReportsProgress = true;
            this.SimulateWorker.WorkerSupportsCancellation = true;
            this.SimulateWorker.DoWork += new System.ComponentModel.DoWorkEventHandler(this.SimulateWorker_DoWork);
            this.SimulateWorker.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.SimulateWorker_ProgressChanged);
            this.SimulateWorker.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.SimulateWorker_RunWorkerCompleted);
            // 
            // splitContainer2
            // 
            this.splitContainer2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer2.Location = new System.Drawing.Point(0, 0);
            this.splitContainer2.Name = "splitContainer2";
            // 
            // splitContainer2.Panel1
            // 
            this.splitContainer2.Panel1.Controls.Add(this.const_f_y);
            this.splitContainer2.Panel1.Controls.Add(this.label8);
            this.splitContainer2.Panel1.Controls.Add(this.const_f_x);
            this.splitContainer2.Panel1.Controls.Add(this.label7);
            this.splitContainer2.Panel1.Controls.Add(this.const_f_h);
            this.splitContainer2.Panel1.Controls.Add(this.label6);
            this.splitContainer2.Panel1.Controls.Add(this.const_ts);
            this.splitContainer2.Panel1.Controls.Add(this.label5);
            this.splitContainer2.Panel1.Controls.Add(this.const_m);
            this.splitContainer2.Panel1.Controls.Add(this.label4);
            this.splitContainer2.Panel1.Controls.Add(this.label3);
            this.splitContainer2.Panel1.Controls.Add(this.start_v_y);
            this.splitContainer2.Panel1.Controls.Add(this.label2);
            this.splitContainer2.Panel1.Controls.Add(this.label1);
            this.splitContainer2.Panel1.Controls.Add(this.const_k);
            this.splitContainer2.Panel1.Controls.Add(this.const_g);
            this.splitContainer2.Panel1.Controls.Add(this.start_v_x);
            this.splitContainer2.Panel1.Controls.Add(this.start_h);
            this.splitContainer2.Panel1.Controls.Add(this.StartStopBtn);
            // 
            // splitContainer2.Panel2
            // 
            this.splitContainer2.Panel2.Controls.Add(this.splitContainer1);
            this.splitContainer2.Size = new System.Drawing.Size(917, 461);
            this.splitContainer2.SplitterDistance = 300;
            this.splitContainer2.TabIndex = 17;
            // 
            // const_f_y
            // 
            this.const_f_y.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.const_f_y.Location = new System.Drawing.Point(251, 171);
            this.const_f_y.Name = "const_f_y";
            this.const_f_y.Size = new System.Drawing.Size(46, 20);
            this.const_f_y.TabIndex = 35;
            this.const_f_y.Text = "30";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 174);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(151, 13);
            this.label8.TabIndex = 34;
            this.label8.Text = "Сила поков теплого воздуха";
            // 
            // const_f_x
            // 
            this.const_f_x.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.const_f_x.Location = new System.Drawing.Point(197, 171);
            this.const_f_x.Name = "const_f_x";
            this.const_f_x.Size = new System.Drawing.Size(48, 20);
            this.const_f_x.TabIndex = 33;
            this.const_f_x.Text = "0";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(12, 148);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(182, 13);
            this.label7.TabIndex = 32;
            this.label7.Text = "Выстота границы теплого воздуха";
            // 
            // const_f_h
            // 
            this.const_f_h.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.const_f_h.Location = new System.Drawing.Point(197, 145);
            this.const_f_h.Name = "const_f_h";
            this.const_f_h.Size = new System.Drawing.Size(100, 20);
            this.const_f_h.TabIndex = 31;
            this.const_f_h.Text = "150";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 200);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(164, 13);
            this.label6.TabIndex = 30;
            this.label6.Text = "Точность/скорость симуляции";
            // 
            // const_ts
            // 
            this.const_ts.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.const_ts.Location = new System.Drawing.Point(197, 197);
            this.const_ts.Name = "const_ts";
            this.const_ts.Size = new System.Drawing.Size(100, 20);
            this.const_ts.TabIndex = 29;
            this.const_ts.Text = "0,15";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 41);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(89, 13);
            this.label5.TabIndex = 28;
            this.label5.Text = "Масса винипуха";
            // 
            // const_m
            // 
            this.const_m.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.const_m.Location = new System.Drawing.Point(197, 38);
            this.const_m.Name = "const_m";
            this.const_m.Size = new System.Drawing.Size(100, 20);
            this.const_m.TabIndex = 27;
            this.const_m.Text = "80";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 122);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(137, 13);
            this.label4.TabIndex = 26;
            this.label4.Text = "К сопротивления воздуха";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 96);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(170, 13);
            this.label3.TabIndex = 25;
            this.label3.Text = "Ускорение свободного паления";
            // 
            // start_v_y
            // 
            this.start_v_y.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.start_v_y.Location = new System.Drawing.Point(251, 64);
            this.start_v_y.Name = "start_v_y";
            this.start_v_y.Size = new System.Drawing.Size(46, 20);
            this.start_v_y.TabIndex = 24;
            this.start_v_y.Text = "4";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 67);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(140, 13);
            this.label2.TabIndex = 23;
            this.label2.Text = "Начальная скорость (м/с)";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(102, 13);
            this.label1.TabIndex = 22;
            this.label1.Text = "Начальная высота";
            // 
            // const_k
            // 
            this.const_k.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.const_k.Location = new System.Drawing.Point(197, 119);
            this.const_k.Name = "const_k";
            this.const_k.Size = new System.Drawing.Size(100, 20);
            this.const_k.TabIndex = 21;
            this.const_k.Text = "1";
            // 
            // const_g
            // 
            this.const_g.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.const_g.Location = new System.Drawing.Point(251, 93);
            this.const_g.Name = "const_g";
            this.const_g.Size = new System.Drawing.Size(46, 20);
            this.const_g.TabIndex = 20;
            this.const_g.Text = "9,8";
            // 
            // start_v_x
            // 
            this.start_v_x.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.start_v_x.Location = new System.Drawing.Point(197, 64);
            this.start_v_x.Name = "start_v_x";
            this.start_v_x.Size = new System.Drawing.Size(48, 20);
            this.start_v_x.TabIndex = 19;
            this.start_v_x.Text = "10";
            // 
            // start_h
            // 
            this.start_h.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.start_h.Location = new System.Drawing.Point(197, 12);
            this.start_h.Name = "start_h";
            this.start_h.Size = new System.Drawing.Size(100, 20);
            this.start_h.TabIndex = 18;
            this.start_h.Text = "300";
            // 
            // StartStopBtn
            // 
            this.StartStopBtn.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.StartStopBtn.Location = new System.Drawing.Point(222, 223);
            this.StartStopBtn.Name = "StartStopBtn";
            this.StartStopBtn.Size = new System.Drawing.Size(75, 23);
            this.StartStopBtn.TabIndex = 17;
            this.StartStopBtn.Text = "Старт";
            this.StartStopBtn.UseVisualStyleBackColor = true;
            this.StartStopBtn.Click += new System.EventHandler(this.StartStopBtn_Click);
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            this.splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.viwe);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.diagram);
            this.splitContainer1.Size = new System.Drawing.Size(613, 461);
            this.splitContainer1.SplitterDistance = 367;
            this.splitContainer1.TabIndex = 10;
            // 
            // viwe
            // 
            this.viwe.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.viwe.Dock = System.Windows.Forms.DockStyle.Fill;
            this.viwe.Location = new System.Drawing.Point(0, 0);
            this.viwe.Name = "viwe";
            this.viwe.Size = new System.Drawing.Size(613, 367);
            this.viwe.TabIndex = 6;
            // 
            // diagram
            // 
            this.diagram.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.diagram.Dock = System.Windows.Forms.DockStyle.Fill;
            this.diagram.Location = new System.Drawing.Point(0, 0);
            this.diagram.Name = "diagram";
            this.diagram.Size = new System.Drawing.Size(613, 90);
            this.diagram.TabIndex = 7;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(917, 461);
            this.Controls.Add(this.splitContainer2);
            this.Name = "MainForm";
            this.Text = "Skydiver helper";
            this.splitContainer2.Panel1.ResumeLayout(false);
            this.splitContainer2.Panel1.PerformLayout();
            this.splitContainer2.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer2)).EndInit();
            this.splitContainer2.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion
        private System.ComponentModel.BackgroundWorker SimulateWorker;
        private System.Windows.Forms.SplitContainer splitContainer2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox const_ts;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox const_m;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox start_v_y;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox const_k;
        private System.Windows.Forms.TextBox const_g;
        private System.Windows.Forms.TextBox start_v_x;
        private System.Windows.Forms.TextBox start_h;
        private System.Windows.Forms.Button StartStopBtn;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.Panel viwe;
        private System.Windows.Forms.Panel diagram;
        private System.Windows.Forms.TextBox const_f_y;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox const_f_x;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox const_f_h;
    }
}

