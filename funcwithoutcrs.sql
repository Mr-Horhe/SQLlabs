create function dbo.checkSalary(@min int, @max int)
returns @SalaryTab table (
ID int identity(1,1),
DUTIES VARCHAR(50),
SALARY INT,
COMM VARCHAR(100))
AS
BEGIN
	INSERT INTO @SalaryTab(DUTIES, SALARY)
	SELECT DUTIES, SALARY FROM STAFF
	WHERE SALARY BETWEEN @min AND @max
	ORDER BY SALARY DESC;

	DECLARE @x int;
	declare @y int;

	if (select count(*) from @SalaryTab) > 1
	begin
		set @x = 1;
		set @y = @x + 1;
		while (@y <= (select count(*) from @SalaryTab))
		begin
			if (select salary from @SalaryTab where ID=@y)*1.5 < (select salary from @SalaryTab where ID=@x)
			begin
				update @SalaryTab
				set COMM = 'большой разрыв'
				where id=@y;
			end
			set @y=@y+1;
			set @x=@x+1;
		end
	end
	return
end;


