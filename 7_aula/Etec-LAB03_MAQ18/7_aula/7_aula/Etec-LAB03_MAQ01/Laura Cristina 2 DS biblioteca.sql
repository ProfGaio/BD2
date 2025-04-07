CREATE DATABASE biblioteca;
USE biblioteca;
CREATE TABLE tabela_usuarios(
id INT PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
sobrenome VARCHAR(100) NOT NULL,
email VARCHAR(150) NOT NULL UNIQUE,
telefone VARCHAR(20) NOT NULL
);

CREATE TABLE tabela_livro(
id_livro INT PRIMARY KEY,
titulo VARCHAR(150) NOT NULL,
autor VARCHAR(100) NOT NULL,
ano_publicacao YEAR NOT NULL,
disponivel YEAR NOT NULL
);

CREATE TABLE tabela_emprestimo(
id_emprestimo INT PRIMARY KEY,
id_usuario INT
id_livro INT,
data_emprestimo DATE NOT NULL,
data_devolucao DATE DEFAULT NULL,


