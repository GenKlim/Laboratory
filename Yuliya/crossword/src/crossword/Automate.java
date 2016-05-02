package crossword;

import java.util.List;
import java.util.Stack;

class Automate
{
	public class State
	{
		State nextTrue;
		State nextFalse;

		public State get(boolean value)
		{
			return value ? nextTrue:nextFalse;
		}
	}

	State start;
	State end;

	public Automate(List<Integer> data, int maxSize)
	{
		State st;

		int sum = -1;
		for(int i : data)
			sum += i + 1;

		start = new State();
		end = start;

		boolean f = false;

		for(int i = 0; i < data.size(); i++)
		{
			if(f)
			{
				st = new State();
				st.nextFalse = st;
				end.nextFalse = st;
				end = st;
			}
			else
				f = true;

			for(int j = 0; j < data.get(i); j++)
			{
				st = new State();
				end.nextTrue = st;
				end = st;
			}
		}

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
					State st = currents.pop();
					if(st.nextFalse != null)
						next.push(st.nextFalse);
					if(st.nextTrue != null)
						next.push(st.nextTrue);
				}
				else
				{
					State st = currents.pop().get(s.isWhite());
					if(st != null)
						next.push(st);
				}
			}
			currents = next;
		}

		while(!currents.empty())
		{
			if(currents.pop() == end)
				return true;
		}

		return false;
	}
}
