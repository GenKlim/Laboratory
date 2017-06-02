using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Automatic_recognizer
{
    //класс для связей
    public class NodeJoin
    {
        public NodeControl In { get; set; }// свойство откуда
        public NodeControl To { get; set; }//свойство куда
        public string Label { get; set; }//подпись у связи
        public bool IsValid { get; set; }//можно ли перейти по данной связи
    }
}
