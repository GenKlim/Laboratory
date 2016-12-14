package sample;

public class Setting
{
	private boolean useReg;
	private boolean autoBackspace;
	private boolean multiPhrase;
	private boolean useTime;
	private static Setting instance;

	public static Setting getInstance()
	{
		return instance;
	}

	public Setting()
	{
		instance = this;
	}

	public boolean isUseReg()
	{
		return useReg;
	}

	public void setUseReg(boolean useReg)
	{
		this.useReg = useReg;
	}

	public boolean isAutoBackspace()
	{
		return autoBackspace;
	}

	public void setAutoBackspace(boolean autoBackspace)
	{
		this.autoBackspace = autoBackspace;
	}

	public boolean isMultiPhrase()
	{
		return multiPhrase;
	}

	public void setMultiPhrase(boolean multiPhrase)
	{
		this.multiPhrase = multiPhrase;
	}

	public boolean isUseTime()
	{
		return useTime;
	}

	public void setUseTime(boolean useTime)
	{
		this.useTime = useTime;
	}
}
