package Keyboard;

import javafx.animation.*;
import javafx.beans.property.*;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.input.*;
import javafx.scene.layout.*;
import javafx.scene.paint.Color;
import javafx.util.Duration;
import org.json.simple.*;
import org.json.simple.parser.*;

import java.io.*;
import java.net.URL;
import java.util.*;

public class MainController implements Initializable
{
	private Task activeTask;
	private JSONObject layout;
	private HashMap<KeyCode, Button> keyboard;
	private String locale;
	private boolean isCaps;
	private long startTime;
	private int charCount;
	private int timeLimit;
	private int level;
	private Timeline timer;
	private boolean timerRun;

	@FXML VBox mainBox;
	@FXML FlowPane printBox;
	@FXML GridPane btnContainers;
	@FXML ToggleButton useRegBtn;
	@FXML ToggleButton useTimeBtn;
	@FXML ToggleButton autoBackspaceBtn;
	@FXML ToggleButton multiPhraseBtn;
	@FXML ToggleButton difSingleBtn;
	@FXML ToggleButton difSimpleBtn;
	@FXML ToggleButton difNormalBtn;
	@FXML ToggleButton difStrongBtn;
	@FXML ToggleButton difTextBtn;
	@FXML Button localeBtn;
	@FXML ToggleButton capsBtn;
	@FXML Label statusLabel;
	@FXML Label timeLimitLabel;
	@FXML Label phraseCountLabel;
	@FXML Slider timeLimitSlider;
	@FXML Slider phraseCountSlider;

	@Override
	public void initialize(URL location, ResourceBundle resources)
	{
		loadLayout();
		bindKeyboard();

		changeLang("rus", false);

		timer = new Timeline(new KeyFrame(Duration.millis(1000), event ->
		{
			timeLimit--;
			updateStatus();
		}));

		phraseCountSlider.valueProperty().addListener((obs ->
		{
			int value = (int) phraseCountSlider.getValue();
			phraseCountLabel.setText(String.valueOf(value));
			Setting.phraseCount = value;
			onRestartClick(null);
		}));

		timeLimitSlider.valueProperty().addListener((obs ->
		{
			int value = (int) timeLimitSlider.getValue();
			timeLimitLabel.setText(String.valueOf(value));
			Setting.timeLimit = value;
			onRestartClick(null);
		}));

		timeLimitSlider.setDisable(!Setting.useTime);

		bindToggleButton(useRegBtn, Setting.useReg, event ->
		{
			Setting.useReg = useRegBtn.isSelected();
			onRestartClick(null);
		});

		bindToggleButton(useTimeBtn, Setting.useTime, event ->
		{
			Setting.useTime = useTimeBtn.isSelected();
			timeLimitSlider.setDisable(!Setting.useTime);
			onRestartClick(null);
		});

		bindToggleButton(autoBackspaceBtn, Setting.autoBackspace, event ->
		{
			Setting.autoBackspace = autoBackspaceBtn.isSelected();
			onRestartClick(null);
		});

		bindToggleButton(multiPhraseBtn, !Setting.multiPhrase, event ->
		{
			Setting.multiPhrase = !multiPhraseBtn.isSelected();
			onRestartClick(null);
		});

		bindToggleButton(capsBtn, isCaps, event -> changeLang(locale, capsBtn.isSelected()));
		bindToggleButton(difSingleBtn, false, event -> setDifficulty(Setting.Difficulty.single));
		bindToggleButton(difSimpleBtn, false, event -> setDifficulty(Setting.Difficulty.simple));
		bindToggleButton(difNormalBtn, false, event -> setDifficulty(Setting.Difficulty.normal));
		bindToggleButton(difStrongBtn, false, event -> setDifficulty(Setting.Difficulty.strong));
		bindToggleButton(difTextBtn, false, event -> setDifficulty(Setting.Difficulty.text));
		setDifficulty(Setting.difficulty);

		onRestartClick(null);
	}

	private static boolean lookFlag = false;
	private void setDifficulty(Setting.Difficulty value)
	{
		if(lookFlag) return;

		lookFlag = true;
		difSingleBtn.setSelected(value == Setting.Difficulty.single);
		difSimpleBtn.setSelected(value == Setting.Difficulty.simple);
		difNormalBtn.setSelected(value == Setting.Difficulty.normal);
		difStrongBtn.setSelected(value == Setting.Difficulty.strong);
		difTextBtn.setSelected(value == Setting.Difficulty.text);
		Setting.difficulty = value;

		switch(Setting.difficulty)
		{
			case simple:
				Setting.timeLimit = 15 * Setting.phraseCount + 15;
				break;
			case normal:
				Setting.timeLimit = 10 * Setting.phraseCount;
				break;
			case strong:
				Setting.timeLimit = 5 * Setting.phraseCount;
				break;
			case text:
				Setting.timeLimit = 4 * Setting.phraseCount;
				break;
		}

		timeLimitSlider.setValue(Setting.timeLimit);

		lookFlag = false;

		onRestartClick(null);
	}

	private void bindToggleButton(ToggleButton button, boolean value, EventHandler<ActionEvent> event)
	{
		button.setSelected(value);
		button.setOnAction(event);
	}

	private void bindKeyboard()
	{
		keyboard = new HashMap<>();
		for(Node node : btnContainers.getChildren())
		{
			if(node.getClass() != HBox.class)
				continue;

			for(Node node2 : ((Pane) node).getChildren())
			{
				KeyCode key = KeyCode.valueOf(((Button) node2).getText());
				keyboard.put(key, (Button) node2);
			}
		}
	}

