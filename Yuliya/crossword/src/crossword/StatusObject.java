package crossword;

class StatusObject
{
	private short value = 0;

	public StatusObject setNone()
	{
		value = 0;
		return this;
	}

	public StatusObject setBalck()
	{
		value = 1;
		return this;
	}

	public StatusObject setWhite()
	{
		value = 2;
		return this;
	}

	public boolean isNone()
	{
		return value == 0;
	}

	public boolean isBlack()
	{
		return value == 1;
	}

	public boolean isWhite()
	{
		return value == 2;
	}

	@Override
	public String toString()
	{
		return isWhite() ? "white":isBlack()?"black":"none";
	}
}
