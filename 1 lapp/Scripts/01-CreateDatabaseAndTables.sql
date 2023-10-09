USE master;
GO

IF DB_ID('NotBestDatabase') IS NOT NULL
DROP DATABASE NotBestDatabase;
GO

CREATE DATABASE NotBestDatabase
ON PRIMARY (NAME = NotBestDatabase_dat,
FILENAME = 'C:\NotBestDatabase\test.mdf'),
FILEGROUP ScndGroup (NAME = NotBestDatabase_dat1,
FILENAME = 'C:\NotBestDatabase\test1.mdf'),
(NAME = NotBestDatabase_dat2,
FILENAME = 'C:\NotBestDatabase\test2.mdf')
LOG ON (NAME = NotBestDatabase_log1,
FILENAME = 'C:\NotBestDatabase\Log1.ldf'),
(NAME = NotBestDatabase_log2,
FILENAME = 'C:\NotBestDatabase\Log2.ldf');
GO