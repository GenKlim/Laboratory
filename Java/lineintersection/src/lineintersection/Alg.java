package lineintersection;

import java.awt.geom.Line2D;
import java.awt.geom.Point2D;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeSet;

//Класс реализующий пошаговую работу алгоритма
class Alg
{
	private TreeSet<Event> Q = new TreeSet<>();//Список (точнее бинарное дерево) точек, в которых нужно провести прямую 
	private List<Point2D> intersects = new ArrayList<>();//Точки пересечения
	private SweepLine SL = new SweepLine();//Заметающая прямая
	private double x = 0;//Текущая абсцисса
	private boolean isEnd = false;

        //Точка в которой нужно провести прямую
	private class Event implements Comparable<Event>
	{
		Line2D left;//Линия левым концом которой является эта точка
		Line2D right;//Линия правым концом которой является эта точка
		double x;//абсцисса

		private Event(double x, Line2D left, Line2D right)
		{
			this.left = left;
			this.right = right;
			this.x = x;
		}

                //Для сортировки в дереве
		@Override
		public int compareTo(Event o)
		{
			return Double.compare(x, o.x);
		}
	}

	Alg(List<Line2D> lines)
	{
            //Добавляем конци всех отрезков в очередь
		for(Line2D line : lines)
		{
			Q.add(new Event(line.getX1(), line, null));
			Q.add(new Event(line.getX2(), null, line));
		}
	}
           
        //Шаг алгоритма
	void iteration()
	{
		if(Q.size() != 0)//Если остались элементы
		{
			Event e = Q.first();//Берем первый элемент дерева (самый маленький)
			Q.remove(e);//Удаляем его из дерева
			x = e.x;
                        
                        //Тут все, как в теории
			if(e.left != null && e.right != null)//Если это точка пересичения
			{
				Line2D u = SL.getUp(e.left);
				Line2D d = SL.getDown(e.right);
				if(u != null && u.intersectsLine(e.right))//Если пересикаются
					addToQ(u, e.right, x);//Добавляем точку пересичения двух прямых, если ее абсцисса больше текущей абсциссы
				if(d != null && d.intersectsLine(e.left))
					addToQ(d, e.left, x);
				SL.swap(e.left, e.right);
			} else if(e.left != null)//Если это левый конец отрезка
			{
				SL.insert(e.left, x);
				Line2D u = SL.getUp(e.left);
				Line2D d = SL.getDown(e.left);
				if(u != null && u.intersectsLine(e.left))
					addToQ(u, e.left, 0);
				if(d != null && d.intersectsLine(e.left))
					addToQ(d, e.left, 0);
			} else//Если это правый конец отрезка
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

        //Добавляет точку в список intersects, если ее абсцисса больше x
	private void addToQ(Line2D a, Line2D b, double x)
	{
		Point2D p = getIntersectionPoint(a, b);
		if(p.getX() > x)
		{
			intersects.add(p);
			Q.add(new Event(p.getX(), a, b));//Добавляем эту точку в дерево
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
	
        //Точка пересичения двух отрезков
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
