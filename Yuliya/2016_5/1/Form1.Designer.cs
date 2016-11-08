namespace opengl
{
    partial class Form1
    {
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
            this.viewport = new SharpGL.OpenGLControl();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            this.speedBar = new System.Windows.Forms.TrackBar();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.viewport)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.speedBar)).BeginInit();
            this.SuspendLayout();
            // 
            // viewport
            // 
            this.viewport.Dock = System.Windows.Forms.DockStyle.Fill;
            this.viewport.DrawFPS = true;
            this.viewport.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.viewport.FrameRate = 60;
            this.viewport.Location = new System.Drawing.Point(0, 0);
            this.viewport.Name = "viewport";
            this.viewport.OpenGLVersion = SharpGL.Version.OpenGLVersion.OpenGL2_1;
            this.viewport.RenderContextType = SharpGL.RenderContextType.FBO;
            this.viewport.RenderTrigger = SharpGL.RenderTrigger.TimerBased;
            this.viewport.Size = new System.Drawing.Size(724, 562);
            this.viewport.TabIndex = 0;
            this.viewport.OpenGLDraw += new SharpGL.RenderEventHandler(this.openGLControl1_OpenGLDraw);
            this.viewport.MouseDown += new System.Windows.Forms.MouseEventHandler(this.viewport_MouseDown);
            this.viewport.MouseMove += new System.Windows.Forms.MouseEventHandler(this.viewport_MouseMove);
            this.viewport.MouseUp += new System.Windows.Forms.MouseEventHandler(this.viewport_MouseUp);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.speedBar);
            this.panel1.Controls.Add(this.comboBox1);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Location = new System.Drawing.Point(7, 6);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(178, 109);
            this.panel1.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.SystemColors.WindowText;
            this.label3.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label3.Location = new System.Drawing.Point(6, 10);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(38, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Speed";
            // 
            // speedBar
            // 
            this.speedBar.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.speedBar.LargeChange = 1;
            this.speedBar.Location = new System.Drawing.Point(3, 26);
            this.speedBar.Minimum = -10;
            this.speedBar.Name = "speedBar";
            this.speedBar.Size = new System.Drawing.Size(170, 45);
            this.speedBar.SmallChange = 10;
            this.speedBar.TabIndex = 5;
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "GL_POLYGON",
            "GL_LINES"});
            this.comboBox1.Location = new System.Drawing.Point(9, 77);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(158, 21);
            this.comboBox1.TabIndex = 4;
            this.comboBox1.Tag = "";
            this.comboBox1.Text = "GL_POLYGON";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.SystemColors.WindowText;
            this.label2.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label2.Location = new System.Drawing.Point(6, 47);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(31, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Type";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(724, 562);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.viewport);
            this.Name = "Form1";
            this.Text = "3d";
            ((System.ComponentModel.ISupportInitialize)(this.viewport)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.speedBar)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private SharpGL.OpenGLControl viewport;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TrackBar speedBar;
    }
}
