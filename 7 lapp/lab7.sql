USE [Lab7]
GO
SELECT * FROM BOOK
SELECT * FROM BookInLib
SELECT * FROM BookStatus
select count(*) 'Book count' from Book 
select count(*) 'BookInLib count' from BookInLib
select count(*) 'BookStatus count' from BookStatus
--изменяем записи
update Book
set Author = 'Морозов С.В.'
where BookId = 1
update BookInLib
set StatusID = 2
where LibID = 1
update BookStatus
set StatusName = 'в архиве'
where StatusID = 1
--удаляем записи
delete from BookInLib
where LibID = 1
delete from BookInLib
where LibID = 2
--добавляем записи
insert into Book values
(1003,'Морозов С.В.', 'Диплом', 'Политех', 2023)
insert into Book values
(1004,'Морозов С.В.', 'Отчёт', 'Политех', 2019)
insert into Book values
(1005,'Морозов С.В.', 'Курсовая', 'Политех', 2020)
--все версии
SELECT * FROM BookInLib
FOR SYSTEM_TIME
all
ORDER BY ValidFrom;
SELECT count(*) 'BookInLib count' FROM BookInLib
FOR SYSTEM_TIME
all
--версии, актуальные на момент *
SELECT * FROM BookInLib
FOR SYSTEM_TIME
as of '2022-10-19 13:38'
ORDER BY ValidFrom;
--версии, актуальные от * до данного момента
SELECT * FROM BookInLib
--FOR SYSTEM_TIME 
--all
where ValidFrom <= '2022-10-19 13:38'
--and ValidTo = '9999-12-31 23:59:59.99'
ORDER BY ValidFrom;

--наибольшее количество изменений
create table #T (
BookID int, 
Count int
)
insert into #T
select BookID, count(BookID)
from BookInLib for
system_time all
group by BookID
select book.BookID,Author, Title,Publisher, BookYear,Count'Количество изменений' from
#T temp JOIN Book book on book.BookID = temp.BookID
where Count = (SELECT MAX(Count) FROM #T)
--наибольшее количество изменений без временной таблицы
select top 1 BookID, count(BookID) 'amount'
from BookInLib for
system_time all
group by BookID
order by 'amount' desc
--все запросы
SELECT * FROM BookInLib
FOR SYSTEM_TIME
as of '2022-10-19 13:45:51.71'
ORDER BY ValidFrom;

SELECT * FROM BookInLib
FOR SYSTEM_TIME
from '2022-10-19 13:36:08.06'
to '2022-10-19 13:36:08.07'
ORDER BY ValidFrom;

SELECT * FROM BookInLib
FOR SYSTEM_TIME
between '2022-10-19 13:36:08.06'
and '2022-10-19 13:36:08.07'
ORDER BY ValidFrom;

SELECT * FROM BookInLib
FOR SYSTEM_TIME
contained in ('2022-10-19 13:36:08.06','2022-10-19 13:45:51.71')
ORDER BY ValidFrom;

SELECT * FROM BookInLib
FOR SYSTEM_TIME
all
ORDER BY ValidFrom;
--создаём таблицу 
CREATE TABLE [dbo].[BookInLib1](
	[LibID] [int] Primary Key,
	[BookID] [int] NOT NULL,
	[StatusID] [int] NOT NULL
	--переделываем в темпоральную
	 , [ValidFrom] datetime2 (2) GENERATED ALWAYS AS ROW START
 , [ValidTo] datetime2 (2) GENERATED ALWAYS AS ROW END
 , PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo) 
 )
 WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.EmployeeHistory1));

 INSERT [dbo].[BookInLib1] ([LibID], [BookID], [StatusID]) VALUES (1, 2, 1)
INSERT [dbo].[BookInLib1] ([LibID], [BookID], [StatusID]) VALUES (2, 2, 3)
INSERT [dbo].[BookInLib1] ([LibID], [BookID], [StatusID]) VALUES (3, 3, 3)
INSERT [dbo].[BookInLib1] ([LibID], [BookID], [StatusID]) VALUES (10, 2, 1)
INSERT [dbo].[BookInLib1] ([LibID], [BookID], [StatusID]) VALUES (11, 1, 2)
INSERT [dbo].[BookInLib1] ([LibID], [BookID], [StatusID]) VALUES (12, 2, 1)
INSERT [dbo].[BookInLib1] ([LibID], [BookID], [StatusID]) VALUES (13, 1, 2)
INSERT [dbo].[BookInLib1] ([LibID], [BookID], [StatusID]) VALUES (14, 1, 1)
INSERT [dbo].[BookInLib1] ([LibID], [BookID], [StatusID]) VALUES (15, 1, 2)


SELECT * FROM BookInLib1
FOR SYSTEM_TIME
all
ORDER BY ValidFrom;
--пробуем удалить
drop table BookInLib1
--преобразуем из темпоральной в обычную
alter table BookInLib1
set (SYSTEM_VERSIONING = OFF)
--сравниваем
SELECT * FROM BookInLib1
SELECT * FROM BookInLib
select * from EmployeeHistory1
select * from EmployeeHistory