namespace MPAutomat
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.inputBox = new System.Windows.Forms.TextBox();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.automat = new MPAutomat.AutomatPanel();
            this.buttonReset = new System.Windows.Forms.Button();
            this.buttonPause = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.buttonPlay = new System.Windows.Forms.Button();
            this.End = new MPAutomat.StateControl();
            this.buttonStep = new System.Windows.Forms.Button();
            this.q1 = new MPAutomat.StateControl();
            this.q0 = new MPAutomat.StateControl();
            this.Start = new MPAutomat.StateControl();
            this.stack = new System.Windows.Forms.ListBox();
            this.label2 = new System.Windows.Forms.Label();
            this.buttonCheck = new System.Windows.Forms.Button();
            this.animTimer = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.automat.SuspendLayout();
            this.SuspendLayout();
            // 
            // inputBox
            // 
            this.inputBox.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.inputBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.inputBox.Location = new System.Drawing.Point(12, 13);
            this.inputBox.Name = "inputBox";
            this.inputBox.Size = new System.Drawing.Size(609, 22);
            this.inputBox.TabIndex = 0;
            this.inputBox.Text = "aaabbb";
            this.inputBox.TextChanged += new System.EventHandler(this.buttonReset_Click);
            // 
            // splitContainer1
            // 
            this.splitContainer1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.splitContainer1.Location = new System.Drawing.Point(12, 42);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.automat);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.stack);
            this.splitContainer1.Panel2.Controls.Add(this.label2);
            this.splitContainer1.Size = new System.Drawing.Size(744, 377);
            this.splitContainer1.SplitterDistance = 609;
            this.splitContainer1.TabIndex = 1;
            // 
            // automat
            // 
            this.automat.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.automat.Controls.Add(this.buttonReset);
            this.automat.Controls.Add(this.buttonPause);
            this.automat.Controls.Add(this.label1);
            this.automat.Controls.Add(this.buttonPlay);
            this.automat.Controls.Add(this.End);
            this.automat.Controls.Add(this.buttonStep);
            this.automat.Controls.Add(this.q1);
            this.automat.Controls.Add(this.q0);
            this.automat.Controls.Add(this.Start);
            this.automat.Dock = System.Windows.Forms.DockStyle.Fill;
            this.automat.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.automat.Location = new System.Drawing.Point(0, 0);
            this.automat.Name = "automat";
            this.automat.Size = new System.Drawing.Size(609, 377);
            this.automat.TabIndex = 2;
            // 
            // buttonReset
            // 
            this.buttonReset.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.buttonReset.Location = new System.Drawing.Point(88, 344);
            this.buttonReset.Name = "buttonReset";
            this.buttonReset.Size = new System.Drawing.Size(75, 23);
            this.buttonReset.TabIndex = 11;
            this.buttonReset.Text = "Сброс";
            this.buttonReset.UseVisualStyleBackColor = true;
            this.buttonReset.Click += new System.EventHandler(this.buttonReset_Click);
            // 
            // buttonPause
            // 
            this.buttonPause.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.buttonPause.Location = new System.Drawing.Point(169, 344);
            this.buttonPause.Name = "buttonPause";
            this.buttonPause.Size = new System.Drawing.Size(75, 23);
            this.buttonPause.TabIndex = 7;
            this.buttonPause.Text = "Пауза";
            this.buttonPause.UseVisualStyleBackColor = true;
            this.buttonPause.Click += new System.EventHandler(this.buttonPause_Click);
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(476, 341);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(129, 26);
            this.label1.TabIndex = 4;
            this.label1.Text = "z - Указатель дна стека\r\nE - Пустой символ";
            // 
            // buttonPlay
            // 
            this.buttonPlay.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.buttonPlay.Location = new System.Drawing.Point(250, 344);
            this.buttonPlay.Name = "buttonPlay";
            this.buttonPlay.Size = new System.Drawing.Size(75, 23);
            this.buttonPlay.TabIndex = 8;
            this.buttonPlay.Text = "Старт";
            this.buttonPlay.UseVisualStyleBackColor = true;
            this.buttonPlay.Click += new System.EventHandler(this.buttonPlay_Click);
            // 
            // End
            // 
            this.End.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.End.Location = new System.Drawing.Point(195, 239);
            this.End.Name = "End";
            this.End.Size = new System.Drawing.Size(72, 72);
            this.End.TabIndex = 3;
            // 
            // buttonStep
            // 
            this.buttonStep.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.buttonStep.Location = new System.Drawing.Point(331, 344);
            this.buttonStep.Name = "buttonStep";
            this.buttonStep.Size = new System.Drawing.Size(75, 23);
            this.buttonStep.TabIndex = 9;
            this.buttonStep.Text = "Шаг";
            this.buttonStep.UseVisualStyleBackColor = true;
            this.buttonStep.Click += new System.EventHandler(this.buttonStep_Click);
            // 
            // q1
            // 
            this.q1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.q1.Location = new System.Drawing.Point(443, 239);
            this.q1.Name = "q1";
            this.q1.Size = new System.Drawing.Size(72, 72);
            this.q1.TabIndex = 2;
            // 
            // q0
            // 
            this.q0.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.q0.Location = new System.Drawing.Point(293, 79);
            this.q0.Name = "q0";
            this.q0.Size = new System.Drawing.Size(72, 72);
            this.q0.TabIndex = 1;
            // 
            // Start
            // 
            this.Start.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Start.Location = new System.Drawing.Point(72, 79);
            this.Start.Name = "Start";
            this.Start.Size = new System.Drawing.Size(72, 72);
            this.Start.TabIndex = 0;
            // 
            // stack
            // 
            this.stack.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.stack.FormattingEnabled = true;
            this.stack.Location = new System.Drawing.Point(0, 20);
            this.stack.Name = "stack";
            this.stack.Size = new System.Drawing.Size(131, 355);
            this.stack.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.Dock = System.Windows.Forms.DockStyle.Top;
            this.label2.Location = new System.Drawing.Point(0, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(131, 23);
            this.label2.TabIndex = 1;
            this.label2.Text = "Магазин автомата:";
            // 
            // buttonCheck
            // 
            this.buttonCheck.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonCheck.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.buttonCheck.Location = new System.Drawing.Point(625, 12);
            this.buttonCheck.Name = "buttonCheck";
            this.buttonCheck.Size = new System.Drawing.Size(132, 24);
            this.buttonCheck.TabIndex = 10;
            this.buttonCheck.Text = "Проверить";
            this.buttonCheck.UseVisualStyleBackColor = true;
            this.buttonCheck.Click += new System.EventHandler(this.buttonCheck_Click);
            // 
            // animTimer
            // 
            this.animTimer.Interval = 1000;
            this.animTimer.Tick += new System.EventHandler(this.animTimer_Tick);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(767, 431);
            this.Controls.Add(this.buttonCheck);
            this.Controls.Add(this.inputBox);
            this.Controls.Add(this.splitContainer1);
            this.Name = "MainForm";
            this.Text = "Автомат с магазинной памятью";
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.automat.ResumeLayout(false);
            this.automat.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox inputBox;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private AutomatPanel automat;
        private System.Windows.Forms.ListBox stack;
        private StateControl Start;
        private StateControl End;
        private StateControl q1;
        private StateControl q0;
        private System.Windows.Forms.Button buttonReset;
        private System.Windows.Forms.Button buttonCheck;
        private System.Windows.Forms.Button buttonStep;
        private System.Windows.Forms.Button buttonPlay;
        private System.Windows.Forms.Button buttonPause;
        private System.Windows.Forms.Timer animTimer;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}