-- ������ ������� � ����������� (����� 6)
select Adress, Phone from dbo.Class

-- ������ ���� � �� ip ������� �� ������� (����� 7)
select Name, IP from dbo.Place where ClassAdress = '���������� 71/5'

-- ������ ������������ �� �� 12 ����� (����� 8)
select * from dbo.Components where PlaceNumber != 12

-- ����� ���������� ������������ (����� 9)
select COUNT(*) from dbo.Components

-- ���������� ������� ���� �� ������ ������ 107 (����� 10)
select COUNT(*) from dbo.Place where ClassAdress = '������ 107'

-- ������ ��������, ������� ����� ������ �������� ����� (����� 2)
select ClassAdress, COUNT(*) as Count from dbo.Place group by ClassAdress having count(*) > 1