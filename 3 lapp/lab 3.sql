use [BestDatabaseMorozov]
--������� 2_1  
select * from PEOPLE
--������� 2_2  
IF OBJECT_ID('tempdb.dbo.#T') IS NOT NULL
DROP TABLE dbo.#T
--������� 2_3  
CREATE TABLE #T (
COD INT PRIMARY KEY,
NAME1 VARCHAR(15),
NAME3 VARCHAR(20),
BIRTHDAY DATE,
SEX VARCHAR(1));
INSERT INTO #T(COD,NAME1, NAME3, BIRTHDAY, SEX)
SELECT COD,NAME1, NAME3, BIRTHDAY, SEX FROM PEOPLE;
SELECT * FROM #T;
--������� 3  
DECLARE @T TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T (NAME, SEX, CNT)
SELECT DISTINCT NAME1, SEX, COUNT(NAME1) FROM #T
GROUP BY NAME1, SEX;
--SELECT NAME AS '���', SEX AS '���', CNT AS '���������� ���������' FROM @T;
--������� 4  
DECLARE @MaxI int = (SELECT DISTINCT CNT FROM @T WHERE CNT = (SELECT MAX(CNT) FROM @T))
print @MaxI
--������� 5  
DECLARE @T TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T (NAME, SEX, CNT)
SELECT DISTINCT NAME1, SEX, COUNT(NAME1) FROM #T
GROUP BY NAME1, SEX;
SELECT NAME AS '���', SEX AS '���', CNT AS '���������� ���������' FROM @T;
-- 
DECLARE @T TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T (NAME, SEX, CNT)
SELECT DISTINCT NAME1, SEX, COUNT(NAME1) FROM #T
GROUP BY NAME1, SEX;
go
SELECT NAME AS '���', SEX AS '���', CNT AS '���������� ���������' FROM @T;
-- 
SELECT * FROM #T
go
SELECT * FROM #T;
--������� 6  
drop table #T;
SELECT * FROM #T;



--����� 2
--������� 2_1  
CREATE TABLE #T (
COD INT PRIMARY KEY,
NAME1 VARCHAR(15),
NAME3 VARCHAR(20),
BIRTHDAY DATE,
SEX VARCHAR(1));
INSERT INTO #T(COD,NAME1, NAME3, BIRTHDAY, SEX)
SELECT COD,NAME1, NAME3, BIRTHDAY, SEX FROM PEOPLE;
SELECT * FROM #T;
--������� 2_2  
DECLARE @T2 TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T2 (NAME, CNT)
SELECT DISTINCT NAME1, COUNT(NAME1) FROM #T
GROUP BY NAME1;
SELECT NAME AS '���', CNT AS '���������� ���������' FROM @T2
--������� 2_3  
DECLARE @T2 TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T2 (NAME, CNT)
SELECT DISTINCT NAME1, COUNT(NAME1) FROM #T
GROUP BY NAME1;
DECLARE @MaxI int = (SELECT DISTINCT CNT FROM @T2 WHERE CNT = (SELECT MAX(CNT) FROM @T2))
print @MaxI;
--������� 3_1  
DECLARE @T2 TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T2 (NAME, CNT)
SELECT DISTINCT NAME1, COUNT(NAME1) FROM #T
GROUP BY NAME1;
DECLARE @MaxI int = (SELECT DISTINCT CNT FROM @T2 WHERE CNT = (SELECT MAX(CNT) FROM @T2))
while @MaxI >= 1
	begin
		select NAME, CNT from @T2 where CNT = @MaxI;
		set @MaxI -= 1;
	end;
--������� 3_2  
DECLARE @T2 TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T2 (NAME, CNT)
SELECT DISTINCT NAME1, COUNT(NAME1) FROM #T
GROUP BY NAME1;
DECLARE @MaxI int = (SELECT DISTINCT CNT FROM @T2 WHERE CNT = (SELECT MAX(CNT) FROM @T2))
while @MaxI >= 1
	begin
		select NAME, CNT from @T2 where CNT = @MaxI;
		set @MaxI -= 1;
		if @MaxI = 3 set @MaxI = 2;
	end;
