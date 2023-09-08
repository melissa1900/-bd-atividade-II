-- Criardatabase
CREATE DATABASE Mercado;
-- Selecionando banco de dados para inserir comandos.
USE Mercado;

CREATE TABLE Clientes (
  Id INT auto_increment primary key,
  Nome varchar(255) not null,
  Email varchar(255) not null unique,
  Telefone varchar(22) not null
);
 
CREATE TABLE Pedidos (
     Id Int auto_increment primary key,
	 Id_Cliente INT,
     DataPedido date,
     ValorTotal decimal(10,2),
	 Foreign Key (Id_Cliente) REFERENCES Clientes(Id)
);

-- Inserir registros na tabela 
INSERT INTO Clientes(Nome, Email, Telefone)
VALUES
    ('João da Silva', 'joao.silva@email.com', '7199999-1111'),
    ('Ana Paula Pereira', 'ana.paula@email.com', '7198888-2222'),
    ('Pedro Henrique Almeida', 'pedro.almeida@email.com', '7197777-3333'),
    ('Carla Santos', 'carla.santos@email.com', '7196666-4444'),
    ('Luiz Roberto Souza', 'luiz.souza@email.com', '7195555-5555');

-- Mostrando os dados inseridos 
SELECT * FROM Empresa.Clientes;

INSERT INTO Pedidos (Id_Cliente, DataPedido, ValorTotal)
VALUES
    (1, '2023-09-26', 45.75),
    (2, '2023-10-26', 60.20),
    (3, '2023-11-26', 30.50),
    (4, '2023-12-26', 75.30),
    (5, '2023-08-26', 95.00);
    
-- Mostrando os dados inseridos 
SELECT * FROM Mercado.Pedidos;
SELECT * FROM Mercado.Clientes;