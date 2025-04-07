CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

CREATE TABLE IF NOT EXISTS tabela_usuario(
id_usuario INT PRIMARY KEY  AUTO_INCREMENT,
nome VARCHAR(35) NOT NULL,
sobrenome VARCHAR(35) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
telefone VARCHAR(15),
endereco VARCHAR(200)
 );
CREATE TABLE  IF NOT EXISTS tabela_livro(
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(150) NOT NULL,
autor VARCHAR(100)  NOT NULL,
ano_publicacao YEAR NOT NULL,
disponivel BOOLEAN DEFAULT TRUE
 );
 CREATE TABLE IF NOT EXISTS tabela_emprestimo(
 id_emprestimo INT PRIMARY KEY  AUTO_INCREMENT,
 id_usuario INT,
 id_livro INT,
 data_emprestimo DATE NOT NULL,
 data_devolucao DATE DEFAULT NULL,
 foreign key (id_usuario) references tabela_usuario(id_usuario),
 foreign key (id_livro) references tabela_livro(id_livro)
 );
 ALTER TABLE tabela_usuario ADD coluna_endereco VARCHAR(200);
 ALTER TABLE tabela_livro modify disponivel tinyint;

INSERT INTO tabela_usuario (nome , sobrenome,email )
VALUES ('Maria', 'silva' , 'maria123@gmail.com'), ( 'Clara', 'Nunes','clara456@gmail.com'), ('Sophia','Teixeira', ' sophia789@gmail.com');

 
INSERT INTO tabela_livro (coluna_livro)
values ('É assim que acaba', 'Colleen Hoover', '2018'),( 'A ilha perdida','Maria José Dupré', '1944'),( 'Alice no pais das maravilhas',' Charles Lutwidge', '1865');

INSERT INTO tabela_emprestimo (data_emprestimo)
values ('2025-3-14');
 
 UPDATE tabela_usuario SET email='silva543@gmail.com' WHERE id_usuario=1;
 
 DELETE FROM tabela_livro WHERE id='A ilha perdida';
 
 SELECT * FROM tabela_usuario; 
  SELECT * FROM tabela_livro; 
  