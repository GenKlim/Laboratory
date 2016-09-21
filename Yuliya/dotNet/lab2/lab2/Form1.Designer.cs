namespace lab2
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
            this.components = new System.ComponentModel.Container();
            this.Field = new System.Windows.Forms.Panel();
            this.Group = new System.Windows.Forms.Panel();
            this.button2 = new System.Windows.Forms.Button();
            this.makePathBtn = new System.Windows.Forms.Button();
            this.killAllBtn = new System.Windows.Forms.Button();
            this.bugList = new System.Windows.Forms.ListView();
            this.label1 = new System.Windows.Forms.Label();
            this.ClearBtn = new System.Windows.Forms.Button();
            this.RunBtn = new System.Windows.Forms.Button();
            this.NewBtn = new System.Windows.Forms.Button();
            this.StepBtn = new System.Windows.Forms.Button();
            this.LeftBtn = new System.Windows.Forms.Button();
            this.DownBtn = new System.Windows.Forms.Button();
            this.RightBtn = new System.Windows.Forms.Button();
            this.UpBtn = new System.Windows.Forms.Button();
            this.Algorithm = new System.Windows.Forms.ListBox();
            this.timerAlgorithm = new System.Windows.Forms.Timer(this.components);
            this.Group.SuspendLayout();
            this.SuspendLayout();
            // 
            // Field
            // 
            this.Field.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.Field.BackColor = System.Drawing.SystemColors.Window;
            this.Field.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Field.Location = new System.Drawing.Point(5, 4);
            this.Field.Name = "Field";
            this.Field.Size = new System.Drawing.Size(600, 615);
            this.Field.TabIndex = 0;
            this.Field.MouseDown += new System.Windows.Forms.MouseEventHandler(this.Field_MouseDown);
            this.Field.MouseMove += new System.Windows.Forms.MouseEventHandler(this.Field_MouseMove);
            this.Field.MouseUp += new System.Windows.Forms.MouseEventHandler(this.Field_MouseUp);
            // 
            // Group
            // 
            this.Group.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.Group.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Group.Controls.Add(this.button2);
            this.Group.Controls.Add(this.makePathBtn);
            this.Group.Controls.Add(this.killAllBtn);
            this.Group.Controls.Add(this.bugList);
            this.Group.Controls.Add(this.label1);
            this.Group.Controls.Add(this.ClearBtn);
            this.Group.Controls.Add(this.RunBtn);
            this.Group.Controls.Add(this.NewBtn);
            this.Group.Controls.Add(this.StepBtn);
            this.Group.Controls.Add(this.LeftBtn);
            this.Group.Controls.Add(this.DownBtn);
            this.Group.Controls.Add(this.RightBtn);
            this.Group.Controls.Add(this.UpBtn);
            this.Group.Location = new System.Drawing.Point(611, 4);
            this.Group.Name = "Group";
            this.Group.Size = new System.Drawing.Size(152, 615);
            this.Group.TabIndex = 1;
            // 
            // button2
            // 
            this.button2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.button2.Location = new System.Drawing.Point(3, 477);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(142, 23);
            this.button2.TabIndex = 14;
            this.button2.Text = "По краю";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button1_Click);
            // 
            // makePathBtn
            // 
            this.makePathBtn.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.makePathBtn.Location = new System.Drawing.Point(3, 448);
            this.makePathBtn.Name = "makePathBtn";
            this.makePathBtn.Size = new System.Drawing.Size(142, 23);
            this.makePathBtn.TabIndex = 13;
            this.makePathBtn.Text = "Нарисовать маршрут";
            this.makePathBtn.UseVisualStyleBackColor = true;
            this.makePathBtn.Click += new System.EventHandler(this.makePathBtn_Click);
            // 
            // killAllBtn
            // 
            this.killAllBtn.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.killAllBtn.Location = new System.Drawing.Point(3, 156);
            this.killAllBtn.Name = "killAllBtn";
            this.killAllBtn.Size = new System.Drawing.Size(142, 23);
            this.killAllBtn.TabIndex = 12;
            this.killAllBtn.Text = "Kill all";
            this.killAllBtn.UseVisualStyleBackColor = true;
            this.killAllBtn.Click += new System.EventHandler(this.killAllBtn_Click);
            // 
            // bugList
            // 
            this.bugList.CheckBoxes = true;
            this.bugList.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.None;
            this.bugList.Location = new System.Drawing.Point(3, 24);
            this.bugList.Name = "bugList";
            this.bugList.Size = new System.Drawing.Size(142, 97);
            this.bugList.TabIndex = 11;
            this.bugList.UseCompatibleStateImageBehavior = false;
            this.bugList.View = System.Windows.Forms.View.List;
            this.bugList.ItemChecked += new System.Windows.Forms.ItemCheckedEventHandler(this.bugList_ItemChecked);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(5, 8);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(89, 13);
            this.label1.TabIndex = 10;
            this.label1.Text = "Мухи/тараканы:";
            // 
            // ClearBtn
            // 
            this.ClearBtn.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.ClearBtn.Location = new System.Drawing.Point(3, 407);
            this.ClearBtn.Name = "ClearBtn";
            this.ClearBtn.Size = new System.Drawing.Size(142, 23);
            this.ClearBtn.TabIndex = 7;
            this.ClearBtn.Text = "Clear";
            this.ClearBtn.UseVisualStyleBackColor = true;
            this.ClearBtn.Click += new System.EventHandler(this.ClearBtn_Click);
            // 
            // RunBtn
            // 
            this.RunBtn.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.RunBtn.Location = new System.Drawing.Point(3, 378);
            this.RunBtn.Name = "RunBtn";
            this.RunBtn.Size = new System.Drawing.Size(142, 23);
            this.RunBtn.TabIndex = 6;
            this.RunBtn.Text = "Run";
            this.RunBtn.UseVisualStyleBackColor = true;
            this.RunBtn.Click += new System.EventHandler(this.RunBtn_Click);
            // 
            // NewBtn
            // 
            this.NewBtn.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.NewBtn.Location = new System.Drawing.Point(3, 127);
            this.NewBtn.Name = "NewBtn";
            this.NewBtn.Size = new System.Drawing.Size(142, 23);
            this.NewBtn.TabIndex = 5;
            this.NewBtn.Text = "New Hero";
            this.NewBtn.UseVisualStyleBackColor = true;
            this.NewBtn.Click += new System.EventHandler(this.NewBtn_Click);
            // 
            // StepBtn
            // 
            this.StepBtn.Location = new System.Drawing.Point(50, 317);
            this.StepBtn.Name = "StepBtn";
            this.StepBtn.Size = new System.Drawing.Size(50, 23);
            this.StepBtn.TabIndex = 4;
            this.StepBtn.Text = "Step";
            this.StepBtn.UseVisualStyleBackColor = true;
            this.StepBtn.Click += new System.EventHandler(this.addCommandBtn_Click);
            // 
            // LeftBtn
            // 
            this.LeftBtn.Location = new System.Drawing.Point(1, 317);
            this.LeftBtn.Name = "LeftBtn";
            this.LeftBtn.Size = new System.Drawing.Size(50, 23);
            this.LeftBtn.TabIndex = 3;
            this.LeftBtn.Text = "Left";
            this.LeftBtn.UseVisualStyleBackColor = true;
            this.LeftBtn.Click += new System.EventHandler(this.addCommandBtn_Click);
            // 
            // DownBtn
            // 
            this.DownBtn.Location = new System.Drawing.Point(35, 341);
            this.DownBtn.Name = "DownBtn";
            this.DownBtn.Size = new System.Drawing.Size(75, 23);
            this.DownBtn.TabIndex = 2;
            this.DownBtn.Text = "Down";
            this.DownBtn.UseVisualStyleBackColor = true;
            this.DownBtn.Click += new System.EventHandler(this.addCommandBtn_Click);
            // 
            // RightBtn
            // 
            this.RightBtn.Location = new System.Drawing.Point(99, 317);
            this.RightBtn.Name = "RightBtn";
            this.RightBtn.Size = new System.Drawing.Size(50, 23);
            this.RightBtn.TabIndex = 1;
            this.RightBtn.Text = "Right";
            this.RightBtn.UseVisualStyleBackColor = true;
            this.RightBtn.Click += new System.EventHandler(this.addCommandBtn_Click);
            // 
            // UpBtn
            // 
            this.UpBtn.Location = new System.Drawing.Point(35, 293);
            this.UpBtn.Name = "UpBtn";
            this.UpBtn.Size = new System.Drawing.Size(75, 23);
            this.UpBtn.TabIndex = 0;
            this.UpBtn.Text = "Up";
            this.UpBtn.UseVisualStyleBackColor = true;
            this.UpBtn.Click += new System.EventHandler(this.addCommandBtn_Click);
            // 
            // Algorithm
            // 
            this.Algorithm.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.Algorithm.FormattingEnabled = true;
            this.Algorithm.Location = new System.Drawing.Point(769, 4);
            this.Algorithm.Name = "Algorithm";
            this.Algorithm.Size = new System.Drawing.Size(149, 615);
            this.Algorithm.TabIndex = 2;
            // 
            // timerAlgorithm
            // 
            this.timerAlgorithm.Tick += new System.EventHandler(this.timerAlgorithm_Tick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(920, 627);
            this.Controls.Add(this.Algorithm);
            this.Controls.Add(this.Group);
            this.Controls.Add(this.Field);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Лаба 2";
            this.Load += new System.EventHandler(this.Form1_Load_1);
            this.Group.ResumeLayout(false);
            this.Group.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel Field;
        private System.Windows.Forms.Panel Group;
        private System.Windows.Forms.Button ClearBtn;
        private System.Windows.Forms.Button RunBtn;
        private System.Windows.Forms.Button NewBtn;
        private System.Windows.Forms.Button StepBtn;
        private System.Windows.Forms.Button LeftBtn;
        private System.Windows.Forms.Button DownBtn;
        private System.Windows.Forms.Button RightBtn;
        private System.Windows.Forms.Button UpBtn;
        private System.Windows.Forms.ListBox Algorithm;
        private System.Windows.Forms.Timer timerAlgorithm;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListView bugList;
        private System.Windows.Forms.Button killAllBtn;
        private System.Windows.Forms.Button makePathBtn;
        private System.Windows.Forms.Button button2;
    }
}

