CREATE OR ALTER FUNCTION dbo.checkSalaryCursor(@min int, @max int)
RETURNS @SalaryTab TABLE (
ID int IDENTITY(1,1),
DUTIES varchar(50),
SALARY int,
COMM varchar(100))
AS
BEGIN
	declare db_crs CURSOR FOR
	SELECT DUTIES, SALARY FROM STAFF
	WHERE SALARY BETWEEN @min and @max
	order by SALARY desc;

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