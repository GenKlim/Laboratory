package diary;

import com.sun.javafx.scene.control.skin.resources.ControlResources;
import java.time.LocalDate;
import javafx.application.Platform;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.Priority;
import javafx.scene.layout.Region;
import java.time.LocalDateTime;
import java.util.Calendar;

/*
    Диалог для редектирования события (Delay)
*/

class DelayInputDialog extends Dialog<Delay>
{
    private final GridPane grid;//Панели, кнопки, надписи...
    private final DatePicker datePicker;
    private final Label label;
    private final Label label2;
    private final TextField textField;
    private final SpinnerAutoCommit minuteSpinner;
    private final Delay based;
    private final SpinnerAutoCommit hourSpinner;

    // Конструктор, создает диалоговую форму
    DelayInputDialog(Delay based)
    {
        //Изменяемое событие
        this.based = based == null ? new Delay(Calendar.getInstance(), "") : based;

        final DialogPane dialogPane = getDialogPane();
        
        // Текст события
        textField = new TextField(this.based.text);
        textField.setMaxWidth(Double.MAX_VALUE);
        GridPane.setHgrow(textField, Priority.ALWAYS);
        GridPane.setFillWidth(textField, true);

        // Надпись
        label = new Label(dialogPane.getContentText());
        label.setMaxWidth(Double.MAX_VALUE);
        label.setMaxHeight(Double.MAX_VALUE);
        label.getStyleClass().add("content");
        label.setWrapText(true);
        label.setPrefWidth(360);
        label.setPrefWidth(Region.USE_COMPUTED_SIZE);
        label.textProperty().bind(dialogPane.contentTextProperty());

        // Надпись
        label2 = new Label("Дата и время");
        label2.setMaxWidth(Double.MAX_VALUE);
        label2.setMaxHeight(Double.MAX_VALUE);
        label2.getStyleClass().add("content");
        label2.setWrapText(true);
        label2.setPrefWidth(360);
        label2.setPrefWidth(Region.USE_COMPUTED_SIZE);

        // Дата события
        datePicker = new DatePicker();
        datePicker.setValue(DateUtils.asLocalDate(this.based.date));

        // время события
        hourSpinner = new SpinnerAutoCommit(0, 23, this.based.date.get(Calendar.HOUR_OF_DAY));
        hourSpinner.setEditable(true);
        minuteSpinner = new SpinnerAutoCommit(0, 59,  this.based.date.get(Calendar.MINUTE));
        minuteSpinner.setEditable(true);

        // Панель
        grid = new GridPane();
        grid.setHgap(10);
        grid.setMaxWidth(Double.MAX_VALUE);
        grid.setAlignment(Pos.CENTER_LEFT);

        dialogPane.contentTextProperty().addListener(o -> updateGrid());

        // Стили диалоговых компонентов
        setTitle(ControlResources.getString("Dialog.confirm.title"));
        dialogPane.setHeaderText(ControlResources.getString("Dialog.confirm.header"));
        dialogPane.getStyleClass().add("text-input-dialog");
        dialogPane.getButtonTypes().addAll(ButtonType.OK, ButtonType.CANCEL);

        updateGrid();

        // Событие, вызываемое при закрытии формы
        setResultConverter((ButtonType dialogButton) -> {
            ButtonBar.ButtonData data = dialogButton == null ? null : dialogButton.getButtonData();
            if (data == ButtonBar.ButtonData.OK_DONE) {//Если нажали да, то измениям событие
                LocalDate dt = datePicker.getValue();
                LocalDateTime dateTime = dt.atTime((int) hourSpinner.getValue(), (int) minuteSpinner.getValue());
                DelayInputDialog.this.based.date = DateUtils.asCalendar(dateTime);
                DelayInputDialog.this.based.text = textField.getText();
                return DelayInputDialog.this.based;
            }
            return null;
        });
    }

    // Обновляет компоненты формы, заного их добовляя к панели
    private void updateGrid() {
        grid.getChildren().clear();

        grid.add(label, 0, 0);
        grid.add(textField, 1, 0, 2, 1);
        grid.add(label2, 0, 1);
        grid.add(datePicker, 1, 1);
        grid.add(hourSpinner, 2, 1);
        grid.add(minuteSpinner, 2, 2);
        getDialogPane().setContent(grid);

        Platform.runLater(textField::requestFocus);
    }
}
