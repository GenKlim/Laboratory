Use lab_3
GO

ALTER Table ���������
ADD CONSTRAINT FK_���������_���������� FOREIGN KEY(����������) REFERENCES ���������� ([��� ����������]) ON Update Cascade ON Delete Cascade
GO

ALTER Table ���������
ADD CONSTRAINT FK_���������_������ FOREIGN KEY(������) REFERENCES ������ (�����) ON Update Cascade ON Delete Cascade
GO

ALTER TABLE ��������� ADD  CONSTRAINT CK_���� CHECK  ((datepart(month,����)=(1)))
GO

ALTER Table ���������
ADD CONSTRAINT FK_�������_��������� FOREIGN KEY([��� ��������]) REFERENCES ������� ([��� ��������]) ON Update Cascade ON Delete Cascade
GO