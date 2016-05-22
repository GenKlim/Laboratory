package diary;

import java.time.*;
import java.util.Calendar;
import java.util.Date;

/*
    Набор методов для работы с датой, временем, календарем
*/

class DateUtils
{
    // Всякие преоброзования
    static Date asDate(LocalDate localDate)
    {
        return Date.from(localDate.atStartOfDay().atZone(ZoneId.systemDefault()).toInstant());
    }

    static Date asDate(LocalDateTime localDateTime)
    {
        return Date.from(localDateTime.atZone(ZoneId.systemDefault()).toInstant());
    }

    static Date asDate(Calendar cal)
    {
        return Date.from(cal.toInstant());
    }

    static LocalDate asLocalDate(Date input)
    {
        return input.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
    }

    static LocalDate asLocalDate(Calendar input)
    {
        return asLocalDate(asDate(input));
    }

    static Calendar asCalendar(LocalDate date)
    {
        return asCalendar(asDate(date));
    }

    static Calendar asCalendar(LocalDateTime date)
    {
        return asCalendar(asDate(date));
    }

    static Calendar asCalendar(Date date)
    {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c;
    }

    // Сравнение календарей, без учета времени
    public static boolean compareIgnoreTime(Calendar cal1, Calendar cal2)
    {
        return cal1.get(Calendar.DAY_OF_YEAR) == cal2.get(Calendar.DAY_OF_YEAR) && cal1.get(Calendar.YEAR) == cal2.get(Calendar.YEAR);
    }

    //Ужасная формула, взятая из интернета
    //Номер первого дня месяца в году
    static int getNumberOfDays(int m, int y)
    {
        int leap = (1 - (y % 4 + 2) % (y % 4 + 1)) * ((y % 100 + 2) % (y % 100 + 1)) + (1 - (y % 400 + 2) % (y % 400 + 1));
        return 28 + ((m + (m / 8)) % 2) + 2 % m + ((1 + leap) / m) + (1 / m) - (leap / m);
    }
}