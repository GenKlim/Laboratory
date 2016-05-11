package crossword;

/*
    Простой класс для хранения состояния ячейки
    Может быть установлен в Black None или White
*/

class StatusObject
{
	private short value = 0;//Внутри просто число (0 - None, 1-Black,2-White)
        
        //Установка состояния
	public StatusObject setNone()
	{
		value = 0;
		return this;
	}

        //Установка состояния
	public StatusObject setBalck()
	{
		value = 1;
		return this;
	}

        //Установка состояния
	public StatusObject setWhite()
	{
		value = 2;
		return this;
	}

        //Установленна ли структура в состояние None
	public boolean isNone()
	{
		return value == 0;
	}

        //Установленна ли структура в состояние Black
	public boolean isBlack()
	{
		return value == 1;
	}

        //Установленна ли структура в состояние White
	public boolean isWhite()
	{
		return value == 2;
	}

        //Преоброзование в строку, нужно только для того чтоб при отладке видить текстовое значение
	@Override
	public String toString()
	{
		return isWhite() ? "white":isBlack()?"black":"none";
	}
}
