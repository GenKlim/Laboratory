package crossword;

class StatusObject
{
	private short value = 0;
        
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

}
