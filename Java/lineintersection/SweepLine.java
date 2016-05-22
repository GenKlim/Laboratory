package lineintersection;

import java.awt.geom.Line2D;
import java.util.ArrayList;
import java.util.List;

class SweepLine
{
	private static final double EPS = 1E-9;
	private List<Segment> data = new ArrayList<>();

	private class Segment implements Comparable<Segment>
	{
		double y;
		Line2D line;

		Segment(Line2D line, double y)
		{
			this.y = y;
			this.line = line;
		}

		@Override
		public int compareTo(Segment o)
		{
			return Double.compare(y, o.y);
		}
	}

	void insert(Line2D line, double x)
	{
		double y = getY(line, x);
		data.add(new Segment(line, y));
		data.sort(Segment::compareTo);
	}

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

	private static double getY(Line2D line, double x)
	{
		if(Math.abs(line.getX1() - line.getX2()) < EPS)
			return line.getY1();
		return line.getY1() + (line.getY2() - line.getY1()) * (x - line.getX1()) / (line.getX2() - line.getX1());
	}
}