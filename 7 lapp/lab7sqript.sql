USE [Lab7]
GO

CREATE TABLE [dbo].[Book](
	[BookId] [int] Primary Key,
	[Author] [varchar](100) NULL,
	[Title] [varchar](255) NOT NULL,
	[Publisher] [varchar](50) NULL,
	[BookYear] [smallint] NULL)
	
Go


CREATE TABLE [dbo].[BookInLib](
	[LibID] [int] Primary Key,
	[BookID] [int] NOT NULL,
	[StatusID] [int] NOT NULL
	--переделываем в темпоральную
	 , [ValidFrom] datetime2 (2) GENERATED ALWAYS AS ROW START
 , [ValidTo] datetime2 (2) GENERATED ALWAYS AS ROW END
 , PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo) 
 )
 WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.EmployeeHistory));
GO
CREATE TABLE [dbo].[BookStatus](
	[StatusID] [int] Primary Key,
	[StatusName] [varchar](50) NOT NULL,
) 
GO


INSERT [dbo].[Book] ([BookId], [Author], [Title], [Publisher], [BookYear]) VALUES (1, N'', N'Англо-русский словарь', N'Литера', 2004)
INSERT [dbo].[Book] ([BookId], [Author], [Title], [Publisher], [BookYear]) VALUES (2, N'Дейт К.', N'Введение в системы баз данных.  8-е издание', N'Издательский дом "Вильямс"', 2005)
INSERT [dbo].[Book] ([BookId], [Author], [Title], [Publisher], [BookYear]) VALUES (3, N'Карпова Т.С.', N'Базы данных', N'Питер', 2001)
INSERT [dbo].[Book] ([BookId], [Author], [Title], [Publisher], [BookYear]) VALUES (4, N'Зеленин В.М.', N'Экспертные системы', N'Политехника', 1996)
INSERT [dbo].[Book] ([BookId], [Author], [Title], [Publisher], [BookYear]) VALUES (1002, N'Гук М.', N'Аппаратные средства IBM PC. Энциклопедия ', N'Питер', 2008)

INSERT [dbo].[BookInLib] ([LibID], [BookID], [StatusID]) VALUES (1, 2, 1)
INSERT [dbo].[BookInLib] ([LibID], [BookID], [StatusID]) VALUES (2, 2, 3)
INSERT [dbo].[BookInLib] ([LibID], [BookID], [StatusID]) VALUES (3, 3, 3)
INSERT [dbo].[BookInLib] ([LibID], [BookID], [StatusID]) VALUES (10, 2, 1)
INSERT [dbo].[BookInLib] ([LibID], [BookID], [StatusID]) VALUES (11, 1, 2)
INSERT [dbo].[BookInLib] ([LibID], [BookID], [StatusID]) VALUES (12, 2, 1)
INSERT [dbo].[BookInLib] ([LibID], [BookID], [StatusID]) VALUES (13, 1, 2)
INSERT [dbo].[BookInLib] ([LibID], [BookID], [StatusID]) VALUES (14, 1, 1)
INSERT [dbo].[BookInLib] ([LibID], [BookID], [StatusID]) VALUES (15, 1, 2)


INSERT [dbo].[BookStatus] ([StatusID], [StatusName]) VALUES (1, N'в библиотеке')
INSERT [dbo].[BookStatus] ([StatusID], [StatusName]) VALUES (2, N'в учебном классе')
INSERT [dbo].[BookStatus] ([StatusID], [StatusName]) VALUES (3, N'выдана')

GO

ALTER TABLE [dbo].[BookInLib]  WITH CHECK ADD CONSTRAINT [FK_BookInLib_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookId])
GO
ALTER TABLE [dbo].[BookInLib]  WITH CHECK ADD  CONSTRAINT [FK_BookInLib_BookStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[BookStatus] ([StatusID])
GO


