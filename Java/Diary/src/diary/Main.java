package diary;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.*;
import javafx.scene.text.TextAlignment;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import javafx.fxml.FXML;
import javafx.event.*;
import java.io.File;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.time.format.DateTimeParseException;
import java.util.*;
import java.util.stream.Collectors;
import static java.util.Calendar.WEEK_OF_YEAR;
import javafx.fxml.Initializable;
import javafx.geometry.Pos;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.effect.DropShadow;

/*
    Основной класс
    Приложение работает с использованием JavaFX
    Суть в том что есть некая разметка sample.fxml ( что то вроде HTML страницы )
        + к ней таблица стилей style.css

    Эта страница загружается, в переменные отмеченными @FXML записывается ссылки на соответствующие объекты
    Это происходит в методе start
    Класс Main является "контроллером", он обеспечивает работу загруженной страницы
*/

public class Main extends Application implements Initializable {
    private static Main instance;
    private final Calendar today = Calendar.getInstance();
    private final Calendar nextDay = Calendar.getInstance();
    private int diary_offest = 0;
    private FileChooser dlgSetBackground;
    private Stage stage;
    private int currentWeek;

    @FXML
    private GridPane diary_pane;
    @FXML
    private Button home_btn_add;
    @FXML
    private Button note_btn_create;
    @FXML
    private TabPane tabPane;
    @FXML
    private GridPane tableGrid;
    @FXML
    private Tab btn_home;
    @FXML
    private Tab btn_diary;
    @FXML
    private Tab btn_note;
    @FXML
    private Tab btn_table;
    @FXML
    private Tab btn_setting;
    @FXML
    private Label home_date;
    @FXML
    private Label diary_title;
    @FXML
    private DatePicker setting_startDate;
    @FXML
    private DatePicker setting_endDate;
    @FXML
    private ImageView background;
    @FXML
    private AnchorPane note_pane;
    @FXML
    private javafx.scene.control.ListView<Delay> delayList;
    @FXML
    private javafx.scene.control.ListView<String> tableList;
    @FXML
    private javafx.scene.control.ListView<Delay> delayNextList;
    @FXML
    private javafx.scene.control.ListView<String> tableNextList;
    @FXML
    private javafx.scene.control.ListView<String> delay_view;
    @FXML
    private ImageView home_img;
    @FXML
    private ImageView diary_img;
    @FXML
    private ImageView note_img;
    @FXML
    private ImageView setting_img;

    @Override
    public void start(Stage primaryStage) throws Exception
    {
        //Загружает страницу
        Parent root = FXMLLoader.load(getClass().getResource("sample.fxml"));
        primaryStage.setTitle("Ежедневник");
        primaryStage.setScene(new Scene(root, 300, 275));
        primaryStage.setMaximized(true);
        primaryStage.setOnCloseRequest(e -> configs.Save(instance.note_pane));
        stage = primaryStage;

        primaryStage.show();	  
    }

    
    protected void initialize()
    {
        configs.Load(note_pane);//Загружает настройки

        //Даты начала/конца
        nextDay.add(Calendar.DAY_OF_MONTH, 1);
        setting_startDate.setValue(DateUtils.asLocalDate(configs.StartDate));
        setting_endDate.setValue(DateUtils.asLocalDate(configs.EndDate));
        
        //Привязка размеров для редектора рассписания
        delayList.prefWidthProperty().bind(((HBox)delayList.getParent()).widthProperty().divide(2));
        tableList.prefWidthProperty().bind(((HBox)tableList.getParent()).widthProperty().divide(2));
        delayNextList.prefWidthProperty().bind(((HBox)delayNextList.getParent()).widthProperty().divide(2));
        tableNextList.prefWidthProperty().bind(((HBox)tableNextList.getParent()).widthProperty().divide(2));
        
        //загружает иконки
        note_btn_create.setGraphic(getImg("add.png"));
        home_btn_add.setGraphic(getImg("add.png"));
        btn_home.setGraphic(getImg("btn_home.png"));
        btn_diary.setGraphic(getImg("btn_diary.png"));
        btn_note.setGraphic(getImg("btn_custom.png"));
        btn_table.setGraphic(getImg("btn_table.png"));
        btn_setting.setGraphic(getImg("btn_setting.png"));
        
        delay_view.setVisible(false);
        delay_view.setOnMouseEntered(e->delay_view.setVisible(true));
        
        //устанавливает фон
        dlgSetBackground = new FileChooser();
        dlgSetBackground.setInitialFileName(configs.backgroundImage.getPath());
        background.fitWidthProperty().bind(tabPane.widthProperty());
        background.fitHeightProperty().bind(tabPane.heightProperty());
        updateBackground();

        
        createCalendar();//Создает календарь
        createTable();//Создает редактор расписания
        updateHomeText();
        updeteDelaysList();
        updateHomeTable();

        instance = this;
    }
    
