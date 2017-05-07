using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RegexEditor
{
    public struct NodeJoin
    {
        public NodeControl In;
        public NodeControl To;
        public string Label;

        public NodeJoin(NodeControl In, NodeControl To, string Label)
        {
            this.In = In;
            this.To = To;
            this.Label = Label;
        }
    }
}
