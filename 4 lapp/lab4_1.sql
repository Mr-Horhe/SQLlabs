use [BestDatabaseMorozov]

CREATE TABLE T1 (Id INT PRIMARY KEY,
[Name] VARCHAR(50) NOT NULL,
[Age] INT);

CREATE OR ALTER VIEW V1 AS
SELECT [Name], [Age] FROM T1;



CREATE or alter TRIGGER myTrigger on V1
INSTEAD OF INSERT
AS BEGIN

    DECLARE @Name varchar(50)
    DECLARE @Age int

    DECLARE my_crs CURSOR FOR
    SELECT * FROM INSERTed
	 DECLARE @id int ;
        set @id = (SELECT MAX(ID) FROM T1);
	if @id is null 
		begin
          set @id = 0;
       end;
   

    OPEN my_crs
    FETCH NEXT FROM my_crs INTO @Name, @Age
    WHILE @@FETCH_STATUS = 0
    BEGIN

       set @id = @id+1;
        INSERT INTO dbo.T1(ID, Name, Age)
        VALUES(((@id)),
        @Name, @Age)
        FETCH NEXT FROM my_crs INTO @Name, @Age
    END
    CLOSE my_crs
    DEALLOCATE my_crs
END

INSERT INTO V1 (Name, Age)
VALUES ('Михаил',20)

INSERT INTO V1 (Name, Age)
VALUES ('Максим',23), ('Мария',28), ('Анастасия',18)


SELECT * FROM V1
SELECT * FROM T1
delete from T1

