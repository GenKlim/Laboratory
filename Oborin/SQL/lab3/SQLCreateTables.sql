USE lab_3
GO

CREATE TABLE ����������
(
	[��� ����������] smallint CONSTRAINT PK_���������� NOT NULL PRIMARY KEY ([��� ����������]),
	�������� varchar(50) NOT NULL
)
GO

CREATE TABLE ������
(
	����� smallint CONSTRAINT PK_����� NOT NULL PRIMARY KEY (�����),
	����� varchar(10) NOT NULL
)
GO

CREATE TABLE ���������
(
	[��� ��������] smallint NOT NULL,
	���� datetime NOT NULL,
	[����������] smallint NOT NULL,
	������ smallint NOT NULL,
)
GO

CREATE TABLE �������
(
	[��� ��������] smallint CONSTRAINT [PK_��� ��������] NOT NULL PRIMARY KEY ([��� ��������]),
	[����� ������] int NOT NULL,
	[����� ���. ������] int NOT NULL,
	������� varchar(50) NOT NULL,
)
GO