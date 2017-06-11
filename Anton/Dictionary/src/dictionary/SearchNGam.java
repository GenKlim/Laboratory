package dictionary;

import java.util.HashSet;
import java.util.Set;

/*
   Модуль поиска методом N-грамм
*/

public class SearchNGam extends SearchAlgoritm
{
    private final int[][] ngramMap;
    private final int n;
    
    public SearchNGam(Index Index, int n) 
    {
        super(Index);
        this.n = n;
        
        int mapLength = (int)Math.pow(Index.Alphabet.size(), n);
        
        int[] ngramCountMap = new int[mapLength];

        for (String word : Index.dictionary) 
        {
            word = word.toLowerCase();
            for (int k = 0; k < word.length() - n + 1; ++k) {
                int ngram = getNGram(word, k, n);
                
                if(ngramCountMap.length > ngram && ngram > 0)
                    ++ngramCountMap[ngram];
            }
        }

        ngramMap = new int[mapLength][];

        for (int i = 0; i < Index.dictionary.size(); ++i)
        {
            String word = Index.dictionary.get(i);
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
    }
    
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
                    int distance = Index.Metric.getDistance(Index.dictionary.get(k), string, 2, false);
                    if (distance <= 2) 
                        set.add(k);
                }
            }
        }
        return set;
    }

    public int getNGram(CharSequence string, int start, int n)
    {
        int ngram = 0;
        for (int i = start; i < start + n; ++i)
        {
            ngram = ngram * Index.Alphabet.size() + Index.Alphabet.mapChar(string.charAt(i));
        }
        return ngram;
    }
}
