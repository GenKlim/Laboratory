using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Collections;

namespace AutomaticRecognizer
{
    public partial class NodeControl : UserControl
    {
        public List<NodeJoin> Joins;
        private bool isActive;

        public bool IsActive
        {
            get => isActive;
            set
            {
                isActive = value;
                Invalidate();
            }
        }

        public NodeControl()
        {
            Joins = new List<NodeJoin>();
            InitializeComponent();

            DoubleBuffered = true;
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true);
        }

        public void ConnectTo(NodeControl To, string Label)
        {
            Joins.Add(new NodeJoin()
            {
                In = this,
                To = To,
                Label = Label
            });
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            ButtonRenderer.DrawParentBackground(e.Graphics, e.ClipRectangle, this);

            Color backColor = IsActive ? Color.LawnGreen : SystemColors.Control;

            e.Graphics.FillEllipse(new SolidBrush(backColor), 1, 1, Width - 2, Height - 2);

            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            e.Graphics.DrawEllipse(new Pen(Color.Black, 2), 1, 1, Width - 3, Height - 3);
            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighSpeed;

            var textSize = e.Graphics.MeasureString(Name, Font);
            e.Graphics.DrawString(Name, Font, new SolidBrush(ForeColor),
                Width / 2 - textSize.Width / 2,
                Height / 2 - textSize.Height / 2);
        }
    }
}