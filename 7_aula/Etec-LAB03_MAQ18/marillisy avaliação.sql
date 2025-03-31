CREATE database biblioteca;
use database;

CREATE TABLE  usuario ( 
id_usuario INT PRIMARY KEY AUTO_INCREMENT
nome  (VARCHAR(35) NOT NULL)
sobrenome (VARCHAR(35) NOT NULL)
email (VARCHAR(100) UNIQUE NOT NULL)
telefone (VARCHAR(15))
endereco (VARCHAR(200))
);

CREATE TABLE livro (
id_livro ( INT PRIMARY KEY AUTO_INCREMENT)
titulo (VARCHAR(150) NOT NULL)
autor (VARCHAR(100) NOT NULL)
ano_publicacao (YEAR NOT NULL)
disponivel (TINYINT(1))

CREATE TABLE  emprestimo
 id_emprestimo (INT PRIMARY KEY AUTO_INCREMENT)
 id_usuario (INT FOREIGN KEY referenciando usuario(id_usuario))
 id_livro (INT FOREIGN KEY referenciando livro(id_livro))
 data_emprestimo (DATE NOT NULL)
 data_devolucao (DATE DEFAULT NULL)
 

 insert into tabela clientes
 (coluna_cliente_nome, coluna_endereco, Cidade,coluna_pais)
 VALUES
 'cliente 1: Joao ribeiro'
' Rua sebastiao joao (45)'
 'Sao Jose do Rio Pardo'
 'Brasil'
 
 'cliente 2: Batriz '
 'Rua queiroz francisca'
' Sao Jose do Rio Pardo'
 'Brasil'
 
 'cliente 3:francisca'
 'Rua Joao tenorio'
 'Sao Jose do Rio Pardo'
 'Brasil'
 
 
 
 
 