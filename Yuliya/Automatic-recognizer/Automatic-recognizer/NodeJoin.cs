using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomaticRecognizer
{
    public class NodeJoin
    {
        public NodeControl In { get; set; }
        public NodeControl To { get; set; }
        public string Label { get; set; }
        public bool IsValid { get; set; }
    }
}
