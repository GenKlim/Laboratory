package Keyboard;

class Setting
{
	enum Difficulty
	{
		single,
		simple,
		normal,
		strong,
		text
	}

	static boolean useReg = false;
	static boolean autoBackspace = true;
	static boolean multiPhrase = true;
	static boolean useTime = false;
	static int timeLimit = 60;
	static int phraseCount = 5;
	static Difficulty difficulty = Difficulty.normal;
}