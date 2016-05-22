package diary;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

/*
    Хранит событие
*/

class Delay
{
    static List<Delay> Delays;//Список всех событий
    private static DateFormat timeFormat = new SimpleDateFormat("HH:mm", Locale.ENGLISH);

    Calendar date;
    String text;

    Delay()
    {
        this.text = "";
        this.date = Calendar.getInstance();
    }

    Delay(Calendar date, String text)
    {
        this.text = text;
        this.date = date;
    }
    @Override
    public String toString()
    {
        return timeFormat.format(date.getTime()) + "\t" + text;
    }
}
