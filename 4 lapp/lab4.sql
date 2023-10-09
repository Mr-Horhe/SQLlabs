Use [BestDatabaseMorozov]
--2
CREATE SCHEMA testsch;

CREATE OR ALTER VIEW testsch.v1 AS
SELECT DUTIES, SALARY FROM STAFF
WHERE SALARY BETWEEN 10000 AND 100000
WITH CHECK OPTION;

INSERT INTO testsch.v1 values ('Программист', 1)
SELECT * FROM testsch.v1
SELECT * FROM DBO.STAFF

--3
CREATE TRIGGER DeleteTestschV1
ON DATABASE
FOR DROP_VIEW
AS
	IF (SELECT EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'NVARCHAR(2000)')) 
	NOT LIKE 'DROP VIEW testsch.%'
		BEGIN
			Print 'Trigger works!';
			ROLLBACK;
END

CREATE OR ALTER VIEW dbo.v1 AS
SELECT DUTIES, SALARY FROM STAFF
WHERE SALARY BETWEEN 10000 AND 100000
WITH CHECK OPTION;
DROP VIEW testsch.v1

--4
CREATE FUNCTION dbo.checkSalary(@min int, @max int)
RETURNS @SalaryTab TABLE (
ID int IDENTITY(1,1),
DUTIES varchar(50),
SALARY int,
COMM varchar(100))
AS
BEGIN
	INSERT INTO @SalaryTab(DUTIES, SALARY)
	SELECT DUTIES, SALARY FROM dbo.STAFF 
	WHERE SALARY BETWEEN @min AND @max
	ORDER BY SALARY DESC

	DECLARE @x int
	DECLARE @y int

	IF (SELECT COUNT(*) FROM @SalaryTab) > 1
	BEGIN
		SET @x = 1
		SET @y = @x + 1
		WHILE @y <= (SELECT COUNT(*) FROM @SalaryTab)
			BEGIN
				IF (SELECT SALARY FROM @SalaryTab WHERE ID = @y) * 1.5 < (SELECT SALARY FROM @SalaryTab WHERE ID = @x)
				BEGIN
					UPDATE @SalaryTab
					SET COMM = 'большой разрыв'
					WHERE SALARY = (SELECT SALARY FROM @SalaryTab WHERE ID = @y)
				END
				SET @y = @y + 1
				SET @x = @x + 1
			END
	END

	RETURN
END;

CREATE OR ALTER FUNCTION dbo.checkSalaryCursor(@min int, @max int)
RETURNS @SalaryTab TABLE (
ID int IDENTITY(1,1),
DUTIES varchar(50),
SALARY int,
COMM varchar(100))
AS
BEGIN

	DECLARE my_crs CURSOR FOR
	SELECT DUTIES,SALARY FROM dbo.STAFF
	WHERE SALARY BETWEEN @min AND @max
	ORDER BY SALARY DESC

	DECLARE @occupation varchar(255)
	DECLARE @sal int

	OPEN my_crs
	FETCH NEXT FROM my_crs
	INTO @occupation, @sal
	IF @min < @max and @min IS NOT NULL  and @max is not null 
	INSERT INTO @SalaryTab VALUES(@occupation, @sal, '')

	WHILE @@FETCH_STATUS = 0

	BEGIN
		DECLARE @salPrev int

		SET @salPrev = @sal

		FETCH NEXT FROM my_crs
		INTO @occupation, @sal

		IF (@salPrev > 1.5 * @sal)
			INSERT INTO @SalaryTab VALUES(@occupation, @sal, 'большой разрыв')
		ELSE
			INSERT INTO @SalaryTab VALUES(@occupation, @sal, '')
	END
	CLOSE my_crs
    DEALLOCATE my_crs
	RETURN
END;

select * from dbo.STAFF
SELECT * FROM dbo.checkSalary(0, 100000)
SELECT * FROM dbo.checkSalaryCursor(0, 100000)

