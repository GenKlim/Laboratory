-- Список адресов и телелефонов (скрин 6)
select Adress, Phone from dbo.Class

-- Список мест и их ip адресов по адрессу (скрин 7)
select Name, IP from dbo.Place where ClassAdress = 'Балтийская 71/5'

-- Список компоненттов не их 12 места (скрин 8)
select * from dbo.Components where PlaceNumber != 12

-- Общее количество компоненттов (скрин 9)
select COUNT(*) from dbo.Components

-- Количество рабочих мест по адресу Ленина 107 (скрин 10)
select COUNT(*) from dbo.Place where ClassAdress = 'Ленина 107'

-- Список адрессов, имеющих белее одного рабочего места (скрин 2)
select ClassAdress, COUNT(*) as Count from dbo.Place group by ClassAdress having count(*) > 1