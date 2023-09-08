-- Criardatabase
CREATE DATABASE Blogs;
-- Selecionando banco de dados para inserir comandos.
USE Blogs;

--  Criando Tabelas
CREATE TABLE Artigos(
  Id INT auto_increment primary key,
  Titulo varchar(255) not null,
  Conteudo text,
  DataPublicacao date
);
CREATE TABLE Comentarios(
  Id INT auto_increment primary key,
  ID_Artigo INT,
  Autor varchar(255) not null,
  Texto text,
  DataComentario date,
  Foreign Key (ID_Artigo) REFERENCES Artigos(Id)
);

-- Inserir registros na tabela 

INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao)
VALUES
    ('Viagem à Amazônia', 'Uma aventura pela maior floresta tropical do mundo.', '2011-05-20'),
    ('A importância da preservação dos oceanos', 'Descubra por que devemos proteger nossos mares e oceanos.', '2019-09-08'),
    ('Os benefícios da ioga', 'A ioga como prática para melhorar a saúde física e mental.', '2016-03-10'),
    ('A revolução da robótica', 'O futuro da automação e como os robôs estão mudando o mundo.', '2023-11-15'),
    ('Receita de uma torta de maçã deliciosa', 'Aprenda a fazer uma torta de maçã incrível em casa.', '2014-08-25');

INSERT INTO Comentarios (ID_Artigo, Autor, Texto, DataComentario)
VALUES
    (1, 'Marcela Pereira', 'Adoraria fazer essa viagem!', '2023-06-05'),
    (1, 'Lucas Oliveira', 'A Amazônia é incrível, já estive lá!', '2023-06-12'),
    (2, 'Carolina Santos', 'Precisamos proteger nossos oceanos!', '2023-09-15'),
    (3, 'Ana Rodrigues', 'A ioga transformou minha vida.', '2022-07-30'),
    (4, 'Carlos Silva', 'Robôs estão mudando a indústria.', '2023-12-02');

-- Mostrando os dados inseridos 
SELECT * FROM Blogs.Comentarios;
SELECT * FROM Blogs.Artigos;

