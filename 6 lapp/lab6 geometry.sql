--������� �������
CREATE TABLE #Geom(
ObjName varchar(10) PRIMARY KEY,
ObjGeom geometry
);
--�������� �����
insert into #Geom
values ('A', geometry::Point(1,1, 0)),
('B',geometry::Point (2,3, 0)),
('C',geometry::Point (3,1, 0)),
('D',geometry::Point(4,3, 0)),
('E',geometry::Point(1,1, 1));
--����� �������
select ObjName, ObjGeom.ToString()+', SRID = ' + cast(ObjGeom.STSrid as char(2)) from #Geom
--�������� ����� F
insert into #Geom
values ('F', (geometry::Point((select cast(ObjGeom.STX + 5 as int) from #Geom where ObjName = 'E'),
(select cast(ObjGeom.STY + 3 as int) from #Geom where ObjName = 'E'),
(select cast(ObjGeom.STSrid as char(2)) from #Geom where ObjName = 'E'))))
--���������� ����� D � E
declare @D geometry;
declare @E geometry;
set @D = geometry::Point(4,3, 0)
set @E = geometry::Point(1,1, 1)
select @D.STDistance(@E)
--���������� ����� E � F
declare @F geometry;
declare @E geometry;
set @F = geometry::Point(6,4, 1)
set @E = geometry::Point(1,1, 1)
select @E.STDistance(@F)
--��������� �������
declare @A geometry;
declare @B geometry;
declare @C geometry;
declare @E geometry;
declare @F geometry;
set @A = geometry::Point(1,1, 0)
set @B = geometry::Point (2,3, 0)
set @C = geometry::Point (3,1, 0)
set @E = geometry::Point(1,1, 1)
set @F = geometry::Point(6,4, 1)
declare @ABC geometry;
set @ABC = geometry::STLineFromText('LINESTRING ('
+(select cast(@A.STX as char(1))) + ' ' + (select cast(@A.STY as char(1))) + ','
+(select cast(@B.STX as char(1))) + ' ' + (select cast(@B.STY as char(1))) + ','
+(select cast(@C.STX as char(1))) + ' ' + (select cast(@C.STY as char(1))) + ')',0)
declare @EF geometry;
set @EF = geometry::STLineFromText('LINESTRING ('
+(select cast(@E.STX as char(1))) + ' ' + (select cast(@E.STY as char(1))) + ','
+(select cast(@F.STX as char(1))) + ' ' + (select cast(@F.STY as char(1))) + ')',1)
insert into #Geom values
('ABC',@ABC), ('EF',@EF)
select ObjName, ObjGeom.ToString()+', SRID = ' + cast(ObjGeom.STSrid as char(2)) from #Geom
--������ ���������: ��������, �����, ��������� � �������� �����, ���������� �����
select ObjName '��������', 
ObjGeom.STLength() '�����',
ObjGeom.STStartPoint().ToString() '��������� �����',
ObjGeom.STEndPoint().ToString() '�������� �����',
ObjGeom.STNumPoints() '���������� �����'
from #Geom
where ObjGeom.ToString() like ('LINESTRING%')
--������ ��������
declare @A geometry;
declare @B geometry;
declare @C geometry;
declare @D geometry;
set @A = geometry::Point(1,1, 0)
set @B = geometry::Point (2,3, 0)
set @C = geometry::Point (3,1, 0)
set @D = geometry::Point(4,3, 0)
declare @ABCDA geometry;
set @ABCDA = geometry::STPolyFromText('POLYGON (('
+(select cast(@A.STX as char(1))) + ' ' + (select cast(@A.STY as char(1))) + ','
+(select cast(@B.STX as char(1))) + ' ' + (select cast(@B.STY as char(1))) + ','
+(select cast(@C.STX as char(1))) + ' ' + (select cast(@C.STY as char(1))) + ','
+(select cast(@D.STX as char(1))) + ' ' + (select cast(@D.STY as char(1))) + ','
+(select cast(@A.STX as char(1))) + ' ' + (select cast(@A.STY as char(1))) + '))',0)

declare @ABDCA geometry;
set @ABDCA = geometry::STPolyFromText('POLYGON (('
+(select cast(@A.STX as char(1))) + ' ' + (select cast(@A.STY as char(1))) + ','
+(select cast(@B.STX as char(1))) + ' ' + (select cast(@B.STY as char(1))) + ','
+(select cast(@D.STX as char(1))) + ' ' + (select cast(@D.STY as char(1))) + ','
+(select cast(@C.STX as char(1))) + ' ' + (select cast(@C.STY as char(1))) + ','
+(select cast(@A.STX as char(1))) + ' ' + (select cast(@A.STY as char(1))) + '))',0)

--insert into #Geom values
--('ABCDA',@ABCDA), ('ABDCA',@ABDCA)
--select ObjName, ObjGeom.ToString()+', SRID = ' + cast(ObjGeom.STSrid as char(2)) from #Geom

--������� 1�� ��������(����������)
--select @ABCDA.STIsValid()
--������� 2�� ��������(����������)
--select @ABDCA.STIsValid()
select @ABDCA.STLength() '��������', @ABDCA.STArea()'�������',@ABDCA.STPointOnSurface().ToString()'����� �����������'
--�������� ������� � ����� �����������
--������� �������
select ObjName, ObjGeom.ToString()+', SRID = ' + cast(ObjGeom.STSrid as char(2)) from #Geom