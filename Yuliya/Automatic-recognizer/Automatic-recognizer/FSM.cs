using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Automatic_recognizer
{
    class FSM
    {
        enum state//состояния
        {
            q0, q1, q2, q3, q4, q5, q6, q7, Error
        }

        state activeState = state.q0;//указатель на активное состояние, при запуске активным состоянием является начальное

        void setState(char c)//по активному состоянию и входящему символу выбираем новое активное состояние
        {
            switch (activeState)
            {
                case state.q0:
                    switch (c)
                    {
                        case 'a': activeState = state.q2; break;
                        case 'b': activeState = state.q0; break;
                        case '0': activeState = state.q0; break;
                        case '1': activeState = state.q0; break;
                        default: activeState = state.Error; break;
                    }
                    break;
                case state.q1:
                    switch (c)
                    {
                        case 'a': activeState = state.q0; break;
                        case 'b': activeState = state.q1; break;
                        case '0': activeState = state.q1; break;
                        case '1': activeState = state.q1; break;
                        default: activeState = state.Error; break;
                    }
                    break;
                case state.q2:
                    switch (c)
                    {
                        case 'a': activeState = state.q3; break;
                        case 'b': activeState = state.q2; break;
                        case '0': activeState = state.q2; break;
                        case '1': activeState = state.q2; break;
                        default: activeState = state.Error; break;
                    }
                    break;
                case state.q3:
                    switch (c)
                    {
                        case 'a': activeState = state.q4; break;
                        case 'b': activeState = state.q3; break;
                        case '0': activeState = state.q3; break;
                        case '1': activeState = state.q3; break;
                        default: activeState = state.Error; break;
                    }
                    break;
                case state.q4:
                    switch (c)
                    {
                        case 'a': activeState = state.q0; break;
                        case 'b': activeState = state.q1; break;
                        case '0': activeState = state.q5; break;
                        case '1': activeState = state.q1; break;
                        default: activeState = state.Error; break;
                    }
                    break;
                case state.q5:
                    switch (c)
                    {
                        case 'a': activeState = state.q6; break;
                        case 'b': activeState = state.q1; break;
                        case '0': activeState = state.q1; break;
                        case '1': activeState = state.q1; break;
                        default: activeState = state.Error; break;
                    }
                    break;
                case state.q6:
                    switch (c)
                    {
                        case 'a': activeState = state.q2; break;
                        case 'b': activeState = state.q0; break;
                        case '0': activeState = state.q0; break;
                        case '1': activeState = state.q7; break;
                        default: activeState = state.Error; break;
                    }
                    break;
                case state.q7:
                    switch (c)
                    {
                        case 'a': activeState = state.q2; break;
                        case 'b': activeState = state.q0; break;
                        case '0': activeState = state.q0; break;
                        case '1': activeState = state.q0; break;
                        default: activeState = state.Error; break;
                    }
                    break;
            }
        }

        public bool CheckString(string s)//проверка цепочки символов на принадлежность языку
        {

            for (int i = 0; i < s.Length; i++)
            {
                setState(s[i]);
                if (activeState == state.Error)  break; 
            }
            //если после прочтения всех символов автомат оказался в конечном состоянии, то строка принадлежит языку
            if (activeState == state.q7) return true;

            return false;
        }

        public string func(string s)
        {
            string w = "";

            for (int i = 0; i < s.Length; i++)
            {
                w += "f(" + activeState.ToString() + " , " + s[i].ToString() + ") = ";
                setState(s[i]);
                w += activeState.ToString() + Environment.NewLine;
                if (activeState == state.Error) break;
            }
            return w;
        }
    }
}

