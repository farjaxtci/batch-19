--create sample database 

create database sample1
go 

--  Verify if database is created or  not 
select name from sys.databases where name = 'sample1'
go 

--  display all  database 
select name from sys.databases; 
go 

-- Create database with param 

CREATE DATABASE [farjaxtci]
 ON  PRIMARY 
( NAME = N'farjaxtci', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.FTCIODW1A\MSSQL\DATA\farjaxtci.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'farjaxtci_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.FTCIODW1A\MSSQL\DATA\farjaxtci_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO







