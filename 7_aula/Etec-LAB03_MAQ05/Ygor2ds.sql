CREATE DATABASE biblioteca;

CREATE TABLE usuarios (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(35)  NOT NULL,
 sobrenome VARCHAR(35)  NOT NULL,
 email VARCHAR(100) UNIQUE NOT NULL,
 telefone VARCHAR(15)
);

CREATE TABLE livros (
id_livro INT PRIMARY KEY AUTO_INCREMENT,
 titulo VARCHAR(150) NOT NULL,
 autor VARCHAR(100) NOT NULL,
 ano_publicacao YEAR NOT NULL,
 disponivel BOOLEAN DEFAULT TRUE
);

CREATE TABLE emprestimo (
id_emprestimo INT PRIMARY KEY  AUTO_INCREMENT,
 id_usuario INT FOREIGN KEY referenciando usuario(id_usuario)
 id_livro INT FOREIGN KEY referenciando livro(id_livro)
 data_emprestimo DATE, NOT NULL,
 data_devolucao DATE, DEFAULT NULL,
 foreign key(id_usuario) references usuario(id_usuario),
 foreign key(id_livro) references livro(id_livro))
);

ALTER TABLE usuarios ADD endereco VARCHAR(200);

ALTER TABLE livros
MODIFY COLUMN disponivel TINYINT(1);

INSERT INTO usuarios (nome, sobrenome, email, telefone) 
VALUES ('Ygor','Henrique','ygorhenriqueribeiro@gmail.com','19995560573'),
('Vitor','luis','vitorluisribeiro@gmail.com','1999675467098'),
('Pedro','lima','pedrolimalima@gmail.com','19995469873')

INSERT INTO livro (titulo, autor, ano_publicacao, disponivel) 
VALUES ('Jorgi o Macaco','Fernandes','2000','sim'),
('O Pequenino','Marcos','1990','sim'),
('Pipa Assasina','joao','2002','sim'),
















