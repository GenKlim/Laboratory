package Keyboard;

import javafx.collections.ObservableList;
import javafx.scene.Node;
import javafx.scene.control.Label;
import javafx.scene.input.KeyCode;

import java.io.*;
import java.util.Random;

import javafx.scene.layout.Pane;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

class Task
{
	private int position;
	private final Pane container;
	private String text = "";
	private boolean error = false;
	private static JSONObject dictionarys;
	private static Random rand = new Random();

	Task(Pane container)
	{
		this.container = container;
		container.getChildren().clear();

		generateText();

		for(char c : text.toCharArray())
		{
			Label label = new Label();
			label.setText(String.valueOf(c));

			container.getChildren().add(label);
		}

		setPosition(0);
	}

	private void generateText()
	{
		JSONArray dictionary = (JSONArray) dictionarys.get(Setting.difficulty.toString());

		int loopCount = Setting.difficulty == Setting.Difficulty.text ? 1 : Setting.phraseCount;

		if(Setting.multiPhrase)
		{
			for(int i = 0; i < loopCount; i++)
			{
				if(i != 0)
					text += " ";
				text += (String) dictionary.get(rand.nextInt(dictionary.size()));
			}
			return;
		}

		String phrase = (String) dictionary.get(rand.nextInt(dictionary.size()));

		for(int i = 0; i < loopCount; i++)
		{
			if(i != 0)
				text += " ";
			text += phrase;
		}
	}

	boolean doKeyPress(KeyCode key, String keyText)
	{
		switch(key)
		{
			case BACK_SPACE:
				if(!error)
					break;

				error = false;
				container.getStyleClass().remove("error");
				return true;

			default:
				if(!Setting.autoBackspace && error)
					break;

				String c = String.valueOf(text.charAt(position));

				if(!Setting.useReg)
				{
					keyText = keyText.toLowerCase();
					c = c.toLowerCase();
				}

				if(keyText.compareTo(c) == 0)
				{
					setPosition(position + 1);
					return true;
				}
				else if(!Setting.autoBackspace)
				{
					error = true;
					container.getStyleClass().add("error");
				}
		}
		return false;
	}

	private void setPosition(int newPosition)
	{
		newPosition = Math.max(Math.min(newPosition, text.length()), 0);

		if(newPosition == position) return;

		ObservableList<Node> children = container.getChildren();
		position = newPosition;

		for(int i = 0; i < children.size(); i++)
		{
			ObservableList<String> styles = children.get(i).getStyleClass();
			styles.remove("set");
			styles.remove("next");

			if(i < position)
				styles.add("set");
			else if(i == position)
				styles.add("next");
		}
	}

	boolean isDone()
	{
		return position == text.length();
	}

	static void LoadDictionary(String file) throws IOException, ParseException
	{
		JSONParser parser = new JSONParser();

		InputStream in = Task.class.getResourceAsStream(file);
		java.util.Scanner scanner = new java.util.Scanner(in,"UTF-8").useDelimiter("\\A");

		dictionarys = (JSONObject) parser.parse(scanner.next());
	}
}