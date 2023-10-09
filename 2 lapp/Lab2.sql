use [BestDatabaseMorozov]
--Задание 2
select NAME from ORGANIZATION where NAME LIKE 'ООО%';

--Задание 3
create NONCLUSTERED index ix_Name on ORGANIZATION (NAME) 

--Задание 4
select NAME, CODREG from ORGANIZATION where NAME LIKE 'ООО%';

--Задание 5
create NONCLUSTERED	 index ix_Name1 on ORGANIZATION (NAME) include (CODREG);

--Задание 6_1 
SELECT [NAME], [NAMEREG] FROM dbo.ORGANIZATION INNER JOIN dbo.REFREG 
ON dbo.ORGANIZATION.CODREG=dbo.REFREG.CODREG 
WHERE NAMEREG='Московская область' 

--Задание 6_2 
SELECT [COD], [NAME], [NAMEREG] FROM dbo.ORGANIZATION INNER JOIN dbo.REFREG 
ON dbo.ORGANIZATION.CODREG=dbo.REFREG.CODREG 
WHERE NAMEREG='Московская область' 

--Задание 7  
CREATE VIEW MO_Org as 
SELECT [COD], [NAME], [NAMEREG] FROM dbo.ORGANIZATION INNER JOIN dbo.REFREG 
ON dbo.ORGANIZATION.CODREG=dbo.REFREG.CODREG 
WHERE NAMEREG='Московская область' 

SELECT * FROM [dbo].[MO_Org]

--Задание 8   
CREATE UNIQUE CLUSTERED INDEX ix_MO on [dbo].[MO_Org]([COD])

alter view MO_Org with schemabinding as SELECT [COD], [NAME], [NAMEREG] 
FROM dbo.ORGANIZATION INNER JOIN dbo.REFREG 
ON dbo.ORGANIZATION.CODREG=dbo.REFREG.CODREG 
WHERE NAMEREG='Московская область'

SELECT * FROM [dbo].[MO_Org]


