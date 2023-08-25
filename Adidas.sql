CREATE DATABASE Adidas
GO
USE Adidas

CREATE TABLE Tênis(
Id INT PRIMARY KEY IDENTITY,
Nome VARCHAR(15) NOT NULL,
Tamanho INT,
Disponivel BIT
)
GO

INSERT INTO Tênis (Nome, Tamanho, Disponivel)
VALUES ('Air Jordan', 42, 1)
GO

INSERT INTO Tênis (Nome, Tamanho, Disponivel)
VALUES ('Air Max', 41, 0)
GO

INSERT INTO Tênis (Nome, Tamanho, Disponivel)
VALUES ('Breaknet', 42, 0)
GO
 
 INSERT INTO Tênis (Nome, Tamanho, Disponivel)
VALUES ('Olimpikus', 40, 1)
GO

INSERT INTO Tênis (Nome, Tamanho, Disponivel)
VALUES ('Adidas Racer', 39, 1)
GO
INSERT INTO Tênis (Nome, Tamanho, Disponivel)
VALUES ('Adidas Skate', 42, 0)
GO
INSERT INTO Tênis (Nome, Tamanho, Disponivel)
VALUES ('Nike Renew', 42, 1)
GO
INSERT INTO Tênis (Nome, Tamanho, Disponivel)
VALUES ('NIke Zoom', 42, 0)
GO
INSERT INTO Tênis (Nome, Tamanho, Disponivel)
VALUES ('Adidas Tensaur', 36, 1)
GO

--------------------------------------------------------------------------
 UPDATE Tênis SET Nome = 'Adidas Breaknet' where id=4;
 --  DELETE FROM Tenis WHERE Id=1;

 SELECT Id, Nome, Tamanho, Disponivel FROM Tênis
 Go
 
 select * FROM Tênis
 select * from Adidas

 CREATE TABLE Usuarios(
 Id INT PRIMARY KEY IDENTITY,
 Email VARCHAR(100) NOT NULL UNIQUE,
 Senha VARCHAR(50) NOT NULL,
 Tipo CHAR(1) NOT NULL
 )
 GO 

 INSERT INTO Usuarios VALUES('email@sp.br','1234','0') 
  SELECT * FROM Usuarios WHERE email = 'email@sp.br' AND senha = '1234'