    //Обновить список пар на первой странице
    private void updateHomeTable()
    {
        SetTableData(tableList, today);
        SetTableData(tableNextList, nextDay);
    }
    
    //Формирует список пар на конкретный день, записывает его в ListView
    private void SetTableData(javafx.scene.control.ListView list, Calendar day)
    {
        list.getItems().clear();
        
        //Если вообще учимся
        if(day.getTime().after(configs.StartDate) && day.getTime().before(configs.EndDate))
        {
            for(Week w: configs.Weeks)
            {
                //Ищим те что подходят
                int week = day.get(WEEK_OF_YEAR)- DateUtils.asCalendar(configs.StartDate).get(WEEK_OF_YEAR) + 1;
                String d = w.get(day.get(Calendar.DAY_OF_WEEK)-2, week % 2);
                if(!d.isEmpty())
                    list.getItems().add(configs.timeFormat.format(w.getTime()) + " " + d);
            }
        }
    }

    //Обновить первую страницу
    private void updateHomeText()
    {
        currentWeek = today.get(WEEK_OF_YEAR) - DateUtils.asCalendar(configs.StartDate).get(WEEK_OF_YEAR) + 1;
        String date = new SimpleDateFormat("EEEE d MMMM YYYY").format(new Date());
        date = date.substring(0, 1).toUpperCase() + date.substring(1);
        home_date.setText(date + "\n" + currentWeek + " неделя");
    }

    //Обновить список событий на первой странице
    private void updeteDelaysList()
    {
        delayList.getItems().clear();//сегодня
        addEventEditDelays(delayList, today);

        delayNextList.getItems().clear();//завтра
        addEventEditDelays(delayNextList, nextDay);

        Delay.Delays.stream().forEach((d) -> {
            if(DateUtils.compareIgnoreTime(today, d.date))
                delayList.getItems().add(d);
            else if(DateUtils.compareIgnoreTime(nextDay, d.date))
                delayNextList.getItems().add(d);
        });
        
        delayList.getItems().sort((a,b)->a.date.compareTo(b.date));
        delayNextList.getItems().sort((a,b)->a.date.compareTo(b.date));
        updateCalendar();
    }

    //Создание редактора расписания
    private void createTable()
    {
        TableColumn tcId = new TableColumn("№");
        tcId.setCellValueFactory(new PropertyValueFactory<>("id"));
        tcId.setPrefWidth(32);
        
        // Для i == 0 время, для остальных список пар
        for(int i = 0; i < 7; i++)
        {
            //Контейнеры для текстовых полей
            VBox vb = new VBox();//четная неделя
            VBox vb2 = new VBox();//нечетная неделя

            vb.setAlignment(Pos.TOP_LEFT);
            vb2.setAlignment(Pos.TOP_LEFT);
            vb.setEffect(new DropShadow());
            vb2.setEffect(new DropShadow());
            
            //Для каждого времени пар
            for(Week w: configs.Weeks)
            {
                TextField tb = new TextField();
                TextField tb2 = new TextField();
                tb.getStyleClass().add("grid-textField");
                tb2.getStyleClass().add("grid-textField");
                tb2.setEditable(i != 0);
                
                if(i != 0)
                {
                    //Пары
                    Integer ii = i-1;
                    tb.setText(w.get(ii, 0));
                    tb2.setText(w.get(ii, 1));
                    tb.textProperty().addListener(e->{
                        w.set(ii, 0, tb.getText());//Обновлять настройки и интерфейс
                        updateHomeTable();
                        updateCalendar();
                    });
                    tb2.textProperty().addListener(e->{
                        w.set(ii, 1, tb2.getText());
                        updateHomeTable();
                        updateCalendar();
                    });
                }
                else
                {
                    //Редактор времени пар
                    tb.setText(w.getTime().toString());
                    tb.textProperty().addListener(e->{
                        try{
                            w.setTime(LocalTime.parse(tb.getText(), configs.timeFormat));
                            updateHomeTable();
                            updateCalendar();
                        }catch(DateTimeParseException ex){}
                    });
                    tb2.textProperty().bind(tb.textProperty());
                }
                vb.getChildren().add(tb);
                vb2.getChildren().add(tb2);
            }
            tableGrid.add(vb, i, 2);
            tableGrid.add(vb2, i, 5);
        }
    }
    
