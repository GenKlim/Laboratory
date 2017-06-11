package dictionary;

import java.util.List;

// Хранилизе дл словаря, алфавита и метрики
// Нужен для того чтоб не копировать эти структуры для каждого метода поиска

public class Index
{
    public final List<String> dictionary;
    public final Alphabet Alphabet; 
    public final LevensteinMetric Metric;
    
    public Index(List<String> dictionary)
    {
        Alphabet = new Alphabet('а', 'я');
        Metric = new LevensteinMetric(255);
        
        this.dictionary = dictionary;
    }
    
    // Возаращает слово по его индексу в словаре
    public String getByIndex(int index)
    {
        return dictionary.get(index);
    }
}
