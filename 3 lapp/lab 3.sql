use [BestDatabaseMorozov]
--Задание 2_1  
select * from PEOPLE
--Задание 2_2  
IF OBJECT_ID('tempdb.dbo.#T') IS NOT NULL
DROP TABLE dbo.#T
--Задание 2_3  
CREATE TABLE #T (
COD INT PRIMARY KEY,
NAME1 VARCHAR(15),
NAME3 VARCHAR(20),
BIRTHDAY DATE,
SEX VARCHAR(1));
INSERT INTO #T(COD,NAME1, NAME3, BIRTHDAY, SEX)
SELECT COD,NAME1, NAME3, BIRTHDAY, SEX FROM PEOPLE;
SELECT * FROM #T;
--Задание 3  
DECLARE @T TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T (NAME, SEX, CNT)
SELECT DISTINCT NAME1, SEX, COUNT(NAME1) FROM #T
GROUP BY NAME1, SEX;
--SELECT NAME AS 'Имя', SEX AS 'Пол', CNT AS 'Количество вхождений' FROM @T;
--Задание 4  
DECLARE @MaxI int = (SELECT DISTINCT CNT FROM @T WHERE CNT = (SELECT MAX(CNT) FROM @T))
print @MaxI
--Задание 5  
DECLARE @T TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T (NAME, SEX, CNT)
SELECT DISTINCT NAME1, SEX, COUNT(NAME1) FROM #T
GROUP BY NAME1, SEX;
SELECT NAME AS 'Имя', SEX AS 'Пол', CNT AS 'Количество вхождений' FROM @T;
-- 
DECLARE @T TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T (NAME, SEX, CNT)
SELECT DISTINCT NAME1, SEX, COUNT(NAME1) FROM #T
GROUP BY NAME1, SEX;
go
SELECT NAME AS 'Имя', SEX AS 'Пол', CNT AS 'Количество вхождений' FROM @T;
-- 
SELECT * FROM #T
go
SELECT * FROM #T;
--Задание 6  
drop table #T;
SELECT * FROM #T;



--Часть 2
--Задание 2_1  
CREATE TABLE #T (
COD INT PRIMARY KEY,
NAME1 VARCHAR(15),
NAME3 VARCHAR(20),
BIRTHDAY DATE,
SEX VARCHAR(1));
INSERT INTO #T(COD,NAME1, NAME3, BIRTHDAY, SEX)
SELECT COD,NAME1, NAME3, BIRTHDAY, SEX FROM PEOPLE;
SELECT * FROM #T;
--Задание 2_2  
DECLARE @T2 TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T2 (NAME, CNT)
SELECT DISTINCT NAME1, COUNT(NAME1) FROM #T
GROUP BY NAME1;
SELECT NAME AS 'Имя', CNT AS 'Количество вхождений' FROM @T2
--Задание 2_3  
DECLARE @T2 TABLE (
	NAME varchar(20),
	SEX varchar(10),
	CNT int)
INSERT INTO @T2 (NAME, CNT)
SELECT DISTINCT NAME1, COUNT(NAME1) FROM #T
GROUP BY NAME1;
DECLARE @MaxI int = (SELECT DISTINCT CNT FROM @T2 WHERE CNT = (SELECT MAX(CNT) FROM @T2))
print @MaxI;
--Задание 3_1  
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
--Задание 3_2  
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
--Задание 3_3  
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

--Задание 4_1  
exec sp_helplogins;
--Задание 4_2  
exec sp_help @objname = 'dbo.PEOPLE';
--Задание 4_3  
exec sp_stored_procedures;
--Задание 5  
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
WHEN SEX = 1 THEN 'Женский'
WHEN SEX = 0 THEN 'Мужской'
ELSE 'Не определено'
END AS SEX,
COUNT(*)
FROM #T
GROUP BY NAME1, SEX;
/*В цикле выведите отдельным запросом имя и количество
повторений имени для всех значений от 1 до @MaxI*/
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
/*Измените ход выполнения цикла, так чтобы
пропускался вывод имен, встреченных 3 раза */
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
/*Измените ход выполнения цикла, так чтобы пропускался
вывод имен, встреченных 3 раза. Снова измените ход
выполнения цикла, так чтобы прерывался на цифре 4, т.е.
выводились только имена с числом повторений
от @MaxI до 5 (или ничего бы не выводилось, если @MaxI<=4*/
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
