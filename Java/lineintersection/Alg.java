package lineintersection;

import java.awt.geom.Line2D;
import java.awt.geom.Point2D;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeSet;

class Alg
{
	private TreeSet<Event> Q = new TreeSet<>();
	private List<Point2D> intersects = new ArrayList<>();
	private SweepLine SL = new SweepLine();
	private double x = 0;
	private boolean isEnd = false;

	private class Event implements Comparable<Event>
	{
		Line2D left;
		Line2D right;
		double x;

		private Event(double x, Line2D left, Line2D right)
		{
			this.left = left;
			this.right = right;
			this.x = x;
		}

		@Override
		public int compareTo(Event o)
		{
			return Double.compare(x, o.x);
		}
	}

	Alg(List<Line2D> lines)
	{
		for(Line2D line : lines)
		{
			Q.add(new Event(line.getX1(), line, null));
			Q.add(new Event(line.getX2(), null, line));
		}
	}

	void iteration()
	{
		if(Q.size() != 0)
		{
			Event e = Q.first();
			Q.remove(e);
			x = e.x;

			if(e.left != null && e.right != null)
			{
				Line2D u = SL.getUp(e.left);
				Line2D d = SL.getDown(e.right);
				if(u != null && u.intersectsLine(e.right))
					addToQ(u, e.right, x);
				if(d != null && d.intersectsLine(e.left))
					addToQ(d, e.left, x);
				SL.swap(e.left, e.right);
			} else if(e.left != null)
			{
				SL.insert(e.left, x);
				Line2D u = SL.getUp(e.left);
				Line2D d = SL.getDown(e.left);
				if(u != null && u.intersectsLine(e.left))
					addToQ(u, e.left, 0);
				if(d != null && d.intersectsLine(e.left))
					addToQ(d, e.left, 0);
			} else
			{
				Line2D u = SL.getUp(e.right);
				Line2D d = SL.getDown(e.right);
				if(u != null && d != null && u.intersectsLine(d))
					addToQ(u, d, x);
				SL.remove(e.right);
			}
		}
		isEnd = Q.size() == 0;
	}

	private void addToQ(Line2D a, Line2D b, double x)
	{
		Point2D p = getIntersectionPoint(a, b);
		if(p.getX() > x)
		{
			intersects.add(p);
			Q.add(new Event(p.getX(), a, b));
		}
	}

	double getX()
	{
		return x;
	}

	boolean isEnd()
	{
		return isEnd;
	}
	
	private Point2D getIntersectionPoint(Line2D line1, Line2D line2)
	{
		double px = line1.getX1();
		double py = line1.getY1();
		double rx = line1.getX2() - px;
		double ry = line1.getY2() - py;
		double qx = line2.getX1();
		double qy = line2.getY1();
		double sx = line2.getX2() - qx;
		double sy = line2.getY2() - qy;

		double det = sx * ry - sy * rx;
		double z = (sx * (qy - py) + sy * (px - qx)) / det;
		return new Point2D.Double(px + z * rx, py + z * ry);
	}

	List<Point2D> getIntersectPoints()
	{
		return intersects;
	}
}
