CREATE DATABASE biblioteca_;
USE biblioteca_;

CREATE TABLE tabela_usuarios(
id_usuarios INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (35) NOT NULL,
email VARCHAR (100) UNIQUE NOT NULL,
telefone VARCHAR (15)
);

CREATE TABLE tabela_livro(
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR (150) NOT NULL,
autor VARCHAR (100) NOT NULL,
ano_publicacao YEAR NOT NULL,
disponivel BOOLEAN DEFAULT TRUE
);

CREATE TABLE tabela_emprestimo(
id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL,
id_livro INT NOT NULL,
data_emprestimo DATE NOT NULL,
data_devolucao DATE DEFAULT NULL,
FOREIGN KEY(id_usuario) references usuario(id_usuario),
FOREIGN KEY(id_livro) references livro(id_livro)
);

ALTER TABLE tabela_usuarios ADD coluna_endereco VARCHAR(200);
ALTER TABLE tabela_livros
MODIFY COLUMN disponivel TINYINT(1);

INSERT INTO tabela_usuarios(coluna_usuario_id, coluna_usuario_nome)
	VALUES( Julia , Santiego, Pedro);
    
INSERT INTO tabela_livro (coluna_livro_titulo)
VALUES( Harry_Potter, Vericity, Corrupt);

INSERT INTO tabela_emprestimo(data_emprestimo)
VALUES ('25/03/2025', '28/04/2025');

INSERT INTO tabela_usuarios(coluna_telefone)
VALUES (Santiego, "(19)96754-5675");

ALTER TABLE tabela_livro DROP COLUMN coluna_harry_potter;





