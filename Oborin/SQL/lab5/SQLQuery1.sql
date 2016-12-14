-- ����������� ������ ���������� � ������� ������ (����� 1)
select * from Class Inner Join Place On Class.Adress=Place.ClassAdress;

-- ������ ������� � ������� ����, ��� ��� ������������� (����� 2)
select	Components.Specifications, Components.InstallationDate, Components.Information,
		Place.Name, Place.IP, Place.ClassAdress
from  Components, Place where Components.PlaceNumber = Place.Number;

-- ������ ������� ���� �� ��������� ������� ���������� 71/5 (����� 3)
select Place.Name, Place.IP, Class.Corpus, Class.Room, Class.Phone
from Place Inner Join Class On Place.ClassAdress=Class.Adress where Class.Adress='���������� 71/5';

-- ���������� �������, ������������� �� ������� ����� ��� ������� 12 (����� 4)
select COUNT(*) from  Components Inner Join Place On Components.PlaceNumber = Place.Number where Place.Number = 12;

-- ������ ������� ���������� ����� ������ �������� ����� (����� 5)
select * from Class t where (select COUNT(*) from Class Inner Join Place On Class.Adress=Place.ClassAdress where Class.Adress=t.Adress) > 1;