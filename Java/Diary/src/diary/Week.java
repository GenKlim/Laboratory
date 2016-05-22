package diary;

/*
    Week хранит информацию о расписании во всех днях в одном времени (time)
*/

import java.time.LocalTime;

public class Week {
    private LocalTime time;
    private String[][] data;
    
    public Week(LocalTime time)
    {
        this.time = time;
        data = new String[2][6];
        for(int ii = 0; ii < 2; ii++)
        {
            for(int jj = 0; jj < 6; jj++)
                data[ii][jj] = "";
        }
    }
    
    // Возвращает предмет в i-тый день недели, j-той недели
    public String get(int i, int j)
    {
        j = j%2;
        if(i < 0 || i > 6)
            return "";
        return data[j][i];
    }
    
    // Устанавливает предмет в i-тый день недели, j-той недели
    public void set(int i, int j, String value)
    {
        j = j%2;
        if(i < 0 || i > 6)
            data[j][i] = value;
    }
    
    // Возвращает время
    public LocalTime getTime() {
        return time;
    }

    // Устанавливает время
    public void setTime(LocalTime time) {
        this.time = time;
    }
}
