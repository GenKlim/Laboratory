package lineintersection;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.awt.geom.Line2D;
import java.awt.geom.Point2D;
import java.util.*;
import javax.swing.Timer;

public class Main extends javax.swing.JFrame implements MouseListener, MouseMotionListener, ActionListener
{
	private java.util.List<Line2D> lines = new ArrayList<>();
	private Line2D movedLine;
	private int movedIndex = 0;
	private Timer timer;
	private Point2D createdLine;
	private Alg alg;

	public static void main(String args[])
	{
		java.awt.EventQueue.invokeLater(() -> new Main().setVisible(true));
	}

	private Main()
	{
		setTitle("Title");
		setSize(400, 460);
		setLocationRelativeTo(null);
		setLayout(null);
		addMouseListener(this);
		addMouseMotionListener(this);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		JMenuBar menuBar = new JMenuBar();
		JMenu menu = new JMenu("Menu");

		JMenuItem btnAdd = new JMenuItem("Add lines");
		btnAdd.addActionListener(e -> {
			int n = 10;
			int s = 35;
			for(int i = 1; i < n; i++)
				lines.add(new Line2D.Double(50, 50 + (n - i) * s, 50 + (n - i) * s, 50 + n * s));

			repaint();
		});

		JMenuItem btnClear = new JMenuItem("Clear");
		btnClear.addActionListener(e->{
			lines.removeAll(lines);
			repaint();
		});

		JMenuItem btnStart = new JMenuItem("Start");
		btnStart.addActionListener(e->startAlgorithm());

		menu.add(btnStart);
		menu.add(btnAdd);
		menu.add(btnClear);
		menuBar.add(menu);
		setJMenuBar(menuBar);

		lines.add(new Line2D.Double(150,150,130,187));

		timer = new Timer(150, this);
	}

	@Override
	public void paint(Graphics graphics)
	{
		super.paint(graphics);

		Graphics2D g = (Graphics2D) graphics;
		for(Line2D line : lines)
		{
			g.fillOval((int) line.getX1() - 3, (int) line.getY1() - 3, 6, 6);
			g.fillOval((int) line.getX2() - 3, (int) line.getY2() - 3, 6, 6);
			g.draw(line);
		}

		if(alg != null)
		{
			int x = (int) alg.getX();
			g.setStroke(new BasicStroke(2));
			g.drawLine(x, 32, x, getHeight());

			g.setColor(Color.red);
			for(Point2D k : alg.getIntersectPoints())
				g.fillOval((int) k.getX() - 3, (int) k.getY() - 3, 6, 6);
		}

		if(createdLine != null)
		{
			g.setColor(Color.red);
			g.drawLine((int)createdLine.getX(), (int)createdLine.getY(), getMousePosition().x, getMousePosition().y);
		}
	}

	private void startAlgorithm()
	{
		alg = new Alg(lines);
		timer.start();
	}

	@Override
	public void actionPerformed(ActionEvent e)
	{
		if(alg != null)
		{
			alg.iteration();
			repaint();
			if(alg.isEnd())
				timer.stop();
		}
	}

	@Override
	public void mousePressed(MouseEvent e)
	{
		Point2D p = new Point2D.Double(e.getX(), e.getY());

		for(Line2D line : lines)
		{
			if(line.getP1().distance(p) <= 6)
				movedIndex = 1;
			else if(line.getP2().distance(p) <= 6)
				movedIndex = 2;
			if(movedIndex != 0)
			{
				if(e.getButton() == MouseEvent.BUTTON3)
				{
					lines.remove(line);
					repaint();
				}
				else movedLine = line;
				return;
			}
		}

		if(createdLine != null)
		{
			if(e.getButton() == MouseEvent.BUTTON1)
				lines.add(new Line2D.Double(createdLine.getX(), createdLine.getY(), e.getX(),e.getY()));
			createdLine = null;
			repaint();
		}
		else if(e.getButton() == MouseEvent.BUTTON1)
			createdLine = e.getPoint();
	}

	@Override
	public void mouseDragged(MouseEvent e)
	{
		if(movedIndex != 0)
		{
			if(movedIndex == 1)
				movedLine.setLine(e.getPoint(), movedLine.getP2());
			else
				movedLine.setLine(movedLine.getP1(), e.getPoint());
			alg = null;
			repaint();
		}
	}

	@Override
	public void mouseMoved(MouseEvent e)
	{
		if(createdLine != null)
			repaint();
	}

	@Override
	public void mouseReleased(MouseEvent e)
	{
		movedIndex = 0;
	}

	@Override
	public void mouseClicked(MouseEvent e){}
	@Override
	public void mouseEntered(MouseEvent e){}
	@Override
	public void mouseExited(MouseEvent e){}
}