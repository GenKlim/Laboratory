using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RegexEditor
{
    public partial class NodeControl : UserControl
    {
        public List<NodeJoin> Joins = new List<NodeJoin>();
        public static int NodeCounter = 0;
        private bool isActive;
        private bool isMouseHover;
        private bool isDrag;
        public bool Flag;
        Point mouseOffest;

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
            InitializeComponent();
            Name = string.Format("q{0}", NodeCounter++);

            DoubleBuffered = true;
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true);
        }

        public void ResetFlag()
        {
            if (!Flag)
                return;

            Flag = false;
            foreach (var join in Joins)
                join.To.ResetFlag();
        }

        public void Connect(List<NodeJoin> joins)
        {
            foreach (var join in joins)
                Connect(join.To, join.Label);
        }

        public NodeControl Connect(NodeControl destenation, string Label, string JoinToSelf = "")
        {
            Joins.Add(new NodeJoin(this, destenation, Label));

            if(!string.IsNullOrEmpty(JoinToSelf))
                Joins.Add(new NodeJoin(this, this, JoinToSelf));

            return destenation;
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            ButtonRenderer.DrawParentBackground(e.Graphics, e.ClipRectangle, this);

            Color backColor;
            if (IsActive)
            {
                backColor = Color.LightYellow;
            }
            else
            {
                if (isMouseHover)
                    backColor = Color.LightSteelBlue;
                else
                    backColor = SystemColors.Control;
            }

            e.Graphics.FillEllipse(new SolidBrush(backColor), 2, 2, Width - 4, Height - 4);
            
            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            e.Graphics.DrawEllipse(new Pen(Color.Black, 3), 1, 1, Width - 3, Height - 3);
            e.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighSpeed;

            var textSize = e.Graphics.MeasureString(Name, Font);
            e.Graphics.DrawString(Name, Font, new SolidBrush(ForeColor),
                Width / 2 - textSize.Width / 2,
                Height / 2 - textSize.Height / 2);
        }
        
        protected override void OnMouseMove(MouseEventArgs e)
        {
            base.OnMouseMove(e);
            if(isDrag)
            {
                Point loc = Parent.PointToClient(MousePosition);
                loc.Offset(-mouseOffest.X, -mouseOffest.Y);

                Location = loc;
                Invalidate(false);
            }
        }

        protected override void OnMouseDown(MouseEventArgs e)
        {
            mouseOffest = e.Location;
            BringToFront();
            isDrag = true;
        }

        protected override void OnMouseUp(MouseEventArgs e)
        {
            isDrag = false;
            Parent.Invalidate(false);
        }

        protected override void OnMouseEnter(EventArgs e)
        {
            isMouseHover = true;
            Invalidate(false);
        }

        protected override void OnMouseLeave(EventArgs e)
        {
            isMouseHover = false;
            isDrag = false;
            Invalidate(false);
        }

        public override string ToString()
        {
            return String.Join(", ", Joins.Select(j => string.Format("{0}->{1}", j.Label, j.To)));
        }
    }
}