	private void updateStatus()
	{
		if(charCount == 1 && !timerRun)
		{
			startTime = System.currentTimeMillis();
			if(Setting.useTime)
			{
				timerRun = true;
				timer.play();
			}
			return;
		}

		int speed = (int) ((60000.0f * charCount) / (float) (System.currentTimeMillis() - startTime));

		String text = speed + " символов в минуту";

		if(Setting.useTime)
		{
			if(timeLimit == 0)
				text += ", время вышло";
			else
				text += ", осталось " + timeLimit + " секунд";
		}

		statusLabel.setText(text);
	}

	@FXML
	void onRestartClick(ActionEvent event)
	{
		printBox.getStyleClass().remove("error");
		charCount = 0;
		statusLabel.setText("");
		activeTask = new Task(printBox);

		timerRun = false;
		timer.stop();

		if(Setting.useTime)
		{
			timeLimit = Setting.timeLimit;
			timer.setCycleCount(Setting.timeLimit);
		}
	}

	@FXML
	void onKeyClick(ActionEvent event)
	{
		keyboard.entrySet().stream().anyMatch(pair ->
		{
			if(event.getSource() == pair.getValue())
				onKeyPress(new KeyEvent(null, null, null, "", "", pair.getKey(), false, false, false, false));
			else
				return false;
			return true;
		});
	}

	@FXML
	void onKeyPress(KeyEvent event)
	{
		if(activeTask.isDone())
		{
			nextTask();
			return;
		}

		int code = 0;
		KeyCode key = getKeyCode(event);
		switch(key)
		{
			case SHIFT:
				changeLang(locale, !isCaps);
				break;
			case CAPS:
				changeLang(locale, !isCaps);
				break;
			default:
				Button btn = keyboard.getOrDefault(key, null);
				String text = btn != null ? btn.getText() : "";
				code = activeTask.doKeyPress(key, text) ? 2 : 1;
				break;
		}

		if(code == 2)
		{
			charCount++;
			updateStatus();
		}

		Button btn = keyboard.getOrDefault(key, null);
		if(btn != null)
		{
			Color color = code == 0 ? Color.rgb(63, 218, 253) : code == 1 ? Color.rgb(253, 63, 73) : Color.rgb(63, 253, 107);
			playClickEffect(btn, color);
		}
	}

	private KeyCode getKeyCode(KeyEvent event)
	{
		if(event.getCode() != KeyCode.UNDEFINED)
			return event.getCode();

		switch(event.getText().toLowerCase())
		{
			case "э":
				return KeyCode.QUOTE;
			case "ж":
				return KeyCode.SEMICOLON;
			case "х":
				return KeyCode.OPEN_BRACKET;
			case "ъ":
				return KeyCode.CLOSE_BRACKET;
			case "б":
				return KeyCode.COMMA;
			case "ю":
				return KeyCode.PERIOD;
			case "ё":
				return KeyCode.BACK_QUOTE;
			case ".":
				return KeyCode.SLASH;
			default:
				return KeyCode.UNDEFINED;
		}
	}

	private void nextTask()
	{
		int temp = charCount;
		onRestartClick(null);
		charCount = temp + 1;
		level++;

		if(Setting.useTime)
		{
			timeLimit = Math.max(Setting.timeLimit - level * Setting.phraseCount, 3 * Setting.phraseCount);
			timer.setCycleCount(Setting.timeLimit);
			timer.play();
			timerRun = true;
		}

		updateStatus();
}

	@FXML
	public void OnKeyReleased(KeyEvent keyEvent)
	{
		if(keyEvent.getCode() == KeyCode.SHIFT)
			changeLang(locale, !isCaps);
	}

	private void playClickEffect(Button control, Color color)
	{
		Timeline timeline = new Timeline();
		SimpleObjectProperty<Color> op = new SimpleObjectProperty();

		timeline.getKeyFrames().addAll(
				new KeyFrame(new Duration(0), 	new KeyValue(op, Color.WHITE)),
				new KeyFrame(new Duration(70), new KeyValue(op, color)),
				new KeyFrame(new Duration(170), new KeyValue(op, color)),
				new KeyFrame(new Duration(340), new KeyValue(op, Color.WHITE))
		);

		op.addListener((obs, old, newColor) ->
				control.setStyle(String.format("-background-color: #%02x%02x%02x; ",
						(int)(newColor.getRed() * 255),
						(int)(newColor.getGreen() * 255),
						(int)(newColor.getBlue() * 255))
				)
		);

		timeline.play();
	}

	private void loadLayout()
	{
		try
		{
			JSONParser parser = new JSONParser();

			InputStream in = getClass().getResourceAsStream("Layout.json");
			java.util.Scanner scanner = new java.util.Scanner(in,"UTF-8").useDelimiter("\\A");

			layout = (JSONObject) parser.parse(scanner.next());
		}
		catch(ParseException e)
		{
			System.out.println("Файл раскладки клавиатуры Layout.json поврежден");
			System.exit(0);
		}
	}

	private void changeLang(String lang, boolean caps)
	{
		int index = caps ? 1 : 0;
		locale = lang;
		isCaps = caps;
		capsBtn.setSelected(caps);
		localeBtn.setText(lang);

		JSONObject table = (JSONObject) layout.get(lang);
		keyboard.forEach((key, btn) ->
		{
			Object symbol = table.get(key.toString());
			if(symbol != null)
				btn.setText((String) ((JSONArray) symbol).get(index));
		});
	}

	@FXML
	public void onChangeLang(ActionEvent event)
	{
		changeLang(locale.equals("eng") ? "rus" : "eng", isCaps);
	}
}