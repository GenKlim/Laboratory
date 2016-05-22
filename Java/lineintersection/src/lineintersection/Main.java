package lineintersection;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.awt.geom.Line2D;
import java.awt.geom.Point2D;
import java.util.*;
import javax.swing.Timer;

 //Реагирует на события мыши и таймера
public class Main extends javax.swing.JFrame implements MouseListener, MouseMotionListener, ActionListener
{
	private java.util.List<Line2D> lines = new ArrayList<>();//Список прямых
	private Line2D movedLine;//Перемещаемая прямая
	private int movedIndex = 0;//Для перемещения прямых
	private final Timer timer;
	private Point2D createdLine;//Создаваема прямая
	private Alg alg;//Алгоритм

        //Точка входа, запускает окно
	public static void main(String args[])
	{
		java.awt.EventQueue.invokeLater(new Runnable() {
                    @Override
                    public void run() {
                        new Main().setVisible(true);
                    }
                });
	}

	private Main()
	{
		setTitle("Title");
		setSize(400, 460);
		setLocationRelativeTo(null);
		setLayout(null);//Убираем компановщик
		addMouseListener(this);//Подписываемся на события мыши
		addMouseMotionListener(this);//Подписываемся на события мыши
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//Закрытие этого окна завершает работу программы

		JMenuBar menuBar = new JMenuBar();//Меню
		JMenu menu = new JMenu("Menu");

		JMenuItem btnClear = new JMenuItem("Clear");
		btnClear.addActionListener(new ActionListener() {//Клик по меню
                    @Override
                    public void actionPerformed(ActionEvent e) {
                        lines.removeAll(lines);
                        repaint();//Перерисовка окна
                    }
                });

		JMenuItem btnStart = new JMenuItem("Start");
		btnStart.addActionListener(new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent e) {
                        startAlgorithm();
                    }
                });

		menu.add(btnStart);
		menu.add(btnClear);
		menuBar.add(menu);
		setJMenuBar(menuBar);

		lines.add(new Line2D.Double(150,150,130,187));

		timer = new Timer(150, this);//Создание таймера с частотой 150мс
	}

        //Событие перерисовки окна
	@Override
	public void paint(Graphics graphics)
	{
		super.paint(graphics);//Базовая отрисовка

		Graphics2D g = (Graphics2D) graphics;
                //Рисуем все отрезки и точки на их концах
		for(Line2D line : lines)
		{
			g.fillOval((int) line.getX1() - 3, (int) line.getY1() - 3, 6, 6);//Точка
			g.fillOval((int) line.getX2() - 3, (int) line.getY2() - 3, 6, 6);//Точка
			g.draw(line);
		}

                //если алгоритм запущен
		if(alg != null)
		{
			int x = (int) alg.getX();//Текущее положение
			g.setStroke(new BasicStroke(2));//Толщина линии
			g.drawLine(x, 32, x, getHeight());

			g.setColor(Color.red);
			for(Point2D k : alg.getIntersectPoints())
				g.fillOval((int) k.getX() - 3, (int) k.getY() - 3, 6, 6);
		}

                //Если создаем линию, нарисум ее красным
		if(createdLine != null)
		{
			g.setColor(Color.red);
			g.drawLine((int)createdLine.getX(), (int)createdLine.getY(), getMousePosition().x, getMousePosition().y);
		}
	}

        //Запуск алгоритма и таймера
	private void startAlgorithm()
	{
		alg = new Alg(lines);
		timer.start();
	}

        //Тик таймера
	@Override
	public void actionPerformed(ActionEvent e)
	{
            //Если запущенн алгоритм
		if(alg != null)
		{
			alg.iteration();//Делаем шаг
			repaint();//Перерисовка окна
			if(alg.isEnd())
				timer.stop();
		}
	}

        //Нажатие мыши
	@Override
	public void mousePressed(MouseEvent e)
	{
                //Куда кликнули
		Point2D p = new Point2D.Double(e.getX(), e.getY());

                //Перебираем все отрезки
		for(Line2D line : lines)
		{
			if(line.getP1().distance(p) <= 6)//Если кликнули на левую точку
				movedIndex = 1;
			else if(line.getP2().distance(p) <= 6)//Если кликнули на правую точку
				movedIndex = 2;
			if(movedIndex != 0)
			{
				if(e.getButton() == MouseEvent.BUTTON3)//Если клинкули правой кнопкой то удаляем отрезок
				{
					lines.remove(line);
					repaint();
				}
				else
                                    movedLine = line;
				return;
			}
		}

                //Если создаем отрезок
		if(createdLine != null)
		{
			if(e.getButton() == MouseEvent.BUTTON1)//Если нажали ЛКМ то создам этот отрезок
				lines.add(new Line2D.Double(createdLine.getX(), createdLine.getY(), e.getX(),e.getY()));
			createdLine = null;
			repaint();
		}
		else if(e.getButton() == MouseEvent.BUTTON1)
			createdLine = e.getPoint();//Начинам создавать новый отрезок
	}

        //Перетаскивание мыши
	@Override
	public void mouseDragged(MouseEvent e)
	{
		if(movedIndex != 0)//Если перемещаем
		{
                    //Переместим нужный конец отрезка
			if(movedIndex == 1)
				movedLine.setLine(e.getPoint(), movedLine.getP2());
			else
				movedLine.setLine(movedLine.getP1(), e.getPoint());
			alg = null;
			repaint();
		}
	}

        //Перемещение мышм
	@Override
	public void mouseMoved(MouseEvent e)
	{
		if(createdLine != null)
			repaint();//Если воздаем отрезок то нужно перерисовать его
	}

        //Отпустили клавишу мыши
	@Override
	public void mouseReleased(MouseEvent e)
	{
		movedIndex = 0;//Больше не чего не перемещаем
	}

        //Не используемые события
	@Override
	public void mouseClicked(MouseEvent e){}
	@Override
	public void mouseEntered(MouseEvent e){}
	@Override
	public void mouseExited(MouseEvent e){}
}