package lineintersection;

import java.awt.geom.Line2D;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

// Класс продставляющий статус заметающей прямой
class SweepLine
{
	private List<Segment> data = new ArrayList<>();//Список отрезков

        //Отрезок
	private class Segment implements Comparable<Segment>
	{
		double y;
		Line2D line;

		Segment(Line2D line, double y)
		{
			this.y = y;
			this.line = line;
		}

                //Для сортировки
		@Override
		public int compareTo(Segment o)
		{
			return Double.compare(y, o.y);
		}
	}

	void insert(Line2D line, double x)//Вставка отрезка
	{
		double y = getY(line, x);
		data.add(new Segment(line, y));
		data.sort(new Comparator<Segment>() {//Сортировка
                    @Override
                    public int compare(Segment segment, Segment o) {
                        return segment.compareTo(o);
                    }
                });
	}

        //Поменять местами
	void swap(Line2D a, Line2D b)
	{
		Segment last = null;
		for(Segment s : data)
		{
			if(s.line == b && last != null)
			{
				last.line = b;
				s.line = a;
				return;
			}
			last = s;
		}
	}

        //Удалить
	void remove(Line2D line)
	{
		for(Segment s : data)
		{
			if(s.line == line)
			{
				data.remove(s);
				return;
			}
		}
	}

        //Отрезок, находящийся выше
	Line2D getUp(Line2D line)
	{
		Line2D last = null;
		for(Segment s : data)
		{
			if(s.line == line)
				return last;
			last = s.line;
		}
		return null;
	}

        //Отрезок, находящийся ниже
	Line2D getDown(Line2D line)
	{
		boolean found = false;
		for(Segment s : data)
		{
			if(found)
				return s.line;
			if(s.line == line)
				found = true;
		}
		return null;
	}

        //Получает y по x
	private static double getY(Line2D line, double x)
	{
		if(Math.abs(line.getX1() - line.getX2()) < 1E-9)
			return line.getY1();
		return line.getY1() + (line.getY2() - line.getY1()) * (x - line.getX1()) / (line.getX2() - line.getX1());
	}
}