select * from Class t where
(select COUNT(*) from Class Inner Join Place On Class.Adress=Place.ClassAdress where Class.Adress=t.Adress) > 1;

select Information from Components comp where

select Specifications, COUNT(*) from Components comp where

select Name, IP from Place order by (select Corpus from Class where Place.ClassAdress = Class.Adress)
