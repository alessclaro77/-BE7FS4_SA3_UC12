-- Criação do banco de dados
CREATE DATABASE TesteSegurancaBE7FS4;

--Colocar banco dados uso
USE TesteSegurancaBE7FS4;

--Criação de uma tabela para armazenar usuários
CREATE TABLE Usuarios
(
	Id INT PRIMARY KEY IDENTITY, --iDENTITY TORNA O CAMPO INCREMENTAL
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL
);
--CONSULTA TODOS OS USUÁRIOS DA TABELA
SELECT * FROM Usuarios;

--Cadastrar um usuário no banco de dados
INSERT INTO Usuarios VALUES ('email@email.com',1234);
INSERT INTO Usuarios VALUES ('alessclaro@hotmail.com','78459');

--hasheando dados em uma consulta
SELECT Id, Email, HASHBYTES('MD2',Senha) FROM Usuarios; -- HASSBYTES (DOS ARGUMENTOS - 1.ALGORITMO E 2. CAMPO A HASHEAR)

--hasheando dados e filtrando um usuário
SELECT Id, Email, HASHBYTES('MD2',Senha) FROM Usuarios WHERE Id = 2;

--hasheando dados e filtrando um usuário e  dando apelido coluna hasheada
SELECT Id, Email, HASHBYTES('MD2',Senha) AS 'senha hash' FROM Usuarios WHERE Id = 1;

--selecionando algoritmo MD4 (seguindo exemplo linhas x colunas)
SELECT Id, Email, HASHBYTES('MD4',Senha) AS 'senha hash' FROM Usuarios WHERE Id = 1;

--selecionando algoritmo MD5 (seguindo exemplo linhas x colunas)
SELECT Id, Email, HASHBYTES('MD5',Senha) AS 'senha hash' FROM Usuarios WHERE Id = 1;;

--selecionando algoritmo SHA (seguindo exemplo linhas x colunas)
SELECT Id, Email, HASHBYTES('SHA',Senha) AS 'senha hash' FROM Usuarios WHERE Id = 1;

--selecionando algoritmo SHA1(seguindo exemplo linhas x colunas)
SELECT Id, Email, HASHBYTES('SHA1',Senha) AS 'senha hash' FROM Usuarios WHERE Id = 1;

--selecionando algoritmo SHA2_256 (seguindo exemplo linhas x colunas)
SELECT Id, Email, HASHBYTES('SHA2_256',Senha) AS 'senha hash' FROM Usuarios WHERE Id = 1;

--selecionando algoritmo SHA2_512 (seguindo exemplo linhas x colunas)
SELECT Id, Email, HASHBYTES('SHA2_512',Senha) AS 'senha hash' FROM Usuarios WHERE Id = 1;