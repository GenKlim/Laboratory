function matrix()
    a = [1 2 3; 4 5 6; 7 8 9]
    b = load('matrix.txt')
    outputFile(a, 3, 3, 'matrix.txt')
    key = input('Меню:\n1)Показать матрици\n2)Ввод матрицы с клавиатуры\n3)Сложение матриц\n4)Вычитание матриц\n5)Умножение матриц\n6)Транспонирование матрицы\n7)Индивидуальное задание(вариант №1)\n8)Выход\n');
    while (key > 0)
        if key == 1
            a
            b
        end
        if key == 2
            a = ReadKeyboard();
            outputFile(a, length(a), length(a), 'matrix.txt');
        end
        if key == 3
            if length(a) == length(b)
                disp('Сумма матриц c равна:');
                c = a + b
            else
                disp('ОШИБКА! матрицы должны быть одинакового размера')
            end
        end
        if key == 4
            if length(a) == length(b)
                disp('Разность матриц c равна:');
                c = a - b
            else
                disp('ОШИБКА! матрицы должны быть одинакового размера')
            end
        end
        if key == 5
            disp('Произведение матриц c равна:');
            c = a * b
        end
        if key == 6
            a
            disp('Транспонированная матрица равна:');
            a'
        end
        if key == 7
            a
            disp('Отсортировать строки матрицы по неубыванию максимальных элементов строк: ');
            a=a'
            a = [a;max(a)]
            a=a'
            a = sortrows(a,length(a))
            a(:,length(a)) = []
        end
        if key == 8
            break;
        end
        key = input('Меню:\n1)Показать матрици\n2)Ввод матрицы с клавиатуры\n3)Сложение матриц\n4)Вычитание матриц\n5)Умножение матриц\n6)Транспонирование матрицы\n7)Индивидуальное задание(вариант №1)\n8)Выход\n');
    end
end

function print(matrix)
    matrix
end

function c = ReadKeyboard()
    c = input('Введите матрицу:');
    disp('Ваша матрица: ');
    print(c);
end

function c = read(file)
    [f,c] = fopen(file, 'rt');
    if f ~=-1
        c = ' ';
        while feof(f) == 0
            line = fgetl(f);
            c = char(c, line);
        end
        fclose(f);
    end
end

function [ c, n, m ] = inputFile(file)
    f = fopen(file, 'rt');
    n = fscanf(f,'%d',1);
    m = fscanf(f,'%d',1);
    for i=1:n
        for j=1:m
            c(i,j) = fscanf(f,'%f',1);
        end
    end
    fclose(f);
end

function outputFile( c, n, m, file)
    f = fopen(file, 'wt');
    for i=1:n
        for j=1:m
            fprintf(f,'%f\t',c(i,j));
        end
        fprintf(f,'\n');
    end
    fclose(f);
end

function c = individualFind(m)
    [rows, cols] = size(m);
    max = 0;
    for i = 1:cols
        for j = 1:rows
            k = 1;
            while (isCorrect(m, i, j, k - 1) == true)
                if (max < k)
                    max = k;
                end
                k = k + 1;
            end
        end
    end
    c = max;
end


function c = isCorrect (m, rowFirst, colFirst, sizeS)
    [rows, cols] = size(m);
    if (((rowFirst + sizeS) > rows) || ((colFirst + sizeS) > cols))
        c = false;
        return;
    end
    for i = 0:sizeS
        if ((m(rowFirst + sizeS, colFirst + i) ~= 0) || (m(rowFirst + i, colFirst + sizeS) ~= 0))
            c = false;
            return;
        end
    end
    c = true;
end
