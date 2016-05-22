package diary;

import javafx.animation.PauseTransition;
import javafx.collections.ObservableList;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.TitledPane;
import javafx.scene.effect.DropShadow;
import javafx.scene.layout.*;
import javafx.scene.web.HTMLEditor;
import javafx.scene.control.*;
import javafx.util.Duration;
import java.util.*;

/*
    Заметка, плавающее окошко с изменяемым размером и возможностью сворачивается
*/

class Note extends AnchorPane //Создан на основе панельки AnchorPane
{
    TitledPane titledPane;//Панелька
    HTMLEditor editor;//Текстововый редактор
    
    //Хранит 2 числа, нужно для сохранения координат мыши
    private class Point
    {
        double x, y;
    }

    Note()
    {
        ObservableList<Node> children = getChildren();
        final DropShadow dropShadow = new DropShadow();//Эффект тени
        final Point dragDelta = new Point();// нужно для сохранения координат мыши

        setEffect(dropShadow);
        setLayoutX(100);
        setLayoutY(100);
        
        //Таймер, через 700мс после того как курсор был отведен от заметки, убрать кнопки редектора 
        final PauseTransition hideWait = new PauseTransition(Duration.seconds(0.7));
        hideWait.setOnFinished((e) -> setToolBarVisible(false));

        editor = new HTMLEditor();
        editor.setOnMouseClicked(e -> toFront());//При редактировании поднимаем заметку вверх

        final Button btn_resize = new Button("");

        titledPane = new TitledPane();
        titledPane.setAnimated(false);
        titledPane.setExpanded(true);
        titledPane.setPrefHeight(480);
        titledPane.setPrefWidth(640);
        titledPane.setText("Untitled");
        titledPane.setContent(editor);
        
        titledPane.setOnMouseExited(e -> hideWait.play());// курсор был отведен от заметки, запуск таймера
        titledPane.expandedProperty().addListener(e->
        {
            //Изменить размер панели, если заметка свернута
            titledPane.setMaxHeight(titledPane.isExpanded() ? Double.MAX_VALUE : 32);
        });
        titledPane.setOnMouseEntered(e -> {
            setToolBarVisible(true);//курсор над заметкой, остановка таймера
            hideWait.stop();
        });
        titledPane.setOnMousePressed(e -> {//Нажатие клавиши мыши, запоминаем координаты
            dragDelta.x = getLayoutX() - e.getSceneX();
            dragDelta.y = getLayoutY() - e.getSceneY();
        });
        titledPane.setOnMouseDragged(e -> {//Перетаскивание, изменяем положение заметки
            setLayoutX(e.getSceneX() + dragDelta.x);
            setLayoutY(e.getSceneY() + dragDelta.y);
        });
        titledPane.setOnMouseReleased(e -> {//Отжатие клавиши мыши
            //Если пытались свернуть нажав не по треугольнику - развернуть
            if(e.getX() > 48)
                titledPane.setExpanded(!titledPane.isExpanded());
        });
        titledPane.setOnMouseClicked(e -> {//Дабл клик по заголовку
            toFront();
            if(e.getX() > 48 && e.getClickCount() == 2)
            {
                //Переименовать заметку
                TextInputDialog dialog = new TextInputDialog(titledPane.getText());
                dialog.setTitle("Записка");
                dialog.setHeaderText("Переименовать записку");
                dialog.setContentText("Введите новое имя записки:");

                Optional<String> result = dialog.showAndWait();
                if(result.isPresent())
                    titledPane.setText(result.get());
            }
            btn_resize.setVisible(titledPane.isExpanded());
        });

        //Кнопка для удаления заметки
        Button btn_close = new Button("x");
        setRightAnchor(btn_close, 0.0);
        setTopAnchor(btn_close, 0.0);

        btn_close.setOnMouseEntered(e -> hideWait.stop());
        btn_close.setOnAction(e -> {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Удаление записки");
            alert.setHeaderText("");
            alert.setContentText("Вы хотите удалить эту записку?");

            alert.getButtonTypes().setAll(ButtonType.YES, ButtonType.NO);

            Optional<ButtonType> result = alert.showAndWait();
            if(result.isPresent() && result.get() == ButtonType.YES)
                ((AnchorPane) getParent()).getChildren().remove(this);
        });

        //Кнопка для изменения размеров заметки
        setRightAnchor(btn_resize, 0.0);
        setBottomAnchor(btn_resize, 0.0);
        btn_resize.setOpacity(0.5);
        btn_resize.setOnMouseEntered(e -> hideWait.stop());
        btn_resize.setOnMousePressed(e -> {//Нажатие клавиши мыши, запоминаем координаты
            dragDelta.x = titledPane.getWidth() - e.getSceneX();
            dragDelta.y = titledPane.getHeight() - e.getSceneY();
        });
        btn_resize.setOnMouseDragged(e -> {//Перетаскивание, изменение размеров
            titledPane.setPrefSize( e.getSceneX() + dragDelta.x, e.getSceneY() + dragDelta.y);
        });
        
        children.add(titledPane);
        children.add(btn_resize);
        children.add(btn_close);
    }

    // Показывает/скрывает с HTMLEditor панели с кнопками
    private void setToolBarVisible(boolean show)
    {
        editor.lookupAll(".tool-bar").forEach(tb -> {
            tb.setVisible(show);
            tb.setManaged(show);
        });
    }
}