-- Представить полную информацию о рабочих местах (скрин 1)
select * from Class Inner Join Place On Class.Adress=Place.ClassAdress;

-- Список деталий и рабочих мест, где они установлленны (скрин 2)
select	Components.Specifications, Components.InstallationDate, Components.Information,
		Place.Name, Place.IP, Place.ClassAdress
from  Components, Place where Components.PlaceNumber = Place.Number;

-- Список рабочих мест по заданному адруссу Балтийская 71/5 (скрин 3)
select Place.Name, Place.IP, Class.Corpus, Class.Room, Class.Phone
from Place Inner Join Class On Place.ClassAdress=Class.Adress where Class.Adress='Балтийская 71/5';

-- Количество деталей, установленных на раюочем месте под номером 12 (скрин 4)
select COUNT(*) from  Components Inner Join Place On Components.PlaceNumber = Place.Number where Place.Number = 12;

-- Список классов содержащих более одного рабочего места (скрин 5)
select * from Class t where (select COUNT(*) from Class Inner Join Place On Class.Adress=Place.ClassAdress where Class.Adress=t.Adress) > 1;