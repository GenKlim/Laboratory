package Mahjong;

import java.awt.*;
import java.awt.image.BufferedImage;

// Класс карточки
// Это не элемент интерфейса а прото описание карточки, ее отрисовка происходит вручню в GamePane
class Tile
{
	//Константы
	static final int Width = 60;//Размер
	static final int Height = 80;
	static final int Border = 20;// отступ от левого края игрового поля

	BufferedImage Image;//Картинка
	int indexX,indexY,indexZ;//Координаты на игровом поле
	int x, y;//Реальные координаты в пикселях

	Tile(int x, int y, int z)//Конструктор
	{
		indexX = x;
		indexY = y;
		indexZ = z;
		this.x = Border + x * Width - z*5;//Считаем реальные координаты
		this.y = Border + y * Height - z*5;
	}

	//Возврощяет true если данная карточка может быть соеденина с указанной
	boolean isCollapse(Tile b)
	{
		return this != b && Image == b.Image;
	}

	//Отпередяем находится ли точка внутри картоки (в реальных координатах)
	boolean isContactPoint(Point point)
	{
		return x <= point.x && y <= point.y && x + Width > point.x && y + Height > point.y;
	}

	//Возвращяет коодинаты в виде точки
	Point getIndex()
	{
		return new Point(indexX, indexY);
	}
}