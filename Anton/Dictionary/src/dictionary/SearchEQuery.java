package dictionary;

import java.util.HashSet;
import java.util.Set;

/*
   Модуль поиска методом расширения выборки
*/

public class SearchEQuery extends SearchAlgoritm
{
    private final int maxDistance;
        
    public SearchEQuery(dictionary.Index Index, int maxDistance) {
        super(Index);
        this.maxDistance = maxDistance;
    }

    @Override
    public Set<Integer> search(String string) 
    {
        Set<Integer> result = new HashSet<>();
        StringBuilder stringBuilder = new StringBuilder(string);
        populate(stringBuilder, result);
        if (maxDistance > 0) {
            doExtension(stringBuilder, 0, result, maxDistance - 1);
        }
        return result;
    }

    private void doExtension(StringBuilder stringBuilder, int start, Set<Integer> set, int depth) {
        if (start >= stringBuilder.length()) {
            return;
        }

        char ch = stringBuilder.charAt(start);
        stringBuilder.deleteCharAt(start);

        // Удаления
        for (int i = start; i < stringBuilder.length(); ++i) {
            populate(stringBuilder, set);
            if (depth > 0) {
                doExtension(stringBuilder, i, set, depth - 1);
            }

            char temp = stringBuilder.charAt(i);
            stringBuilder.setCharAt(i, ch);
            ch = temp;
        }
        populate(stringBuilder, set);
        if (depth > 0) {
            doExtension(stringBuilder, stringBuilder.length(), set, depth - 1);
        }
        stringBuilder.append(ch);

        // Перестановки
        for (int i = start; i < stringBuilder.length() - 1; ++i) {
            char thisCh = stringBuilder.charAt(i);
            char nextCh = stringBuilder.charAt(i + 1);
            stringBuilder.setCharAt(i, nextCh);
            stringBuilder.setCharAt(i + 1, thisCh);

            populate(stringBuilder, set);
            if (depth > 0) {
                doExtension(stringBuilder, i + 2, set, depth - 1);
            }

            stringBuilder.setCharAt(i, thisCh);
            stringBuilder.setCharAt(i + 1, nextCh);
        }

        // Замены
        for (int i = start; i < stringBuilder.length(); ++i) {
            ch = stringBuilder.charAt(i);
            for (char sym : Index.Alphabet.chars()) {
                if (sym != ch) {
                    stringBuilder.setCharAt(i, sym);

                    populate(stringBuilder, set);
                    if (depth > 0) {
                        doExtension(stringBuilder, i + 1, set, depth - 1);
                    }
                }
            }
            stringBuilder.setCharAt(i, ch);
        }

        // Вставки
        stringBuilder.insert(start, Character.MIN_VALUE);
        for (int i = start; i < stringBuilder.length(); ++i) {
            for (char sym : Index.Alphabet.chars()) {
                stringBuilder.setCharAt(i, sym);

                populate(stringBuilder, set);
                if (depth > 0) {
                    doExtension(stringBuilder, i + 1, set, depth - 1);
                }
            }
            if (i + 1 < stringBuilder.length()) {
                stringBuilder.setCharAt(i, stringBuilder.charAt(i + 1));
            }
        }
        stringBuilder.deleteCharAt(stringBuilder.length() - 1);
    }

    /**
     * Добавляет к результатам поиска индексы слова (или префикса) query в
     * словаре.
     */
    private void populate(final CharSequence query, Set<Integer> set) {
        BinarySearch.Comparator comparator = new BinarySearch.Comparator() {

            public int compare(int index) {
                CharSequence word = Index.dictionary.get(index);
                int length = Math.min(word.length(), query.length());
                for (int i = 0; i < length; ++i) {
                    char queryCh = query.charAt(i);
                    char wordCh = word.charAt(i);
                    if (queryCh < wordCh) {
                        return 1;
                    }
                    if (queryCh > wordCh) {
                        return -1;
                    }
                }
                if (word.length() < query.length()) {
                    return -1;
                }
                if (word.length() > query.length()) {
                    return 1;
                }
                return 0;
            }
        };
        int lower = BinarySearch.lowerBound(0, Index.dictionary.size(), comparator);
        int upper = BinarySearch.upperBound(lower, Index.dictionary.size(), comparator);
        for (int i = lower; i < upper; ++i) {
            set.add(i);
        }
    }

}
