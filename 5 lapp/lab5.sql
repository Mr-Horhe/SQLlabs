use [BestDatabaseMorozov]

--1
select * from dbo.REFCTR
select * from dbo.REFREG 

--2
select [CODCTR] "CODCTR", [NAME] "NAME", [FULLNAME] "FULLNAME", [CAPITAL] "CAPITAL" 
from dbo.REFCTR
for xml path('Country'), root ('Countries')

--3
Select Country.CODCTR, FULLNAME, CODREG, NAMEREG, CENTER
FROM dbo.REFCTR AS Country INNER JOIN
dbo.REFREG AS Region
ON Country.CODCTR = Region.CODCTR
FOR XML AUTO, ROOT('Countries')


--4
CREATE TABLE #T1(ID CHAR(3) PRIMARY KEY,
NAME VARCHAR(60),
FULLNAME VARCHAR(100),
CAPITAL VARCHAR(60),
REGIONS XML);

insert into #T1 
select CODCTR, NAME, FULLNAME, CAPITAL, NULL
from dbo.REFCTR

DECLARE @id VARCHAR(3)
DECLARE my_crs CURSOR FOR
SELECT CODCTR FROM dbo.REFREG
OPEN my_crs
FETCH NEXT FROM my_crs INTO @id
WHILE @@FETCH_STATUS = 0
	BEGIN
		update #T1
		set REGIONS =
		(
		SELECT  CODREG "@Codreg",CENTER "@Center", NAMEREG "*" 
		FROM dbo.REFREG 
		where CODCTR = @id 
		for xml path('Region'),root ('Regions')
		)
		where ID = @id
		FETCH NEXT FROM my_crs INTO @id
		
		END
	CLOSE my_crs
	DEALLOCATE my_crs

select * from #T1 

--5
DECLARE @id VARCHAR(3)
DECLARE my_crs CURSOR FOR
SELECT CODCTR FROM dbo.REFREG
OPEN my_crs
FETCH NEXT FROM my_crs INTO @id
WHILE @@FETCH_STATUS = 0
	BEGIN
		update #T1
		set REGIONS =
		(
		SELECT  CODREG "@Codreg",CENTER "@Center", NAMEREG "@Region" 
		FROM dbo.REFREG 
		where CODCTR = @id 
		for xml path('Region'),root ('Regions')
		)
		where ID = @id
		FETCH NEXT FROM my_crs INTO @id
		
		END
	CLOSE my_crs
	DEALLOCATE my_crs

--NASHVILLE
declare @idoc int, @reg xml
set @reg = (
select REGIONS from #T1 where 
cast(REGIONS.query('/Regions/Region[@Center="NASHVILLE"]') 
as varchar(max)) != '')
EXEC sp_xml_preparedocument @idoc OUTPUT,
@reg;
SELECT *
FROM
OPENXML (@idoc, '/Regions/Region[@Center="NASHVILLE"]',1)
 WITH (Codreg CHAR(2),
 Region VARCHAR(100),
 Center VARCHAR(60));

 -- AUS GBR
 create table #AUS(
Codreg CHAR(2),
 Region VARCHAR(100),
 Center VARCHAR(60))

 create table #GBR(
Codreg CHAR(2),
 Region VARCHAR(100),
 Center VARCHAR(60))


declare @idocAUS int, @regAUS xml
set @regAUS = (
select REGIONS from #T1 where 
ID = 'AUS')

declare @idocGBR int, @regGBR xml
set @regGBR = (
select REGIONS from #T1 where 
ID = 'GBR')

EXEC sp_xml_preparedocument @idocAUS OUTPUT,
@regAUS;

EXEC sp_xml_preparedocument @idocGBR OUTPUT,
@regGBR;
if (select count(*) from #AUS) != 0
	delete from #AUS
insert into #AUS 
SELECT *
FROM
OPENXML (@idocAUS, '/Regions/Region',1)
 WITH (Codreg CHAR(2),
 Region VARCHAR(100),
 Center VARCHAR(60));

if (select count(*) from #GBR) != 0
	delete from #GBR
insert into #GBR
SELECT *
FROM
OPENXML (@idocGBR, '/Regions/Region',1)
 WITH (Codreg CHAR(2),
 Region VARCHAR(100),
 Center VARCHAR(60));

 select * from #AUS
 union
 select * from #GBR

 --6
SELECT
REGIONS.query('/Regions/Region[@Codreg=
"SC"]') AS REG
FROM #T1
WHERE ID='GBR'

select
REGIONS.value('(/Regions/Region[@Codreg = "SC"]/@Codreg)[1]', 'varchar(2)') 
from #T1
where ID = 'GBR'

insert into #T1 values
((select
REGIONS.value('(/Regions/Region[@Codreg = "SC"]/@Codreg)[1]', 'varchar(2)') 
from #T1
where ID = 'GBR'),
(select
REGIONS.value('(/Regions/Region[@Codreg = "SC"]/@Region)[1]', 'varchar(60)') 
from #T1
where ID = 'GBR'),
(select
REGIONS.value('(/Regions/Region[@Codreg = "SC"]/@Region)[1]', 'varchar(60)') 
from #T1
where ID = 'GBR'),
(select
REGIONS.value('(/Regions/Region[@Codreg = "SC"]/@Center)[1]', 'varchar(60)') 
from #T1
where ID = 'GBR'),
NULL)
--select * from #T1 where ID = 'SC'

declare @x xml =(
SELECT
REGIONS.query('/Regions/Region') AS REG
FROM #T1
WHERE ID='GBR')
set @x.modify('delete (/Region[@Codreg = "SC"])')
select @x
update #T1
set REGIONS = @x
WHERE ID = 'GBR'
select * from #T1 where ID = 'GBR'