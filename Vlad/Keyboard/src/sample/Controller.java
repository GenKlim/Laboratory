package sample;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

public class Controller
{
	private Task activeTask;
	private Setting setting;

	public HBox PrintBox;

	@FXML
	protected void initialize()
	{
		setting = new Setting();
		OnRestartClick(null);
	}

	@FXML
	void OnCloseClick(ActionEvent event)
	{
		System.exit(0);
	}

	@FXML
	void OnRestartClick(ActionEvent event)
	{
		activeTask = new Task("Hello, world!", PrintBox);
	}

	@FXML
	void OnKeyPress(KeyEvent event)
	{
		activeTask.doKeyPress(event);
	}

	@FXML
	void OnOpenSetting(ActionEvent event) throws Exception
	{
		Parent root = FXMLLoader.load(getClass().getResource("SettingWindow.fxml"));
		Stage stage = new Stage();
		stage.setTitle("Настройки");
		stage.setScene(new Scene(root, 450, 450));
		stage.show();
	}
}