    //Создает пустой календарь (просто набор Label 6x7)
    private void createCalendar()
    {
        for (int rowIndex = 0; rowIndex < 6; rowIndex++) 
            diary_pane.getRowConstraints().add(new RowConstraints());
        for (int colIndex = 0; colIndex < 7; colIndex++)
            diary_pane.getColumnConstraints().add(new ColumnConstraints());

        for(int row = 0; row < 6; row++)
            for(int col = 0; col < 7; col++)
            {
                Label lbl = new Label();
                lbl.getStyleClass().add("grid-label");
                lbl.setMaxSize(Double.MAX_VALUE, Double.MAX_VALUE);
                lbl.prefWidthProperty().bind(diary_pane.widthProperty().divide(7));
                lbl.prefHeightProperty().bind(diary_pane.heightProperty().divide(6));
                lbl.setTextAlignment(TextAlignment.CENTER);
                lbl.setOnMouseExited(e->delay_view.setVisible(false));
                diary_pane.add(lbl, col, row);
                GridPane.setFillHeight(lbl, true);
                GridPane.setFillWidth(lbl, true);
            }
    }

    //Заполняет календарь информацией
    private void updateCalendar()
    {
        Calendar calendar = Calendar.getInstance();//Разные вычисления, надеюсь понятно
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        calendar.add(Calendar.MONTH, -diary_offest);

        int m = calendar.get(Calendar.MONTH) + 1;
        int y = calendar.get(Calendar.YEAR);
        int di = calendar.get(Calendar.DAY_OF_WEEK)-2;
        if(di < 0) di = 6;
        
        int i = -di + 1;
        int limit = DateUtils.getNumberOfDays(m, y) + 1;

        String mm = new SimpleDateFormat("MMMM").format(calendar.getTime());
        mm = mm.substring(0, 1).toUpperCase() + mm.substring(1, mm.length());
        diary_title.setText(mm + " " + y);

        //Для каждого элемента в календаре
        for(Node n : diary_pane.getChildren())
        {
            if(i > 0 && i < limit)//Если в нужном диапозоне
            {
                //Копируем дату, так надо для работы lambda выражений
                Calendar calendarCopy = (Calendar)calendar.clone();
                Label label = (Label)n;
                //Выборка событий на этот день, тупо для подсчета количества
                List<Delay> dd = Delay.Delays.stream().filter(x -> DateUtils.compareIgnoreTime(x.date, calendar)).collect(Collectors.toList());
                
                label.getStyleClass().clear();
                label.getStyleClass().add("grid-label");

                String text = Integer.toString(i);
                //Если учимся в этот день
                if(calendar.getTime().after(configs.StartDate) && calendar.getTime().before(configs.EndDate))
                {
                    //Получаем список пар на сегодня
                    int day = (i+di-1)%7;
                    int week = calendar.get(WEEK_OF_YEAR)- DateUtils.asCalendar(configs.StartDate).get(WEEK_OF_YEAR) + 1;
                    int count = (int)configs.Weeks.stream().filter(w -> !w.get(day, week%2).isEmpty()).count();
                    if(count != 0)
                        text += String.format("\n%d %s", count, getWord(count, new String[]{"пар", "пара", "пары"}));
                    
                    //Плавоющее окошко, со списком пар
                    //Это чтоб оно появлялось и заполнялось нужной инфомацией
                    label.setOnMouseEntered(e->
                    {
                        SetTableData(delay_view, calendarCopy);
                        Delay.Delays.stream().forEach((d) -> {
                            if(DateUtils.compareIgnoreTime(calendarCopy, d.date))
                                delay_view.getItems().add(d.toString());
                        });

                        delay_view.getItems().sort((a,b)->a.compareTo(b));
                        delay_view.setVisible(!delay_view.getItems().isEmpty());
                    });
                    //Это для его перемещения
                    label.setOnMouseMoved(e->
                    {
                        if(e.getSceneX() + delay_view.getWidth() > note_pane.getWidth())
                            delay_view.setLayoutX(note_pane.getWidth() - delay_view.getWidth());
                        else
                            delay_view.setLayoutX(e.getSceneX());
                            
                        if(e.getSceneY() + delay_view.getHeight()> note_pane.getHeight())
                            delay_view.setLayoutY(note_pane.getHeight() - delay_view.getHeight());
                        else
                            delay_view.setLayoutY(e.getSceneY());
                    });
                }else{
                    //Если нет пар то вырубаем окошко
                    label.setOnMouseEntered(null);
                    label.setOnMouseMoved(null);
                }
                
                //Если есть события на сегодня
                if(!dd.isEmpty())
                {
                    label.getStyleClass().add("grid-label-delay");
                    text += String.format("\n%d %s", dd.size(), getWord(dd.size(), new String[]{"событий", "событие", "события"}));
                }

                label.setText(text);
                
                addEventEditDelays(label, calendarCopy);

                if(DateUtils.compareIgnoreTime(today, calendar))
                    label.getStyleClass().add("grid-label-today");

                calendar.add(Calendar.DAY_OF_MONTH, 1);
                n.setVisible(true);
            } else
                n.setVisible(false);

            i++;
        }
    }
    
