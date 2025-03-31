CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE tabela_usuario(
id_usuario INT PRIMARY KEY  AUTO_INCREMENT,
nome VARCHAR(35) NOT NULL,
sobrenome VARCHAR(35) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
telefone VARCHAR(15),
endereco VARCHAR(200)
 );
CREATE TABLE tabela_livro(
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(150) NOT NULL,
autor VARCHAR(100)  NOT NULL,
ano_publicacao YEAR NOT NULL,
disponivel BOOLEAN DEFAULT TRUE
 );
 CREATE TABLE tabela_emprestimo(
 id_emprestimo INT PRIMARY KEY  AUTO_INCREMENT,
 id_usuario INT,
 id_livro INT,
 data_emprestimo DATE NOT NULL,
 data_devolucao DATE DEFAULT NULL,
 foreign key (id_usuario) references tabela_usuario (id_usuario),
 foreign key (id_livro) references tabela_livro (id_livro)
 );
 ALTER TABLE tabela_usuario ADD coluna_endereco VARCHAR(200);
 ALTER TABLE tabela_livro modify disponivel tinyint;

INSERT INTO tabela_usuario (nome , sobrenome,email, telefone, endereco)
 values ('Maria', 'silva' , 'maria123@gmail.com 12345-4567,rua dos lirios) ( 'Clara', 30) ('Sophia',25);

 
INSERT INTO tabela_livro (coluna_titulo)
values ('É assim que acaba')( 'A ilha perdida' ) ( 'Alice no pais das maravilhas');

INSERT INTO tabela_emprestimo (data_emprestimo)
values ('25/03/2025') ( '30/03/2025)');
 
 
  