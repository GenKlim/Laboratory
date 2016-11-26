USE lab_3
GO

CREATE TABLE Дисциплина
(
	[Код дисциплины] smallint CONSTRAINT PK_Дисциплина NOT NULL PRIMARY KEY ([Код дисциплины]),
	Название varchar(50) NOT NULL
)
GO

CREATE TABLE Оценка
(
	Число smallint CONSTRAINT PK_Число NOT NULL PRIMARY KEY (Число),
	Текст varchar(10) NOT NULL
)
GO

CREATE TABLE Ведомость
(
	[Код студента] smallint NOT NULL,
	Дата datetime NOT NULL,
	[Дисциплина] smallint NOT NULL,
	Оценка smallint NOT NULL,
)
GO

CREATE TABLE Студент
(
	[Код студента] smallint CONSTRAINT [PK_Код студента] NOT NULL PRIMARY KEY ([Код студента]),
	[Номер группы] int NOT NULL,
	[Номер Зач. Книжки] int NOT NULL,
	Фамилия varchar(50) NOT NULL,
)
GO