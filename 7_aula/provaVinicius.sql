CREATE DATABASE biblioteca;

CREATE TABLE usuarios (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(35) NOT NULL,
sobrenome VARCHAR(35) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
telefone VARCHAR(15)
);

CREATE TABLE livro (
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(150) NOT NULL,
autor VARCHAR(100) NOT NULL,
ano_publicacao YEAR NOT NULL,
disponivel BOOLEAN DEFAULT TRUE
);

CREATE TABLE emprestimo ( 
id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
id_usuario INT FOREIGN KEY referenciando usuario id_usuario,
id_livro INT FOREIGN KEY referenciando livro id_livro,
data_emprestimo DATE NOT NULL,
data_devolucao DATE DEFAULT NULL
);

alter table usuarios add endereco VARCHAR(200);
ALTER table livro
modify column disponivel TINYINT(1);
 
INSERT INTO usuarios (nome, sobrenome, email, telefone)
VALUES ('Vinicius', 'Jofre', 'jofre@gmail.com', '19993794104'),
('Joao Luis', 'da silva', 'silva@gmail.com', '19997910888'),
('Pedro', 'Lemes', 'lemes@gmail.com', '19986120139');

INSERT INTO livro (titulo, autor, ano_publicacao, disponivel)
VALUES ('A Cabana', 'eu', '1990', 'sim'),
('A Garota do Lago', 'lemes', '2021', 'nao'),
('O pequeno principe', 'joao luis', '3001a.c.', 'nao');

INSERT INTO emprestimo (