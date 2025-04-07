CREATE DATABASE biblioteca;

CREATE TABLE usuarios (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (35) NOT NULL,
sobrenome VARCHAR (35) NOT NULL,
email VARCHAR (100) UNIQUE NOT NULL,
telefone VARCHAR (15)
);

CREATE TABLE livro (
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR (150) NOT NULL,
autor VARCHAR (100) NOT NULL,
ano_publicacao YEAR NOT NULL,
disponivel BOOLEAN DEFAULT TRUE
);

CREATE TABLE emprestimo (
id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
id_usuario INT FOREIGN KEY references usuario(id_usuario),
id_livro INT FOREIGN KEY references livro(id_livro),
data_emprestimo DATE, NOT NULL,
data_devolucao DATE, DEFAULT NULL,
FOREIGN KEY (id_usuario) references usuario (id_usuario),
FOREIGN KEY (id_livro) references livro (id_livro)
);

ALTER TABLE usuarios ADD endereco VARCHAR (200);

ALTER TABLE livro
MODIFY COLUMN disponivel TINYINT(1);

INSERT INTO usuarios (nome,sobrenome,email,telefone)
VALUES ('João Victor','Corrêa Martins','joaomartins@gmail,com','19 98765-2354'),
('Pedro','Henrique','pedrohenri@gmail.com','19 94785-2465'),
('José','Roberto','josero@gmail.com','19 96734-2365');

INSERT INTO livro (titulo,autor,ano_publicacao,disponivel)
VALUES ('Mundo dos Macacos','Jorge','1996','sim'),
('Cornelio o Boi','Gabriel','2002','sim'),
('Max o Pipeiro','Whasigton','2013','não');