--������� 3_3  
DECLARE @T2 TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T2 (NAME, CNT)
SELECT DISTINCT NAME1, COUNT(NAME1) FROM #T
GROUP BY NAME1;
DECLARE @MaxI int = (SELECT DISTINCT CNT FROM @T2 WHERE CNT = (SELECT MAX(CNT) FROM @T2))
while @MaxI >= 1
	begin
		select NAME, CNT from @T2 where CNT = @MaxI;
		set @MaxI -= 1;
		if @MaxI = 4 set @MaxI = 0;
	end;

--������� 4_1  
exec sp_helplogins;
--������� 4_2  
exec sp_help @objname = 'dbo.PEOPLE';
--������� 4_3  
exec sp_stored_procedures;
--������� 5  
drop procedure dbo.spMyProc;
CREATE PROC dbo.spMyProc (@NUM INT)
	AS
	IF OBJECT_ID('tempdb.dbo.#T') is NOT NULL
		RETURN 1
	CREATE TABLE #T(
	COD int not null,
	NAME1 varchar(15) null,
	NAME3 varchar(15) null,
	BIRTHDAY date null,
	SEX char null)
	INSERT INTO #T (COD, NAME1, NAME3, BIRTHDAY, SEX)
	SELECT COD, NAME1, NAME3, BIRTHDAY, SEX
	FROM PEOPLE
	DECLARE @CHECK_SIZE int;
	SET @CHECK_SIZE =(SELECT COUNT(*) FROM #T);
	IF (@CHECK_SIZE = 0 )
		RETURN 2
	IF (@NUM != 1 and @NUM != 2 and @NUM != 3)
		RETURN 4
	DECLARE @T2 TABLE(
	NAME varchar(25),
	SEX varchar(20),
	COUNT_NAME int)
	INSERT INTO @T2(NAME,SEX,COUNT_NAME)
	SELECT NAME1,
	CASE
WHEN SEX = 1 THEN '�������'
WHEN SEX = 0 THEN '�������'
ELSE '�� ����������'
END AS SEX,
COUNT(*)
FROM #T
GROUP BY NAME1, SEX;
/*� ����� �������� ��������� �������� ��� � ����������
���������� ����� ��� ���� �������� �� 1 �� @MaxI*/
IF (@NUM = 1 or @NUM = 0)
BEGIN
DECLARE @MaxI int;
SET @MaxI = (SELECT MAX(COUNT_NAME) FROM @T2);
WHILE @MaxI >= 1
BEGIN
SET @MaxI-=1;
SELECT * FROM @T2 WHERE COUNT_NAME = @MaxI+1;
END
END
/*�������� ��� ���������� �����, ��� �����
����������� ����� ����, ����������� 3 ���� */
IF (@NUM = 2)
BEGIN
SET @MaxI =( SELECT MAX(COUNT_NAME) FROM @T2);
WHILE @MaxI >= 1
BEGIN
SET @MaxI-=1;
IF (@MaxI = 2) CONTINUE
SELECT * FROM @T2 WHERE COUNT_NAME = @MaxI+1;
END
END
/*�������� ��� ���������� �����, ��� ����� �����������
����� ����, ����������� 3 ����. ����� �������� ���
���������� �����, ��� ����� ���������� �� ����� 4, �.�.
���������� ������ ����� � ������ ����������
�� @MaxI �� 5 (��� ������ �� �� ����������, ���� @MaxI<=4*/
IF (@NUM = 3)
BEGIN
SET @MaxI = (SELECT MAX(COUNT_NAME) FROM @T2);
WHILE @MaxI >= 1
BEGIN
SET @MaxI-=1;
IF (@MaxI = 4) BREAK
SELECT * FROM @T2 WHERE COUNT_NAME = @MaxI+1;
END
END
RETURN 0

	-- 
exec dbo.spMyProc 1;
