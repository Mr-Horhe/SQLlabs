--1.2
use master
SELECT TOP (1000) [groupid]
      ,[allocpolicy]
      ,[status]
      ,[groupname]
  FROM [model].[sys].[sysfilegroups]

  SELECT TOP (1000) [fileid]
      ,[groupid]
      ,[size]
      ,[maxsize]
      ,[growth]
      ,[status]
      ,[perf]
      ,[name]
      ,[filename]
  FROM [model].[sys].[sysfiles]

--1.3
create or alter view lab1_3 as
select fileid,f.groupid,size,maxsize,growth,f.status 'filestatus',perf,name,filename,
allocpolicy,g.status 'filegroupstatus',groupname
from sys.sysfiles f left outer join sys.sysfilegroups g
on f.groupid = g.groupid
select * from lab1_3

--2.1
create database VolkBookLabs

use VolkBookLabs

CREATE TABLE [dbo].[Book](
	[BookId] [int] Primary Key,
	[Author] [varchar](100) NULL,
	[Title] [varchar](255) NOT NULL,
	[Publisher] [varchar](50) NULL,
	[BookYear] [smallint] NULL)
	
Go

CREATE TABLE [dbo].[BookInLib](
	[LibID] [int] Primary Key,
	[BookID] [int] NOT NULL foreign key references Book(BookId),
	[StatusID] [int] NOT NULL foreign key references Book(BookId)
)
GO
CREATE TABLE [dbo].[BookStatus](
	[StatusID] [int] Primary Key,
	[StatusName] [varchar](50) NOT NULL,
) 
GO
select * from Book
select * from BookInLib
select * from BookStatus
--2.2
use VolkBookLabs
SELECT TOP (1000) [groupid]
      ,[allocpolicy]
      ,[status]
      ,[groupname]
  FROM [sys].[sysfilegroups]

  SELECT TOP (1000) [fileid]
      ,[groupid]
      ,[size]
      ,[maxsize]
      ,[growth]
      ,[status]
      ,[perf]
      ,[name]
      ,[filename]
  FROM [sys].[sysfiles]
--2.3
create or alter view lab2_3 as
select fileid,f.groupid,size,maxsize,growth,f.status 'filestatus',perf,name,filename,
allocpolicy,g.status 'filegroupstatus',groupname
from sys.sysfiles f left outer join sys.sysfilegroups g
on f.groupid = g.groupid

select * from lab2_3
--2.4
--создали бд и файловые группы
CREATE DATABASE VolkBookLabs2
ON PRIMARY (NAME = VolkBookLabs2_dat,
FILENAME = 'C:\VolkBookLabs2\test1.mdf'),
FILEGROUP ScndGroup (NAME = VolkBookLabs2_dat1,
FILENAME = 'C:\VolkBookLabs2\test2.mdf'),
FILEGROUP TrdGroup (NAME = VolkBookLabs3_dat1,
FILENAME = 'C:\VolkBookLabs2\test3.mdf')
LOG ON (NAME = VolkBookLabs2_log1,
FILENAME = 'C:\VolkBookLabs2\Log1.ldf')
;
GO
--изменили default файловую группу
alter database VolkBookLabs2
modify filegroup TrdGroup default
--добавили файлы во вторичных группы
alter database VolkBookLabs2
add file(NAME = VolkBookLabs2_dat2,FILENAME = 'C:\VolkBookLabs2\test4.mdf')
to filegroup "PRIMARY"
alter database VolkBookLabs2
add file(NAME = VolkBookLabs2_dat3,FILENAME = 'C:\VolkBookLabs2\test5.mdf')
to filegroup ScndGroup

use VolkBookLabs2
SELECT *
  FROM [sys].[sysfilegroups]

  SELECT *
  FROM [sys].[sysfiles]
--создаём таблицы
use VolkBookLabs2
CREATE TABLE [dbo].[Bachelors](
	[groupID] [int] Primary Key,
	FirstName varchar(30),
	LastName varchar(30)
	) on "PRIMARY"
