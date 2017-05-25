package dictionary;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

// Основной класс для поиска
// Индеккс содержет словарь, переведенный к удоному виду
// Работает на алгоритме N-грамм

public class Index 
{
    private final int[][] ngramMap;
    private final int n;
    private final List<String> dictionary;
    public static Alphabet Alphabet; 
    public static Index Instance; 
    public static LevensteinMetric Metric;
    
    public Index(List<String> dictionary, int[][] ngramMap, int n) {
        this.dictionary = dictionary;
        this.ngramMap = ngramMap;
        this.n = n;
    }
    
	// Возаращает слово по его индексу в словаре
    public String getByIndex(int index)
    {
        return dictionary.get(index);
    }
    
	// Преводит словарь из списка слов в набор n-граммов
	// подробнее в этой статье https://habrahabr.ru/post/114997/
    public static void init(List<String> dictionary, int n)
    {
        Alphabet = new Alphabet('а', 'я');
        Metric = new LevensteinMetric(255);
        
        int mapLength = (int)Math.pow(Alphabet.size(), n);
        
        int[] ngramCountMap = new int[mapLength];

        for (String word : dictionary) 
        {
			word = word.toLowerCase();
            for (int k = 0; k < word.length() - n + 1; ++k) {
                int ngram = getNGram(word, k, n);
                
                if(ngramCountMap.length > ngram && ngram > 0)
                    ++ngramCountMap[ngram];
            }
        }

        int[][] ngramMap = new int[mapLength][];

        for (int i = 0; i < dictionary.size(); ++i)
        {
            String word = dictionary.get(i);
            for (int k = 0; k < word.length() - n + 1; ++k) 
            {
                int ngram = getNGram(word, k, n);
                if(ngram < 0)
                    continue;
                    
                if (ngramMap[ngram] == null) 
                {
                    ngramMap[ngram] = new int[ngramCountMap[ngram]];
                }
                
                ngramMap[ngram][--ngramCountMap[ngram]] = i;
            }
        }

        Instance = new Index(dictionary, ngramMap, n);
    }

    public static int getNGram(CharSequence string, int start, int n)
    {
        int ngram = 0;
        for (int i = start; i < start + n; ++i)
        {
            ngram = ngram * Alphabet.size() + Alphabet.mapChar(string.charAt(i));
        }
        return ngram;
    }

	// Метод для поиска
	// Возаращает список номеров слов в словаре
    public Set<Integer> search(String string)
    {
        Set<Integer> set = new HashSet<>();

        for (int i = 0; i < string.length() - n + 1; ++i)
        {
            int ngram = getNGram(string, i, n);

            if(ngram < 0)
                continue;
            
            int[] dictIndexes = ngramMap[ngram];

            if (dictIndexes != null) 
            {
                for (int k : dictIndexes)
                {
                    int distance = Metric.getDistance(dictionary.get(k), string, 2, false);
                    if (distance <= 2) 
                        set.add(k);
                }
            }
        }
        return set;
    }
}
