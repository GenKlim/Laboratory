using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RegexEditor
{
    // Структура дла хранения ребра графа
    public struct NodeJoin
    {
        public NodeControl In;  // Что соединено
        public NodeControl To;  // С чем соединено
        public string Label;  // Условие перехода по ребру

        public NodeJoin(NodeControl In, NodeControl To, string Label)   // Коснтруктор
        {
            this.In = In;
            this.To = To;
            this.Label = Label;
        }
    }
}
