package crossword;

import java.util.List;
import java.util.Stack;

class Automate
{
	public class State
	{
		State nextTrue;
		State nextFalse;

                //Возвращает ссылку на следущее состояние по значению (1 или 0)
		public State get(boolean value)
		{
			return value ? nextTrue:nextFalse;
		}
	}                                                                       

	State start;//начальное состояние
	State end;//конечное состояние

        //Конструктор создает автомат по строке(или столбцу)
	public Automate(List<Integer> data, int maxSize)
	{
		int sum = -1;//Считает минимальную длинну строки
		for(int i : data)
			sum += i + 1;

		start = new State();
		end = start;
		State st;
		for(int i = 0; i < data.size(); i++)
		{
			if(i!=0)
			{
				st = new State();//Состояние с нулем 
				st.nextFalse = st;
				end.nextFalse = st;
				end = st;
			}
                        
                        //Создаем столько состояний, сколько закрашенных клеток в группе
			for(int j = 0; j < data.get(i); j++)
			{
				st = new State();
				end.nextTrue = st;
				end = st;
			}
		}

                //Если строка из условия data может не полностью заполнить строку кроссворда, то вначале и конце нужно ставить петельки
		if(sum != maxSize)
		{
			start.nextFalse = start;
			end.nextFalse = end;
		}
	}

	public boolean IsValid(List<StatusObject> row)
	{

            Stack<State> next, currents = new Stack<>();
            currents.push(start);

            for(StatusObject s : row)
            {
                next = new Stack<>();
                while(!currents.empty())
                {
                    if(s.isNone())
                    {
                        State st = currents.pop();//Снимаем очередное состояние
                        if(st.nextFalse != null)//Если оно может перейти по ветке с нулем, то запишем это состояние
                                next.push(st.nextFalse);
                        if(st.nextTrue != null)//Если оно может перейти по ветке с еденицей, то запишем это состояние
                                next.push(st.nextTrue);
                    }
                    else
                    {
                        //Иначе (если ячейка либо черная, либо белая)
                        State st = currents.pop().get(s.isWhite());
                        if(st != null)//Если такое существует, то запишем это состояние
                                next.push(st);
                    }
                }
                currents = next;
            }

            while(!currents.empty())
            {

                if(currents.pop() == end)
                        return true;//строка соответствует условию автомата
            }

            return false;//строка не соответствует условию автомата
	}
}
