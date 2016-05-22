package diary;

import javafx.scene.layout.AnchorPane;
import org.w3c.dom.*;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import java.io.File;
import java.lang.reflect.Field;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javax.xml.transform.OutputKeys;

/*
    Набор констант и статический переменных, нужен для хранения настроек, расписания, заметок и событий
    Умеет сохранять и загружать все это в XML файл (SAVE_FILE_NAME)
    подробней описывать нет смысла, просто создается/читается XMl файл
*/

class configs
{
    private static final String SAVE_FILE_NAME = "notes.xml";
    static final DateFormat dateFormat = new SimpleDateFormat("yyyy.MM.dd.HH:mm", Locale.ENGLISH);
    static final DateTimeFormatter timeFormat = DateTimeFormatter.ofPattern("HH:mm");
    static File backgroundImage = new File("");
    static Date StartDate = new Date();
    static Date EndDate = new Date();
    static ObservableList<Week> Weeks = FXCollections.observableArrayList();;

    static void Load(AnchorPane pane)
    {
        File file = new File(SAVE_FILE_NAME);
        Delay.Delays = new ArrayList<>();
        Weeks = FXCollections.observableArrayList();
        for(int i = 0; i < 6; i++)
            Weeks.add(new Week(LocalTime.of(9+i*2, 0)));
        
        try
        {
            if(!file.exists())
                return;

            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(file);
            NodeList ls = doc.getFirstChild().getChildNodes();
            NamedNodeMap cfg =  doc.getFirstChild().getAttributes();

            StartDate = dateFormat.parse(cfg.getNamedItem("startDate").getNodeValue());
            EndDate = dateFormat.parse(cfg.getNamedItem("endDate").getNodeValue());
            backgroundImage = new File(cfg.getNamedItem("background").getNodeValue());

            for(int i = 0; i < ls.getLength(); i++)
            {
                Node node = ls.item(i);
                NodeList ls2 = node.getChildNodes();

                switch(node.getNodeName())
                {
                    case "notes":
                        for(int j = 0; j < ls2.getLength(); j++)
                        {
                            if (ls2.item(j).getNodeType() == Node.ELEMENT_NODE)
                            {
                                Element e = (Element) ls2.item(j);
                                Note note = new Note();
                                pane.getChildren().add(note);
                                note.editor.setHtmlText(e.getTextContent());
                                note.titledPane.setText(e.getAttribute("name"));
                                note.titledPane.setPrefWidth(Double.parseDouble(e.getAttribute("w")));
                                note.titledPane.setPrefHeight(Double.parseDouble(e.getAttribute("h")));
                                note.setLayoutX(Double.parseDouble(e.getAttribute("x")));
                                note.setLayoutY(Double.parseDouble(e.getAttribute("y")));
                            }
                        }
                        break;
                    case "weeks":
                        for(int j = 0, k = 0; j < ls2.getLength(); j++)
                        {
                            if (ls2.item(j).getNodeType() == Node.ELEMENT_NODE)
                            {
                                Week week = Weeks.get(k++);
                                Element e = (Element) ls2.item(j);
                                week.setTime(LocalTime.parse(e.getAttribute("time"), timeFormat));
                                
                                for(int ii = 0; ii < 6; ii++)
                                {
                                    for(int jj = 0; jj < 2; jj++)
                                        week.set(ii, jj, e.getAttribute(String.format("day%d.%d", ii, jj)));
                                }
                            }
                        }
                        break;
                    case "delays":
                        for(int j = 0; j < ls2.getLength(); j++)
                        {
                            if (ls2.item(j).getNodeType() == Node.ELEMENT_NODE)
                            {
                                Element e = (Element) ls2.item(j);
                                Delay d = new Delay(DateUtils.asCalendar(dateFormat.parse(e.getAttribute("date"))), e.getTextContent());
                                Delay.Delays.add(d);
                            }
                        }
                        break;
                }
            }
        }
        catch(Exception e){}
    }

    static void Save(AnchorPane pane)
    {
        try
        {
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.newDocument();
            Element root = doc.createElement("root");
            doc.appendChild(root);

            Element delays = doc.createElement("delays");
            root.appendChild(delays);
            Element notes = doc.createElement("notes");
            root.appendChild(notes);
            Element weeks = doc.createElement("weeks");
            root.appendChild(weeks);

            root.setAttribute("startDate", dateFormat.format(StartDate.getTime()));
            root.setAttribute("endDate", dateFormat.format(EndDate.getTime()));
            root.setAttribute("background", backgroundImage.getAbsolutePath());

            for(Week w: Weeks)
            {
                Element e = doc.createElement("week");
                e.setAttribute("time", timeFormat.format(w.getTime()));
                for(int ii = 0; ii < 6; ii++)
                {
                    for(int jj = 0; jj < 2; jj++)
                        e.setAttribute(String.format("day%d.%d", ii, jj), w.get(ii, jj));
                }
                weeks.appendChild(e);
            }
            
            for(Delay d: Delay.Delays)
            {
                Element e = doc.createElement("delay");
                e.setTextContent(d.text);
                e.setAttribute("date", dateFormat.format(d.date.getTime()));
                delays.appendChild(e);
            }

            for(javafx.scene.Node n : pane.getChildren())
            {
                if(!(n instanceof Note))
                    continue;

                Note c = (Note) n;
                Element e = doc.createElement("note");
                e.setTextContent(c.editor.getHtmlText());
                e.setAttribute("name", c.titledPane.getText());
                e.setAttribute("w", Double.toString(c.titledPane.getWidth()));
                e.setAttribute("h", Double.toString(c.titledPane.getHeight()));
                e.setAttribute("x", Double.toString(c.getLayoutX()));
                e.setAttribute("y", Double.toString(c.getLayoutY()));
                notes.appendChild(e);
            }

            Transformer transformer = TransformerFactory.newInstance().newTransformer();
            transformer.setOutputProperty(OutputKeys.INDENT, "yes");
            transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2");
            Result output = new StreamResult(new File(SAVE_FILE_NAME));
            Source input = new DOMSource(doc);
            transformer.transform(input, output);
        }
        catch(Exception e)
        {
            throw new RuntimeException(e);
        }
    }
}
