Use lab_3
GO

ALTER Table Ведомость
ADD CONSTRAINT FK_Ведомость_Дисциплина FOREIGN KEY(Дисциплина) REFERENCES Дисциплина ([Код дисциплины]) ON Update Cascade ON Delete Cascade
GO

ALTER Table Ведомость
ADD CONSTRAINT FK_Ведомость_Оценка FOREIGN KEY(Оценка) REFERENCES Оценка (Число) ON Update Cascade ON Delete Cascade
GO

ALTER TABLE Ведомость ADD  CONSTRAINT CK_Дата CHECK  ((datepart(month,Дата)=(1)))
GO

ALTER Table Ведомость
ADD CONSTRAINT FK_Студент_Ведомость FOREIGN KEY([Код студента]) REFERENCES Студент ([Код студента]) ON Update Cascade ON Delete Cascade
GO