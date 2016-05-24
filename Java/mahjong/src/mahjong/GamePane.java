package Mahjong;

import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.*;
import java.util.List;

/*
* Класс игрового поля
* Содержит всю игровую логику
*/

//Наследуем от стандартной панели, и добовляем возможность реагировать на события мыши
class GamePane extends JPanel implements MouseListener
{
	private List<Tile> map = new ArrayList<>();//Список всех доступных карточек
	private List<BufferedImage> images;//Список всех доступных картинок
	private Tile selectTile = null;//Ссылка на выбраную карточку
	private BufferedImage img_tile_background;//Картинка фона карточки
	private BufferedImage img_tile_selected;//Картинка выбора карточки
	int Size = 6;//Размер поля

	GamePane()//Конструктор
	{
		addMouseListener(this);//Включавем обработку событий мыши
		loadImages("images\\tiles");//Загружаем все картинки из папки
		try//Обработка ошибок
		{
			img_tile_background = ImageIO.read(new File("images\\background.png"));//Загружаем картинки
			img_tile_selected = ImageIO.read(new File("images\\selected.png"));
		}
		catch(IOException e)//Если что то пошло не так
		{
			System.out.println("Необходимые изображения не найдены");
		}
		newGame();
	}

	void newGame()//Создает овую игру
	{
		map.clear();//Отчищаем карту
		Random rand = new Random();//Создаем новый гениратор случайных чисел

		//Получаем двумерный массив с шумом
		//Значение в ячейки этого массива будет означать высоту в этом месте
		float[][] noise = NoiseGenerator.Get2D(Size, Size);

		List<Tile> tile_map = new ArrayList<>();//Создаем временный список карточек

		for(int i = 0; i < Size; i++)//Перебераем массив с шумом
		{
			for(int j = 0; j < Size; j++)
			{
				//Берем значение шума в этой точке, откругляем и повторяем солько раз
				for(int k = 0; k < (int) noise[i][j]; k++)
					tile_map.add(new Tile(i, j, k));//Создаем карточку по этим координатам
			}
		}

		//Перебираем временный массив с карточками, если там останится один элемент то просто збудем про него
		while(tile_map.size() > 1)
		{
			Tile a = tile_map.get(rand.nextInt(tile_map.size()));//Берем 2 случайные карточки из массива
			Tile b = tile_map.get(rand.nextInt(tile_map.size()));

			if(a != b)//Если это разные карточки
			{
				BufferedImage img = images.get(rand.nextInt(images.size()));//Берем случайную картинку из списка
				a.Image = img;//Устанавливаем им ее
				b.Image = img;
				tile_map.remove(a);//Удаляем из временного списка
				tile_map.remove(b);
				map.add(a);//Добавляем в основной список
				map.add(b);
			}
		}

		map.sort(new Comparator<Tile>(){//Запускаем сортировку по Z кординате, в начале массива будут крточки лежащие на нижнем уровне
			@Override
			public int compare(Tile a, Tile b)
			{
				return Integer.compare(a.indexZ,b.indexZ);
			}
		});

		//Устанавливаем размер поря, так чтоб все влезло
		setMinimumSize(new Dimension(Size * Tile.Width + 40, Size * Tile.Height + 40));
		setPreferredSize(getMaximumSize());
		repaint();//Нужна перерисовка
	}

	//Ф-ия для загрузки картинок из папки
	private void loadImages(String path)
	{
		images = new ArrayList<>();//Список с картинкимми
		try//Обработка ошибок
		{
			Files.walkFileTree(Paths.get(path), new SimpleFileVisitor<Path>()//Запускаем перебор файлов в нужной папке
			{
				@Override
				public FileVisitResult visitFile (Path path, BasicFileAttributes attrs)//Событие, вызываемое для каждого найденого файла
				{
					File file = path.toFile();//Файл
					try {//Обработка ошибок
						BufferedImage image = ImageIO.read(file);//Пытаемся прочитать картинку
						if (image != null)//Если там действительно была картинка
							images.add(image);//Добавляем в список
					}
					catch (Exception ex) {//Если что то пошло не так
						System.out.println("Ошибка чтения файла " + file + ": " + ex.getLocalizedMessage());
					}
					return FileVisitResult.CONTINUE;//Продолжаем поиск файлов
				}
			});
		}
		catch(IOException e)//Если что то пошло не так
		{
			System.out.println("Каталог с изображениями не найден");
		}
	}

