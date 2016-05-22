package diary;

import com.sun.javafx.scene.control.skin.resources.ControlResources;
import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.GridPane;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/*
    Диалог для редектирования списка событий, список формируется из Delay.Delays по дате
*/

class DelayListDialog extends Dialog<ObservableList<Delay>>
{
    private final GridPane grid;//Панели, кнопки, надписи...
    private final Button btnAdd;
    private final Button btnEdit;
    private final Button btnDelete;
    private final ListView<Delay> listView;
    private final Calendar src;

    DelayListDialog(Calendar src)
    {
        this.src = src;//Дата
        final DialogPane dialogPane = getDialogPane();

        grid = new GridPane();
        listView = new ListView<>();
        btnAdd = new Button("Добавить");
        btnEdit = new Button("Изменить");
        btnDelete = new Button("Удалить");

        btnAdd.setMaxSize(Double.MAX_VALUE, Double.MAX_VALUE);
        btnEdit.setMaxSize(Double.MAX_VALUE, Double.MAX_VALUE);
        btnDelete.setMaxSize(Double.MAX_VALUE, Double.MAX_VALUE);

        //Даблклик по элементу списка
        listView.setOnMouseClicked(e -> {
            if(e.getClickCount() == 2)
                doEdit();
        });
        //Нажатие на кнопку изменить
        btnEdit.setOnAction(e -> doEdit());
        //Нажатие на кнопку удалить
        btnDelete.setOnAction(e -> {
            Delay selected = listView.getSelectionModel().getSelectedItem();
            if(selected!=null)//Если что то выбранно
            {
                listView.getItems().remove(selected);
                Delay.Delays.remove(selected);// Удалить из списка всех событий
            }
        });
        //Нажатие на кнопку добавить
        btnAdd.setOnAction(e -> {
            //Создание нового события, запуск DelayInputDialog
            DelayInputDialog dialog = new DelayInputDialog(new Delay((Calendar) src.clone(), ""));
            dialog.setTitle("Новое событие");
            dialog.setHeaderText("Добавление события");
            dialog.setContentText("Событие");

            Optional<Delay> result = dialog.showAndWait();
            if(result.isPresent())//Если есть результат
            {
                Delay.Delays.add(result.get());//Добавить в список всех событий
                updateList();
            }
        });

        grid.setHgap(10);
        grid.setMaxWidth(Double.MAX_VALUE);
        grid.setAlignment(Pos.CENTER_LEFT);

        dialogPane.contentTextProperty().addListener(o -> updateGrid());

        // Стили диалоговых компонентов
        setTitle(ControlResources.getString("Dialog.confirm.title"));
        dialogPane.setHeaderText(ControlResources.getString("Dialog.confirm.header"));
        dialogPane.getStyleClass().add("text-input-dialog");
        dialogPane.getButtonTypes().addAll(ButtonType.OK);

        updateList();
        updateGrid();

        // Событие, вызываемое при закрытии формы
        setResultConverter(e -> listView.getItems());
    }

    // Редактирование, запуск DelayInputDialog
    private void doEdit()
    {
        Delay selected = listView.getSelectionModel().getSelectedItem();
        if(selected!=null)
        {
            DelayInputDialog dialog = new DelayInputDialog(selected);
            dialog.setTitle("Изменить событие");
            dialog.setHeaderText("Изменение события");
            dialog.setContentText("Событие");
            dialog.showAndWait();
            updateList();
        }
    }

    // Обновление списка
    private void updateList()
    {
        Stream<Delay> st =  Delay.Delays.stream();
        //Выбор из Delay.Delays только тех Delay, которые совподают по дате с src
        st = st.filter(x->DateUtils.compareIgnoreTime(x.date, src)).sorted((a,b)->a.date.compareTo(b.date));
        List<Delay> dd = st.collect(Collectors.toList());
        
        listView.getItems().clear();
        listView.setItems(FXCollections.observableArrayList(dd));
    }

    // Обновляет компоненты формы, заного их добовляя к панели
    private void updateGrid() {
        grid.getChildren().clear();

        grid.add(listView, 0, 0, 3, 1);
        grid.add(btnAdd, 0, 1);
        grid.add(btnEdit, 1, 1);
        grid.add(btnDelete, 2, 1);
        getDialogPane().setContent(grid);

        Platform.runLater(listView::requestFocus);
    }
}
