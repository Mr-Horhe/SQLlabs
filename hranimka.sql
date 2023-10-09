--IF OBJECT_ID('tempdb.dbo.#T') IS NOT NULL
--DROP TABLE dbo.#T;

--CREATE TABLE #T(
--COD INT PRIMARY KEY,
--NAME1 VARCHAR(15),
--NAME3 VARCHAR(20),
--BIRTHDAY DATE,
--SEX VARCHAR(1)
--);
--INSERT INTO #T(COD, NAME1, NAME3, BIRTHDAY, SEX)
--SELECT COD, NAME1, NAME3, BIRTHDAY, SEX FROM PEOPLE;


--DECLARE @T2 TABLE (
--NAME VARCHAR(20),
--CNT INT)
--INSERT INTO @T2 (NAME, CNT)
--SELECT DISTINCT NAME1, COUNT(NAME1) FROM #T
--GROUP BY NAME1;

----SELECT * FROM @T1;
----select * from @T2 where CNT = 6;
--DECLARE @MaxI INT = (SELECT MAX(CNT) FROM @T2);
--print @MaxI;
--while @MaxI >= 5
--	begin
--	select name, CNT from @T2 where CNT = @MaxI;
--	set @MaxI -= 1;
--	--if @MaxI = 3 set @MaxI = 2;
--	end;
----SELECT MAX(CNT) FROM @T1;

--exec sp_help @objname = 'dbo.PEOPLE';

--EXEC sp_stored_procedures;


create proc dbo.spMyproc (@NUM int)
as
if OBJECT_ID('tempdb.dbo.#T') IS NOT NULL
return 1

CREATE TABLE #T(
COD INT not null,
NAME1 VARCHAR(15) null,
NAME3 VARCHAR(20) null,
BIRTHDAY DATE null,
SEX VARCHAR(1) null
);
INSERT INTO #T(COD, NAME1, NAME3, BIRTHDAY, SEX)
SELECT COD, NAME1, NAME3, BIRTHDAY, SEX FROM PEOPLE;
declare @check_size int = (select count(*) from #T);
if (@check_size = 0)return 2

if (@NUM != 1 and @NUM != 2 and @NUM != 3)return 4

DECLARE @T2 TABLE(
NAME varchar(25),
SEX varchar(20),
CNT int)
INSERT INTO @T2(NAME,SEX,CNT)
SELECT NAME1,
CASE
WHEN SEX = 1 THEN 'Женский'
WHEN SEX = 0 THEN 'Мужской'
ELSE 'Не определено'
END AS SEX,
COUNT(*)
FROM #T
GROUP BY NAME1, SEX;
declare @MaxI int;
set @MaxI = (select max(cnt) from @T2);
if (@NUM = 1)
begin
while @MaxI >= 1
	begin
		select name, cnt from @T2 where CNT = @MaxI
		set @MaxI -= 1
	end
end
if (@NUM = 2)
begin
while @MaxI >= 1
	begin
		select name, cnt from @T2 where CNT = @MaxI;
		set @MaxI -= 1;
		if (@MaxI = 3)set @MaxI=2;
	end
end
if (@NUM = 3)
begin
while @MaxI >= 5
	begin
		select name, cnt from @T2 where CNT = @MaxI;
		set @MaxI -= 1;
	end
end
return 0