	//Событие перерисовки панели
	@Override
	public void paint(Graphics graphics)
	{
		super.paint(graphics);//Вызяваем базовую отриовку

		Graphics2D g = (Graphics2D) graphics;//Так удобней

		for(Tile t : map)//Перебираем все карточки
		{
			g.drawImage(img_tile_background, t.x, t.y, null);//Рисуем фон
			g.drawImage(t.Image, t.x, t.y, null);//Картинку карточки
		}
		if(selectTile != null)//Если есть выделенная картинка, нарисуем на ней зеленое пятно
			g.drawImage(img_tile_selected, selectTile.x, selectTile.y, null);
	}

	//Проверяет открыта ли карточка (сверху нет карточки и нет карточки слева или справа)
	private boolean isOpen(Tile tile)
	{
		Point left = new Point(tile.indexX - 1, tile.indexY);//Координаты карточек слева и справа
		Point right = new Point(tile.indexX + 1, tile.indexY);

		boolean isContact = false;//Флаг, означает что мы уже нашли карточку слева или справа
		for(Tile t : map)//Перебираем все карточки
		{
			Point index = t.getIndex();//Координаты этой карточки
			if(t.indexZ == tile.indexZ)//Сравниваем высоту, если она равна
			{
				if(index.equals(left) || index.equals(right))//Если эта картачка слева или справа
				{
					if(isContact)//Если уже находили, то это вторая
						return false;//Закрыто
					isContact = true;//Нашли одну карточку
				}
			} else if(t.indexZ > tile.indexZ && index.equals(tile.getIndex()))//Если высота больше и координаты совподяю
				return false;//То карточка закрываем данную
		}

		return true;//Карточка открыта
	}

	//Возвращаем карточку, под курсором
	private Tile getTileByCursor()
	{
		Point point = getMousePosition();//Позиция мыши относительно игровой панели
		for(int i = map.size() - 1; i >= 0; i--)//Перебираем крточки с конца, сначала встретим карточки лежащие сверху
		{
			if(map.get(i).isContactPoint(point))//Если точка внутри карточки
				return map.get(i);//Возврящаем эту карточку
		}
		return null;//Ничего не нашли
	}

	//Событие нажатия клавиши мыши
	@Override
	public void mousePressed(MouseEvent e)
	{
		Tile newSelect = getTileByCursor();//Получем то, что сейчас находится под курсором
		if(selectTile != null && newSelect != null)//Ели была выбранна карточка и сейтчас курсор тоже находится над карточкой
		{
			//Если эти карточки открыты и их можно соеденить (картинки совполают)
			if(isOpen(selectTile) && isOpen(newSelect) && selectTile.isCollapse(newSelect))
			{
				map.remove(selectTile);//Удаляем их
				map.remove(newSelect);
				newSelect = null;//Сбрамыыаем выделение
			}
		}
		selectTile = newSelect;//Обновляем значение
		repaint();//Нужна перерисовка
	}


	@Override
	public void mouseReleased(MouseEvent e){}//Событие отжатия клавиши мыши, не используется но интерфейс требует определения этого метода
	@Override
	public void mouseClicked(MouseEvent e){}//Событие клика мыши, не используется но интерфейс требует определения этого метода
	@Override
	public void mouseEntered(MouseEvent e){}//Событие обнаружения курсора над элментом, не используется но интерфейс требует определения этого метода
	@Override
	public void mouseExited(MouseEvent e){}//Событие потери курсора элементом, не используется но интерфейс требует определения этого метода
}
