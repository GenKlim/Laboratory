using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MPAutomat
{
    /// <summary>
    /// Класс перехода из одного состояния в другое
    /// </summary>
    public class Connection
    {
        public string In;
        public string To;
        public string Symbol;
        public string StackPop;
        public string StackPush;
        public bool IsValid;

        /// <summary>
        /// Конструктор
        /// Откуда, Куда, Какой символ, Что на стеке, Что положим в стек
        /// </summary>
        /// <param name="In">Откуда</param>
        /// <param name="To">Куда</param>
        /// <param name="Symbol">Какой символ</param>
        /// <param name="StackPop">Что на стеке</param>
        /// <param name="StackPush">Что положим в стек</param>
        public Connection(string In, string To, string Symbol, string StackPop, string StackPush)
        {
            this.In = In;
            this.To = To;
            this.Symbol = Symbol != "E" ? Symbol : "";
            this.StackPop = StackPop;
            this.StackPush = StackPush;
            IsValid = false;
        }

        /// <summary>
        /// Преброзование в строку
        /// </summary>
        public override string ToString()
        {
            return String.Format("{0}, {1}/{2}", Symbol == "" ? "E" : Symbol, StackPop, StackPush);
        }
    }
}