CREATE TABLE [dbo].[Masters](
	[groupID] [int] Primary Key,
	FirstName varchar(30),
	LastName varchar(30)
	) on ScndGroup
CREATE TABLE [dbo].[Postgraduates](
	[groupID] [int] Primary Key,
	FirstName varchar(30),
	LastName varchar(30)
	) on ScndGroup
CREATE TABLE [dbo].[Professors](
	[groupID] [int] Primary Key,
	FirstName varchar(30),
	LastName varchar(30)
	)
GO
SELECT OBJECT_NAME(t.object_id) AS ObjectName, d.name AS FileGroup 
FROM sys.data_spaces d 
JOIN sys.indexes i on i.data_space_id = d.data_space_id
JOIN sys.tables t on t.object_id = i.object_id
WHERE i.index_id<2
AND t.type = 'U'
--2.5
use VolkBookLabs2
SELECT *
  FROM [sys].[sysfilegroups]

  SELECT *
  FROM [sys].[sysfiles]

create or alter view lab2_5 as
select fileid,f.groupid,size,maxsize,growth,f.status 'filestatus',perf,name,filename,
allocpolicy,g.status 'filegroupstatus',groupname
from sys.sysfiles f left outer join sys.sysfilegroups g
on f.groupid = g.groupid
select distinct * from lab2_5
--3.1
use VolkBookLabs
--увеличиваем размер файла в 2 раза
alter database VolkBookLabs
modify file(
NAME = VolkBookLabs,
size = 16MB);
select * from sys.sysfiles
--уменьшаем шаг приращения
alter database VolkBookLabs
modify file(
NAME = VolkBookLabs,
filegrowth = 4096%);
select * from sys.sysfiles
--создаём файловые группы и по два вторичных файла в них
use VolkBookLabs
alter database VolkBookLabs
add filegroup SecondGroup
alter database VolkBookLabs
add filegroup ThirdGroup
go
alter database VolkBookLabs
add file
(
NAME = VolkBookLabs_dat1,
FILENAME = 'C:\VolkBookLabs\test1.mdf'
),
(
NAME = VolkBookLabs_dat2,
FILENAME = 'C:\VolkBookLabs\test2.mdf'
)
to filegroup SecondGroup
alter database VolkBookLabs
add file
(
NAME = VolkBookLabs_dat3,
FILENAME = 'C:\VolkBookLabs\test3.mdf'
),
(
NAME = VolkBookLabs_dat4,
FILENAME = 'C:\VolkBookLabs\test4.mdf'
)
to filegroup ThirdGroup

SELECT *
  FROM [sys].[sysfilegroups]

  SELECT *
  FROM [sys].[sysfiles]
  --3.2
 create or alter view lab3_2 as
select fileid,f.groupid,size,maxsize,growth,f.status 'filestatus',perf,name,filename,
allocpolicy,g.status 'filegroupstatus',groupname
from sys.sysfiles f left outer join sys.sysfilegroups g
on f.groupid = g.groupid
go
select * from lab3_2
--3.3
use model
go
--увеличиваем размер файла в 2 раза
alter database model
modify file(
NAME = modeldev,
size = 16MB);
select * from sys.sysfiles
--создаём файловые группы(пытаемся)
alter database model
add filegroup SecondGroup
alter database model
add filegroup ThirdGroup
--3.4
CREATE DATABASE VolkBookLabs3
use VolkBookLabs3
SELECT *
  FROM [sys].[sysfilegroups]

  SELECT *
  FROM [sys].[sysfiles]

create or alter view lab3_4 as
select fileid,f.groupid,size,maxsize,growth,f.status 'filestatus',perf,name,filename,
allocpolicy,g.status 'filegroupstatus',groupname
from sys.sysfiles f left outer join sys.sysfilegroups g
on f.groupid = g.groupid
go
select * from lab3_4