CREATE DATABASE biblioteca;
USE biblioteca;

 CREATE TABLE tabela_usuarios (id_usuario INT PRIMARY KEY AUTO_INCREMENT ,
 nome VARCHAR (35) NOT NULL,
 sobrenome VARCHAR (35) NOT NULL,
 email VARCHAR (100) UNIQUE NOT NULL, 
 telefone VARCHAR (15)
 );
 
 CREATE TABLE tabela_livros ( id_livro INT PRIMARY KEY AUTO_INCREMENT,
 titulo VARCHAR(150) NOT NULL,
 autor VARCHAR(100) UNIQUE NOT NULL,
 ano_publicacao YEAR NOT NULL,
 disponivel BOOLEAN DEFAULT TRUE
 );
 
 CREATE TABLE tabela_emprestimo ( id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
 id_usuario INT NOT NULL,
 id_livro INT NOT NULL,
 data_emprestimo DATE NOT NULL,
 data_devolucao DATE DEFAULT NULL
 );
 
 ALTER TABLE tabela_usuarios ADD coluna_endereco VARCHAR (200);
 ALTER TABLE tabela_livros 
 MODIFY COLUMN disponivel TINYINT(1);
 
INSERT INTO tabela_usuarios (coluna_usuario_id, coluna_usuario_nome)
VALUES (KEMILLY, EMILY, DAVI);

INSERT INTO tabela_livros (coluna_titulo)
VALUES (a_culpa_e_das_estrelas,_crepusculo,_as_flores_que_nao_te_dei);

INSERT INTO tabela_emprestimo (coluna_emprestimo, coluna_usuario_id)
VALUES (a_culpa_e_das_estrelas,KEMILLY);
VALUES (crepusculo,DAVI);
VALUES (as_flores_que_nao_te_dei,EMILY);

INSERT INTO tabela_usuarios (coluna_telefone)
VALUES (KEMILLY (35 987551345), EMILY (35 988150430), DAVI (35 987285906));

ALTER TABLE tabela_livros
DROP COLUMN crepusculo;




 

	
    