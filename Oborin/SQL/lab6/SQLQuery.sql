-- Список классов содержащих более одного рабочего места (скрин 1)
select * from Class t where
(select COUNT(*) from Class Inner Join Place On Class.Adress=Place.ClassAdress where Class.Adress=t.Adress) > 1;

-- Список оборудования установленного по адресу Балтийская 71/5 (скрин 2)
select Information from Components comp where
(select COUNT(*) from Place where (Place.ClassAdress = 'Балтийская 71/5' and Place.Number = comp.PlaceNumber)) > 0;

-- Количество установленного оборудования по адресу Ленина 107 каждого типа (скрин 3)
select Specifications, COUNT(*) from Components comp where
(select COUNT(*) from Place where (Place.ClassAdress = 'Ленина 107' and Place.Number = comp.PlaceNumber)) > 0 GROUP BY Specifications;

-- Рабочие места, отсортированные по номеру корпуса (скрин 4)
select Name, IP from Place order by (select Corpus from Class where Place.ClassAdress = Class.Adress)