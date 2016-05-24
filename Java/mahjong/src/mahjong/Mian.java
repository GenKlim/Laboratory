package Mahjong;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

//Класс окна приложения
class Main extends javax.swing.JFrame
{
	GamePane game;//Игровая панель

	//Точка входа, создаем и запускаем окно
	public static void main(String args[])
	{
		java.awt.EventQueue.invokeLater(new Runnable()
		{
			@Override
			public void run()
			{new Main().setVisible(true);}
		});
	}

	private Main()
	{
		setTitle("Mahjong");//Заголовок
		setSize(400, 560);//Размер
		setLayout(new GridBagLayout());//Компоновщик, нужен для выравнивания игровой панели в центре
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//Говорим, что закрытие этого окна заканчивает программу

		game = new GamePane();//Создаем игровую панель
		add(game);

		JMenuBar menuBar = new JMenuBar();//Меню
		JMenu menu = new JMenu("Меню");//Вкладка меню

		JMenuItem btnStart = new JMenuItem("Новая игра");//Кнопка меню
		btnStart.addActionListener(new ActionListener()//Событие нажатия на кнопку в меню
		{
			@Override
			public void actionPerformed(ActionEvent e)
			{
				game.newGame();//Начинаем новую игру
			}
		});

		JMenuItem btnResize = new JMenuItem("Установить размер");//Кнопка меню
		btnResize.addActionListener(new ActionListener()//Событие нажатия на кнопку в меню
		{
			@Override
			public void actionPerformed(ActionEvent e)
			{
				String text = JOptionPane.showInputDialog("Введите размер поля");//Запускаем диалоговое окно
				game.Size = Integer.parseInt(text);//Преобразуем текст в целое число
				game.newGame();//Начинаем новую игру
			}
		});

		menu.add(btnStart);//Добавляем все компоненты меню
		menu.add(btnResize);
		menuBar.add(menu);
		setJMenuBar(menuBar);
	}
}