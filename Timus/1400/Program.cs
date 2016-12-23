using System;
using System.Collections.Generic;   //подключение пространств имен 

class Program
{
    private static Node[] nodes = new Node[256];    //Массив узлов (256 штук)
    private static int N, M;    // Переменные хранящие размеры

    /// <summary>
    /// Класс узла (ячейки) в таблици
    /// </summary>
    class Node
    {
        public List<Node> v = new List<Node>(); // Список связанных узлов
        public int depth;   // Глубина, расстояние от неторого узла
    }

    /// <summary>
    /// Главная ф-ия, отсюда начинается выполнение программы
    /// </summary>
    /// <param name="args">Параметры командной строки</param>
    static void Main(string[] args)
    {
        //Создаем узлы в массиве,при старте програмы их там еще нет
        for (int i = 0; i < nodes.Length; i++)
            nodes[i] = new Node();

        //Читаем с консоли строку и разбиваем ее на части по пробелу
        // var - означает что компилято сам должен определить тип данных и подставить вместо него (аналог auto в с++)
        var tokens = Console.ReadLine().Split();
        N = int.Parse(tokens[0]);   //Преобразуем строку в число и запоминаем
        M = int.Parse(tokens[1]);   //Преобразуем строку в число и запоминаем

        buildGraph();//Строим граф

        //обьявляем 2 переменные, одну из них задаем как максимально возмое число int
        int mind = int.MaxValue;
        int mini = 0;

        for (int i = 0; i < N; i++) // нахождение стартовой позиции, для рассчета минимальной суммы длины
        {
            var d = bfs(nodes[i]);

            if (mind > d)
            {
                mind = d;
                mini = i;
            }
        }

        bfs(nodes[mini]); // заполняем снова depth для наименьшей суммы

        //Выводим на консоль результат
        // {0:0.00} означает что нужно вывести число и две цифры после запятой, даже если число целое
        Console.WriteLine("Mean = {0:0.00}", (double)mind / N);

        for (int i = 0; i < N; i++)
        {
            Console.Write("{0} ", nodes[i].depth);

            //Переходим на новую строку каждые M чисел
            if ((i + 1) % M == 0)
                Console.WriteLine();
        }

        //Остановка программы, перед загрузкой в тимус нужно закоментировать
        //Console.ReadKey();
    }

    /// <summary>
    /// Похожу, что находит сумму расстояний до каждого узла, относительно заданного
    /// </summary>
    /// <param name="start">Заданный узел</param>
    static int bfs(Node start)
    {
        int ret = 0; // сумма длинн всех узлов

        //задаем всем узлам максимальную глубину
        foreach (var node in nodes)
            node.depth = int.MaxValue;

        var Q = new Queue<Node>();  //Очередь (FIFO, первый вошел первый вышел)
        start.depth = 0;  //Устанавливаем росстояние от задонного узла до него самого (т.е. 0)

        //Добавляем его в очередь
        Q.Enqueue(start);

        //Крутимся в цикле, пока очередь не пуста
        while (Q.Count != 0)
        {
            var node = Q.Dequeue(); //Берем из очереде узел
            ret += node.depth;  // учитываем его расстояние от start

            //Перебераем все узлы около него
            foreach (var n in node.v)
            {
                //Если расстояние записанное в узле больше чем расстояние через узел взятый из очереди
                //то перезапишем это рассояние и добавим ужел в очередь
                if (n.depth > node.depth + 1)
                {
                    n.depth = node.depth + 1;
                    Q.Enqueue(n);
                }
            }
        }

        //Возвращаем сумму
        return ret;
    }

    /// <summary>
    /// Строит граф из узлов неведомым мне образом
    /// </summary>
    static void buildGraph()
    {
        //Какаето формула
        int height = N / M + Math.Max(N % M, 0);

        //Соединяем узлы...
        for (int i = 0; i < height; i++)
            for (int j = 0; j < M - 1 && getNode(i + 1, j) < N; j++)
                addConnection(nodes[getNode(i, j)], nodes[getNode(i + 1, j)]);

        for (int i = 0; i < N; i++)
            addConnection(nodes[i], nodes[(i + 1) % N]);
    }

    /// <summary>
    /// вычисление номера узла в массиве на основе координат
    /// </summary>
    static int getNode(int i, int j)
    {
        return i * M + j;
    }

    /// <summary>
    /// Соединяет два узла
    /// </summary>
    static void addConnection(Node a, Node b)
    {
        a.v.Add(b);
        b.v.Add(a);
    }
}