using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;
using System.Windows.Forms;

namespace z3
{
    public class DoubleBuffPanel : Panel
    {
        public Action<Graphics> PaintAction;

        public DoubleBuffPanel()
        {
            DoubleBuffered = true;
            SetStyle(ControlStyles.OptimizedDoubleBuffer | ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint, true);
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            if (PaintAction != null)
                PaintAction.Invoke(e.Graphics);
            else
                e.Graphics.Clear(BackColor);
        }

        protected override void OnPaintBackground(PaintEventArgs e)
        {
        }
    }
}