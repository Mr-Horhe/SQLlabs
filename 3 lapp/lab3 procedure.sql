--«адание 5
CREATE PROC dbo.spMyProc (@NUM INT)
AS
--≈сли таблица существует
IF OBJECT_ID('tempdb.dbo.#T') is NOT NULL
RETURN 1
--—оздаем временную таблицу как в задании 2
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
/*—оздайте табличную переменную @T2, поместите
в нее перечень встречающихс€ имен и количество
записей, в которых встречалось это им€ */
DECLARE @T2 TABLE(
NAME varchar(25),
SEX varchar(20),
CNT int)
INSERT INTO @T2(NAME,SEX,CNT)
SELECT NAME1,
CASE
WHEN SEX = 1 THEN '∆енский'
WHEN SEX = 0 THEN 'ћужской'
ELSE 'Ќе определено'
END AS SEX,
COUNT(*)
FROM #T
GROUP BY NAME1, SEX;
/*¬ цикле выведите отдельным запросом им€ и количество
повторений имени дл€ всех значений от 1 до @MaxI*/
IF (@NUM = 1)
BEGIN
DECLARE @MaxI int;
SET @MaxI = (SELECT MAX(CNT) FROM @T2);
while @MaxI >= 1
	begin
		select NAME, CNT from @T2 where CNT = @MaxI
		set @MaxI -= 1
		if @MaxI = 3 set @MaxI = 2
	end
END
/*»змените ход выполнени€ цикла, так чтобы
пропускалс€ вывод имен, встреченных 3 раза */
IF (@NUM = 2)
BEGIN
SET @MaxI =( SELECT MAX(CNT) FROM @T2);
while @MaxI >= 1
	begin
		select NAME, CNT from @T2 where CNT = @MaxI
		set @MaxI -= 1
		if @MaxI = 3 set @MaxI = 2
	end
END
/*»змените ход выполнени€ цикла, так чтобы пропускалс€
вывод имен, встреченных 3 раза. —нова измените ход
выполнени€ цикла, так чтобы прерывалс€ на цифре 4, т.е.
выводились только имена с числом повторений
от @MaxI до 5 (или ничего бы не выводилось, если @MaxI<=4*/
IF (@NUM = 3)
BEGIN
SET @MaxI = (SELECT MAX(CNT) FROM @T2);
while @MaxI >= 1
	begin
		select NAME, CNT from @T2 where CNT = @MaxI
		set @MaxI -= 1
		if @MaxI = 4 set @MaxI = 0
	end
END
RETURN 0

exec dbo.spMyProc 0;
drop procedure dbo.spMyProc
