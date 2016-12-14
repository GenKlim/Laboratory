package sample;

import javafx.collections.ObservableList;
import javafx.scene.Node;
import javafx.scene.control.Label;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.HBox;

public class Task
{
	private int position;
	private final HBox container;
	public final String Text;

	public Task(String text, HBox container)
	{
		Text = text;
		position = 0;

		this.container = container;
		container.getChildren().clear();

		for(char c : text.toCharArray())
		{
			Label label = new Label();
			label.setText(String.valueOf(c));

			container.getChildren().add(label);
		}

		setPosition(0);
	}

	public void doKeyPress(KeyEvent event)
	{
		Setting setting = Setting.getInstance();

		String k = event.getText();
		String c = String.valueOf(Text.charAt(position));

		if(!setting.isUseReg())
		{
			k = k.toLowerCase();
			c = c.toLowerCase();
		}

		if(k.compareTo(c) == 0)
			setPosition(position + 1);
	}

	public void setPosition(int newPosition)
	{
		ObservableList<Node> children = container.getChildren();

		position = newPosition;

		for(int i = 0; i < children.size(); i++)
		{
			Node label = children.get(i);
			if(i < position)
			{
				label.getStyleClass().add("set");
				label.getStyleClass().remove("next");
			}
			else if(i == position)
			{
				label.getStyleClass().remove("set");
				label.getStyleClass().add("next");
			}
			else
			{
				label.getStyleClass().remove("set");
				label.getStyleClass().remove("next");
			}
		}
	}

	public int getPosition()
	{
		return position;
	}
}