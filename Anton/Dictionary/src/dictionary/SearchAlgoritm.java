package dictionary;

import java.util.List;
import java.util.Set;

public abstract class SearchAlgoritm 
{
    protected Index Index;
    
    public SearchAlgoritm(Index Index) {
        this.Index = Index;
    }
    
    // Метод для поиска
    // Возаращает список номеров слов в словаре
    public abstract Set<Integer> search(String string);
}
