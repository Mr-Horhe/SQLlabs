--������ �������
CREATE TABLE #Region(
RegId varchar(2) PRIMARY KEY,
CitiIdName varchar(200),
RegCenter varchar(200)
);
create table #Citi(
CitiId varchar(5) PRIMARY KEY,
RegId varchar(2),
CitiName varchar(200),
CitiPopulation int,
CitiCoord geography
);
--��������� �������
insert into #Region values
(15,'���������� �������� ������ � ������', '�����������'),
(23,'������������� ����','���������'),
(26,'�������������� ����','����������'),
(53,'������������ �������','������� ��������'),
(60,'��������� ������� ','�����'),
(78,'�����-���������','�����-���������')
select * from #Region
insert into #Citi values
(812,78,'�����-���������',5191690,geography::Point(59.95,30.316666667,4200)),
(8162,53,'������� ��������',221954,geography::Point(58.525,31.275, 4200)),
(81153, 60, '������� ����', 95606, geography::Point(56.35,30.51666667, 4200)),
(8112, 60, '�����', 207571, geography::Point(57.8166666667,28.3333333333,4200)),
(8672, 15, '�����������', 308190, geography::Point(43.0166666667,44.65, 4200)),
(86736, 15, '������', 40042, geography::Point(43.75,44.65, 4200)),
(8793, 26, '���������', 145971, geography::Point(44.05,43.06, 4200)),
(861, 23, '���������', 829677, geography::Point(45.033333333,38.983333333333,4200))
select CitiId,RegId,CitiName,CitiPopulation, CitiCoord.ToString() from #Citi

