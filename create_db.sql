CREATE DATABASE tpcc
ON PRIMARY
(  NAME       = MSSQL_data_1,
   FILENAME   = 'd:\mssql\data\MSSQL16.MSSQLSERVER\MSSQL\DATA\tpcc.mdf',
   SIZE       = 32768MB,
   FILEGROWTH = 20)
LOG ON
(  NAME       = MSSQL_data_log,
   FILENAME   = 'd:\mssql\data\MSSQL16.MSSQLSERVER\MSSQL\DATA\tpcc_log.mdf',
   SIZE       = 20480MB,
   FILEGROWTH = 500MB,
   MAXSIZE    = 270000MB)
go