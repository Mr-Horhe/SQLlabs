--������� 5
CREATE PROC dbo.spMyProc (@NUM INT)
AS
--���� ������� ����������
IF OBJECT_ID('tempdb.dbo.#T') is NOT NULL
RETURN 1
--������� ��������� ������� ��� � ������� 2
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
/*�������� ��������� ���������� @T2, ���������
� ��� �������� ������������� ���� � ����������
�������, � ������� ����������� ��� ��� */
DECLARE @T2 TABLE(
NAME varchar(25),
SEX varchar(20),
CNT int)
INSERT INTO @T2(NAME,SEX,CNT)
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
/*�������� ��� ���������� �����, ��� �����
����������� ����� ����, ����������� 3 ���� */
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
/*�������� ��� ���������� �����, ��� ����� �����������
����� ����, ����������� 3 ����. ����� �������� ���
���������� �����, ��� ����� ���������� �� ����� 4, �.�.
���������� ������ ����� � ������ ����������
�� @MaxI �� 5 (��� ������ �� �� ����������, ���� @MaxI<=4*/
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
