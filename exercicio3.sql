-- Criardatabase
CREATE DATABASE RH_EMPRESA;

-- Selecionando banco de dados para inserir comandos.
USE RH_EMPRESA;

-- Criando Tabelas
CREATE TABLE Departamentos(
  Id INT auto_increment primary key,
  NomeDepartamento varchar(255) not null
);

CREATE TABLE Funcionarios(
  Id INT auto_increment primary key,
  Nome varchar(255) not null,
  Cargo varchar(255) not null,
  Salario decimal(10,2) not null,
  ID_Departamento INT,
  Foreign Key (ID_Departamento) REFERENCES Departamentos(Id)
);

-- Inserir registros na tabela 
INSERT INTO Departamentos (NomeDepartamento)
VALUES
    ('Recursos Humanos'),
    ('Financeiro'),
    ('Marketing'),
    ('Tecnologia'),
    ('Logística');

INSERT INTO Funcionarios (Nome, Cargo, Salario, ID_Departamento)
VALUES
    ('Maria da Silva', 'Analista de RH', 6000.00, 1),
    ('Pedro Lima', 'Analista Financeiro', 5500.00, 2),
    ('Laura Mendes', 'Gerente de Marketing', 8000.00, 3),
    ('José Santos', 'Desenvolvedor Sênior', 9000.00, 4),
    ('Mariana Almeida', 'Gerente de Logística', 5500.00, 5);

-- Mostrando os dados inseridos 
SELECT * FROM RH_EMPRESA.Departamentos;
SELECT * FROM RH_EMPRESA.Funcionarios;