    //Получает нужное слово, в зависимости от числа
    //Например "событий", "событие", "события"
    private String getWord(int i, String[] words)
    {
        if(i==1) return words[1];
        if(i>=2&&i<=4) return words[2];
        return words[0];
    }

    //Добавляет елементу календаря событие (event), запускающее редактирование событий (Delay)
    private void addEventEditDelays(Node n, Calendar calendar)
    {
        n.setOnMouseClicked(e -> {
            DelayListDialog dialog = new DelayListDialog(calendar);
            dialog.setTitle("Cобытия");
            dialog.setHeaderText(new SimpleDateFormat("dd MMMM YYYY").format(calendar.getTime()));
            dialog.showAndWait();
            updeteDelaysList();
        });
    }

    //Клик на плюсик, на главной странице
    @FXML
    private void home_btn_add_click(ActionEvent e) throws Exception {
        DelayInputDialog dialog = new DelayInputDialog(new Delay());
        dialog.setTitle("Новое событие");
        dialog.setHeaderText("Добавление события");
        dialog.setContentText("Событие");

        Optional<Delay> result = dialog.showAndWait();
        if(result.isPresent())
        {
            Delay.Delays.add(result.get());
            updeteDelaysList();
        }
    }

    //Обновляет фон
    private void updateBackground()
    {
        if(configs.backgroundImage.exists())
        {
            Image img = new Image(configs.backgroundImage.toURI().toString());
            background.setImage(img);
        }
    }

    //Кнопка выбора фона
    @FXML
    private void setSetting_btn_background_click(ActionEvent e) throws Exception
    {
        File file = dlgSetBackground.showOpenDialog(stage);
        if(file.exists())
        {
            configs.backgroundImage = file;
            updateBackground();
        }
    }

    //Стрелка календаря
    @FXML
    private void diary_btn_next_click(ActionEvent e) throws Exception {
        diary_offest--;
        updateCalendar();
    }
    
    //Стрелка календаря
    @FXML
    private void diary_btn_back_click(ActionEvent e) throws Exception {
        diary_offest++;
        updateCalendar();
    }

    @FXML
    private void setting_startDate_change(ActionEvent e) throws Exception {
        configs.StartDate = DateUtils.asDate(setting_startDate.getValue());
        updateHomeText();
    }
    
    @FXML
    private void setting_endDate_change(ActionEvent e) throws Exception {
        configs.EndDate = DateUtils.asDate(setting_endDate.getValue());
        updateCalendar();
    }

    
    //Клик на плюсик, добавляет записку
    @FXML
    private void note_btn_create_click(ActionEvent e) throws Exception {
        note_pane.getChildren().add(new Note());
    }

    @Override
    public void init() throws Exception
    {
        super.init();
    }

    //Загружает картинку
    ImageView getImg(String path)
    {
        return new ImageView(new Image(getClass().getResourceAsStream(path)));
    }

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        initialize();
    }
}