--����� ����� ����� 
declare @tmp geography;
declare @south geography;
set @south = (select CitiCoord from #Citi where CitiId = 8112)
declare crs cursor for
select CitiCoord from #Citi
open crs
fetch next from crs into @tmp
while @@FETCH_STATUS = 0
	begin
		if(@tmp.Lat < @south.Lat)
			set @south = @tmp
		fetch next from crs into @tmp
	end
close crs
deallocate crs
select CitiId,RegId,CitiName,CitiPopulation, CitiCoord.ToString() 'CitiCoord' 
from #Citi
where CitiCoord.STEquals(@south) = 1
--����� �������� ����� ������� ���
declare @tmp geography;
declare @south geography;
declare @west geography;
set @south = (select CitiCoord from #Citi where CitiId = 81153)
set @west = (select CitiCoord from #Citi where CitiId = 8672)
declare crs cursor scroll for
select CitiCoord from #Citi
open crs
fetch last from crs into @tmp
while @@FETCH_STATUS = 0
	begin
		if(@south.Lat > @tmp.Lat and @west.Long > @tmp.Long)
			set @west = @tmp
		fetch prior from crs into @tmp
	end
close crs
deallocate crs
select CitiId,RegId,CitiName,CitiPopulation, CitiCoord.ToString() 'CitiCoord' 
from #Citi
where CitiCoord.STEquals(@west) = 1
select CitiId,RegId,CitiName,CitiPopulation, CitiCoord.ToString() 'CitiCoord' 
from #Citi
--������� � ��. ���������� ������������ � ��������� � �����-����������, ������� ��������� � ������,
--� ����� ��������� ��������� ���� �������.
declare @SPb geography;
declare @Nov geography;
declare @Psk geography;
set @SPb = (select CitiCoord from #Citi where CitiName = '�����-���������')
set @Nov = (select CitiCoord from #Citi where CitiName = '������� ��������')
set @Psk = (select CitiCoord from #Citi where CitiName = '�����')
declare @triangle geography;
set @triangle = geography::STPolyFromText('POLYGON (('
+(select cast(@SPb.Long as varchar(200))) + ' ' + (select cast(@SPb.Lat as varchar(200))) + ','
+(select cast(@Nov.Long as varchar(200))) + ' ' + (select cast(@Nov.Lat as varchar(200))) + ','
+(select cast(@Psk.Long as varchar(200))) + ' ' + (select cast(@Psk.Lat as varchar(200))) + ','	
+(select cast(@SPb.Long as varchar(200))) + ' ' + (select cast(@SPb.Lat as varchar(200))) + '))',4200	)
select @triangle.STArea()/100000 '�������', 
((select CitiPopulation from #Citi where CitiName = '�����-���������')
+( select CitiPopulation from #Citi where CitiName = '������� ��������')
+( select CitiPopulation from #Citi where CitiName = '�����')) '���������'
select @triangle.STLength()/1000--��������
--�������
declare @SPb geography;
declare @Nov geography;
declare @Psk geography;
declare @Vdk geography;
declare @Krd geography;
set @SPb = (select CitiCoord from #Citi where CitiName = '�����-���������')
set @Nov = (select CitiCoord from #Citi where CitiName = '������� ��������')
set @Psk = (select CitiCoord from #Citi where CitiName = '�����')
set @Vdk = (select CitiCoord from #Citi where CitiName = '�����������')
set @Krd = (select CitiCoord from #Citi where CitiName = '���������')

declare @Route geography;
set @Route = geography::STLineFromText('LINESTRING ('
+(select cast(@SPb.Lat as varchar(200))) + ' ' + (select cast(@SPb.Long as varchar(200))) + ','
+(select cast(@Nov.Lat as varchar(200))) + ' ' + (select cast(@Nov.Long as varchar(200))) + ','
+(select cast(@Vdk.Lat as varchar(200))) + ' ' + (select cast(@Vdk.Long as varchar(200))) + ','
+(select cast(@Krd.Lat as varchar(200))) + ' ' + (select cast(@Krd.Long as varchar(200))) + ','
+(select cast(@Psk.Lat as varchar(200))) + ' ' + (select cast(@Psk.Long as varchar(200))) + ','	
+(select cast(@SPb.Lat as varchar(200))) + ' ' + (select cast(@SPb.Long as varchar(200))) + ')',4200)

select '�����-��������� - ������� �������� - ����� - ����������� - ���������' 'Route', 
@Route.STAsText(),
@Route.STLength()/1000 '����������'
--� ��������

CREATE TABLE #CenterCiti (
CitiId varchar(5) PRIMARY KEY,
RegId varchar(2),
CitiName varchar(200),
CitiPopulation int,
CitiCoord geography
);

insert into #CenterCiti select CitiId,#Citi.RegId, CitiName, CitiPopulation, CitiCoord
from #Citi INNER JOIN #Region 
ON #Citi.CitiName = #Region.RegCenter 
ORDER BY CitiName; 
 
DELETE FROM #CenterCiti WHERE CitiId = '�����-���������'; 

 
 
declare @coord varchar(200)
declare @routeName varchar(200)
DECLARE crs CURSOR FOR 
SELECT CitiName 
FROM #CenterCiti
order by CitiName
 

declare @routeVarChar varchar(2000) 
set @routeVarChar = 'LINESTRING (' 
+(SELECT cast(CitiCoord.Lat as varchar(15)) from #Citi where CitiName = '�����-���������') + ' '
+(SELECT cast(CitiCoord.Long as varchar(15)) from #Citi where CitiName = '�����-���������')+', ' 
 set @routeName = '�����-���������-'
OPEN crs 
FETCH NEXT FROM crs INTO @coord 
 
WHILE @@FETCH_STATUS = 0 
  
	BEGIN
		if(@coord != '�����-���������')
			begin
 				set @routeVarChar = @routeVarChar 
				+(SELECT cast(CitiCoord.Lat as varchar(15)) from #Citi where CitiName = @coord) 
				+ ' ' +(SELECT cast(CitiCoord.Long as varchar(15)) from #Citi where CitiName = @coord)+', ' 
				set @routeName = @routeName + @coord +'-'
				FETCH NEXT FROM crs INTO @coord
			end
		else
			begin
				set @routeVarChar = @routeVarChar
				+(SELECT cast(CitiCoord.Lat as varchar(15)) from #Citi where CitiName = @coord) 
				+ ' ' +(SELECT cast(CitiCoord.Long as varchar(15)) from #Citi where CitiName = @coord)+')' 
				set @routeName = @routeName + @coord 
				FETCH NEXT FROM crs INTO @coord
			end
	END 
CLOSE crs 
DEALLOCATE crs 
print @routeVarChar 
print @routeName

declare @route geography;
set @route = geography::STLineFromText(@routeVarChar,4200)
select @routeName '�������', @route.ToString() '�������', @route.STLength()/1000 '����������'

