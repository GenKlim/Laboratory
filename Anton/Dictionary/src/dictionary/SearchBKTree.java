package dictionary;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/*
   Модуль поиска BK-деревьями
*/

public class SearchBKTree extends SearchAlgoritm
{
    private final int[][] nodeMap;
    private final int rootNodeIndex;
    private final int maxDistance;
    
    public SearchBKTree(dictionary.Index Index, int maxDistance) 
    {
        super(Index);
        this.maxDistance = maxDistance;
        
        long averageLength = 0;
        for (String word : Index.dictionary)
        {
            averageLength += word.length();
        }
        
        averageLength = Math.round((double) averageLength / Index.dictionary.size());

        int rootWord = -1;

        for (int i = 0; i < Index.dictionary.size() && rootWord < 0; ++i)
        {
            if (Index.dictionary.get(i).length() == averageLength) 
                rootWord = i;
        }
        
        Node rootNode = new Node(rootWord);

        for (int i = 0; i < Index.dictionary.size(); ++i)
        {
            if (i != rootNode.getIndex()) 
                rootNode.add(Index.dictionary, Index.Metric, i);
        }
        
        nodeMap = new int[Index.dictionary.size()][];
        populate(nodeMap, rootNode);
        
        rootNodeIndex = rootNode.getIndex();
    }

    private void populate(int[][] nodeMap, Node node) {
        int dictionaryIndex = node.getIndex();
        Map<Integer, Node> nodeChildren = node.getChildren();

        if (nodeMap[dictionaryIndex] == null) {
            int maximumDistance = 0;
            for (Integer distance : nodeChildren.keySet()) {
                if (distance > maximumDistance) {
                    maximumDistance = distance;
                }
            }

            nodeMap[dictionaryIndex] = new int[maximumDistance + 1];
            Arrays.fill(nodeMap[dictionaryIndex], -1);
        }

        for (Map.Entry<Integer, Node> child : nodeChildren.entrySet()) {
            Node childNode = child.getValue();
            nodeMap[dictionaryIndex][child.getKey()] = childNode.getIndex();
            populate(nodeMap, childNode);
        }
    }

    @Override
    public Set<Integer> search(String string) 
    {
        Set<Integer> result = new HashSet<>();
        search_private(rootNodeIndex, string, result);
        return result;
    }
    
    private void search_private(int nodeIndex, String searchWord, Set<Integer> set) {
        int[] nodeChildren = nodeMap[nodeIndex];

        int limitDistance = maxDistance;
        if (nodeChildren != null) {
            limitDistance += nodeChildren.length - 1;
        }

        int distance = Index.Metric.getDistance(Index.dictionary.get(nodeIndex), searchWord, limitDistance);

        if (distance <= maxDistance) {
            set.add(nodeIndex);
            if (distance == maxDistance) {
                return;
            }
        }

        if (nodeChildren != null) {
            int startScore = Math.max(distance - maxDistance, 1);
            int endScore = Math.min(distance + maxDistance, nodeChildren.length - 1);
            for (int score = startScore; score <= endScore; ++score) {
                int childIndex = nodeChildren[score];
                if (childIndex >= 0) {
                    search_private(childIndex, searchWord, set);
                }
            }
        }
    }

    private static class Node {
        public Node(int index) {
            this.index = index;
            children = new HashMap<>();
        }

        public int getIndex() {
            return index;
        }

        public Map<Integer, Node> getChildren() {
            return children;
        }

        public void add(List<String> dictionary, LevensteinMetric metric, int childWord) {
            int distance = metric.getDistance(dictionary.get(index), dictionary.get(childWord));

            Node child = children.get(distance);
            if (child != null) {
                child.add(dictionary, metric, childWord);
            } else {
                children.put(distance, new Node(childWord));
            }
        }

        private final int index;
        private final Map<Integer, Node> children;
    }
}
