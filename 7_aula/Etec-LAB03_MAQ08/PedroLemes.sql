CREATE DATABASE blibioteca;

CREATE TABLE  usuarios (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome  VARCHAR (35), NOT NULL,
sobrenome (VARCHAR(35), NOT NULL,
email (VARCHAR(100)), UNIQUE, NOT NULL,
telefone (VARCHAR(15))
);
 
 
 CREATE TABLE tabela_livro (
 id_livro (INT, PRIMARY KEY, AUTO_INCREMENT)
 titulo (VARCHAR(150), NOT NULL)
 autor(VARCHAR(100), NOT NULL)
 ano_publicacao(YEAR, NOT NULL)
 disponivel(BOOLEAN, DEFAULT TRUE)
 );
 
 
 CREATE TABLE tabela_emprestimo (
 id_emprestimo(INT, PRIMARY KEY, AUTO_INCREMENT)
 id_usuario(INT, FOREIGN KEY, referenciado
 usuario(id_usuario))
 id_livro(INT FOREIGN KEY referenciado livro(id_livro))
 data_emprestimo(DATE, DEFAULT NULL)
 data_evolucao(DATE, DEFAULT NULL)
 );
 
 
 
 
 
 

