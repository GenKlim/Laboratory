use lab_oborin_2

--DECLARE @places table (Name nchar(10));
DECLARE @places nchar(10);

--set @places = (SELECT Place.Name from Components left join Place on Place.Number = Components.PlaceNumber where Components.Specifications = '�������');
select @places;

-- ������ ������� ����, �� ������� ������������� ��������
--SELECT @places = (SELECT Place.Name from Components left join Place on Place.Number = Components.PlaceNumber where Components.Specifications = '�������');

-- ���������� ������� � ������������ ����������

declare @idnew int 
Set @idnew=3
declare C cursor
local forward_only  dynamic optimistic
for SELECT Place.Name from Components left join Place on Place.Number = Components.PlaceNumber where Components.Specifications = '�������'
open C
fetch next from C
while (@@fetch_status=0) begin
	fetch next from C into @places
	select @places
end