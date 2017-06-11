package dictionary;

import java.util.HashSet;
import java.util.Set;

/*
   Модуль поиска методом хеширование по сигнатуре
*/

public class SearchHash extends SearchAlgoritm
{
    private final int maxDistance;
    private final int[][] hashTable;
    private static final int HASH_SIZE = 16;
    private final int[] alphabetMap;
        
    public SearchHash(dictionary.Index Index, int maxDistance) {
        super(Index);
        this.maxDistance = maxDistance;
        alphabetMap = makeAlphabetMap(Index.Alphabet);
        
        int maxLength = 0;

        // Подсчет количества слов для каждой группы хеша (для уменьшения потребления памяти)
        int[] hashCountTable = new int[1 << HASH_SIZE];
        for (String word : Index.dictionary) {
            int hash = makeHash(word);
            ++hashCountTable[hash];
            if (word.length() > maxLength) {
                maxLength = word.length();
            }
        }

        // Заполняем хеш-таблицу. Каждый элемент - массив индексов слов в словаре, соответствующих хешу.
        hashTable = new int[1 << HASH_SIZE][];
        for (int i = 0; i < Index.dictionary.size(); ++i) {
            int hash = makeHash(Index.dictionary.get(i));
            if (hashTable[hash] == null) {
                hashTable[hash] = new int[hashCountTable[hash]];
            }
            hashTable[hash][--hashCountTable[hash]] = i;
        }
    }

    /**
     * Вычисляет сигнатурный хеш для слова.
     */
    private int makeHash(String word) {
        int result = 0;
        for (int i = 0; i < word.length(); ++i) 
        {
            int index = Index.Alphabet.mapChar(word.charAt(i));
            
            if(index == -1)
                continue;
            
            int group = alphabetMap[index];
            result |= 1 << group;
        }
        return result;
    }

    /**
     * Производит равномерное распределение символов алфавита по группам хеша.
     */
    private static int[] makeAlphabetMap(Alphabet alphabet) {
        int[] result = new int[alphabet.size()];
        double sourceAspect = (double) result.length / HASH_SIZE;
        double aspect = sourceAspect;
        int[] map = new int[HASH_SIZE];
        for (int i = 0; i < HASH_SIZE; ++i) {
            int step = (int) Math.round(aspect);
            double diff = aspect - step;
            map[i] = step;
            aspect = sourceAspect + diff;
        }
        int resultIndex = 0;
        for (int i = 0; i < map.length; ++i) {
            for (int j = 0; j < map[i]; ++j) {
                if (resultIndex < result.length) {
                    result[resultIndex++] = i;
                }
            }
        }
        return result;
    }

    @Override
    public Set<Integer> search(String string) 
    {
        Set<Integer> result = new HashSet<>();

        int stringHash = makeHash(string);
        populate(string, stringHash, result);
        if (maxDistance > 0)
            hashPopulate(string, stringHash, 0, HASH_SIZE, result, maxDistance - 1);
        
        return result;
    }
    
    /**
     * Вносит перебирает все хеши, отличающиеся от исходного на 1 бит на
     * какой-либо позиции. При добавлении или удалении символа из слова в
     * сигнатурном хеше изменяются 0 или 1 бит, при замене символа - от 0 до 2
     * бит.
     */
    private void hashPopulate(String query, int hash, int start, int hashSize, Set<Integer> set, int depth) {
        for (int i = start; i < hashSize; ++i) {
            int queryHash = hash ^ (1 << i);
            populate(query, queryHash, set);
            if (depth > 0) {
                hashPopulate(query, queryHash, i + 1, hashSize, set, depth - 1);
            }
        }
    }

    /**
     * Перебирает все слова в словаре с заданным хешем, записывая в результат
     * только слова, удоволетворяющие ограничению при данной метрике.
     */
    private void populate(String query, int queryHash, Set<Integer> set) {
        int[] hashBucket = hashTable[queryHash];
        if (hashBucket != null) {
            for (int dictionaryIndex : hashBucket) {
                String word = Index.dictionary.get(dictionaryIndex);
                if (Index.Metric.getDistance(query, word, maxDistance) <= maxDistance) {
                    set.add(dictionaryIndex);
                }
            }
        }
    }
}
