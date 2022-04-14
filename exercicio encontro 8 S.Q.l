--CREATE Table Exercicio(
--ID_Exercicio INT Not Null IDENTITY (1,1) Primary Key,
--Nome_Exercicio Varchar(Max) Not NUll,
--Idade_Exercicio INT NUll,
--Nota_Exercicio Decimal(3,2) Null,
--Situacao Bit NUll Default 1,
--DataInclusao DATETIME Null DEfault Getdate()
--)



--Select * From Exercicio
--Go

--Select *
--From  Exercicio
--Where Idade_Exercicio Between 14 And 18
--Go


--Select * 
--From Exercicio
--Where Idade_Exercicio > 18

--Modificar a coluna Nota_Exercicio Para Decimal (7,2)

--Alter Table Exercicio
--Alter Column
--Nota_Exercicio Decimal (7,2)

--Select * 
--From Exercicio
--Where Idade_Exercicio = 23

--UPDATE Exercicio
--Set Situacao = 0
--Where Idade_Exercicio = 18

--Exercicio 7


--Alter Table  Exercicio
--Add Estado_Atual Char(1)
--Go
--Exercicio 7

--UPDATE Exercicio
--Set Estado_Atual = 'R' 
--Where Nota_Exercicio < 6 

--UPDATE Exercicio 
--Set Estado_Atual='A'
--Where Nota_exercicio >6


----Alter Table Nota_Exercicio

--Alter Column 

Select * From Exercicio

