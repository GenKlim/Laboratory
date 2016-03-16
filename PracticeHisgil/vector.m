function MyVector()
    beep off
    k = 0;
    vect = 1:10;
    while (k ~= 8)
        k = input('1) ����� ������� �� �����\n2) ���������� ������� � ������� ������� ��������� ����� \n3) ���������� ������� \"��������\" \n4) ���������� ������� ������� \n5) ���������� ��������� \n6) �������� ����� �������� ������� \n7) ���������������� ����� �������� ������� \n������� \"8\" ��� ������\n');
        tic
        switch k
        case 1%����� ������� �� �����
            vect
        case 2%���������� ������� � ������� ������� ��������� �����
            n = input('������� ������ �������: ');
             vect = round(rand(1, n) * 1000);
        case 3%���������� ������� "��������"
            vect = sortBubble(vect);
        case 4% ���������� ������� �������
            vect = sortInsertion(vect);
        case 5%���������� ���������
           vect = sortCount(vect);
        case 6%�������� ����� �������� �������
            key = input('Enter search key: ');
            tic
            index = findBinary(vect, key);
        case 7%���������������� ����� �������� �������
            key = input('Enter search key: ');
            tic
            index = findInterpolation(vect, key);
        case 8
            break;
        otherwise
            disp('Sorry, your input "'); k
             disp('" was not recognized.');
             disp('Press any key to continue');
             %pause();
        end
        toc
    end
end


function vect = sortBubble(vect) %���������� ���������
    nswap = 0;
    size = numel(vect);
    flag = logical(1);
    i = 0;
    while ((i < (size - 1)) && flag)
        flag = 0;
        i = i + 1;
        for j = (1:size-i-1)
            if vect([j+1]) < vect([j])
                nswap = nswap + 1;
                vect([j j+1]) = vect([j+1 j]);
                flag = 1;
            end
        end
    end
    nswap
end

function vect = sortInsertion(vect) %���������� ���������
     nswap = 0;
     size = numel(vect);
    for i = (1:size-1)
        j = i;
        while (j > 1) && ( vect(j) > vect(j+1) )
            nswap = nswap + 1;
            vect([j j-1]) = vect([j-1 j]);
            j = j-1;
        end
    end
    nswap
end

function vect = sortCount(vect) %���������� ���������
     nswap_ = 0;
     size = numel(vect);
     countMin = min(vect);
     countMax = max(vect);
     tempVector=zeros(1,countMax-countMin+1);
     for i = (1:size)
         tempVector(vect(i) - countMin + 1) = tempVector(vect(i) - countMin + 1) + 1;
         nswap_ = nswap_ + 1;
     end
     temp = nswap_;
     for i = (countMin:countMax)
         for j = (1:tempVector([i - countMin + 1]))
             nswap_ = nswap_ + 1;
             vect([nswap_ - temp]) = i;
         end
     end
     nswap_
end

function index = findBinary(vect, key) %�������� �����
    index = -1;
    nview = 0;
    left = 1;
    right = numel(vect);
    while (left < right)
        nview = nview + 1;
        mid = round(mean([left right]));
        if (key < vect([mid]))
            right = mid - 1;
        else
            if (key > vect([mid]))
                left = mid + 1;
            else
                disp('������� �������: ');
                index = mid
                return;
            end
        end

    end
    disp('������� ������� �� ������.');
end

function index = findInterpolation(vect, key) %���������������� �����
    index = -1;
    nview = 0;
    left = 1;
    right = numel(vect) - 1;

    while ((vect([left]) <= key) && (vect([right]) >= key))
        nview = nview + 1;
        mid = floor(left + ((key - vect(left)) * (right - left)) / (vect([right]) - vect([left])));

        if (key < vect([mid]))
            right = mid - 1;
        else
            if (key > vect([mid]))
                left = mid + 1;
            else
                disp('������� �������: ');
                index = mid
                return;
            end
        end
        if (vect([left]) == key)
            disp('������� �������: ');
            index = mid
            return;
        end
    end
    disp('������� ������� �� ������.');
end
