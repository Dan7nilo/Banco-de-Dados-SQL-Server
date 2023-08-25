CREATE DATABASE DBChapter
USE DBChapter

CREATE TABLE Livro
(
LivroId INT PRIMARY KEY,
Titulo VARCHAR(50),
QuantidadePaginas INT
)

CREATE TABLE Livros
(
LivroId INT PRIMARY KEY,
Titulo VARCHAR(50),
QuantidadePaginas INT,
Genero VARCHAR(15),
Autor VARCHAR(50),
)

INSERT INTO Livro VALUES (1,'A Arte Da Guerra',230);
SELECT * FROM Livro

INSERT INTO Livros VALUES (100001,'48 Leis Do Poder', 430, 'Autoajuda', 'Robert Greene');
INSERT INTO Livros VALUES ('A Arte Da Guerra',158,'Tratado','Sun Tzu');
INSERT INTO Livros VALUES (100002,'O Pr�ncipe', 95, 'N�o Fic��o', 'Nicolau Maquiavel');
INSERT INTO Livros VALUES (100003,'A Revolu��o dos Bichos', 152, 'S�tira Pol�tica', 'George Orwell');

SELECT * FROM Livros