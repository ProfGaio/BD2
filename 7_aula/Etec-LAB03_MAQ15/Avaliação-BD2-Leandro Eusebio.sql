
CREATE DATABASE IF NOT EXISTS biblioteca;
CREATE TABLE tabela_usuarios (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(35) NOT NULL,
    sobrenome VARCHAR(35) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15)
);

CREATE TABLE tabela_livros (
    id_livros INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao YEAR NOT NULL,
    disponivel BOOLEAN DEFAULT TRUE
);

CREATE TABLE tabela_emprestimos (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_livro INT,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE DEFAULT NULL,
    FOREIGN KEY (id_usuario) REFERENCES tabela_usuarios(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES tabela_livros(id_livros)
);

SELECT * FROM tabela_usuarios;

ALTER TABLE tabela_usuarios ADD endereco VARCHAR(200);

SELECT * FROM tabela_livros;

ALTER TABLE tabela_livros
MODIFY COLUMN disponivel TINYINT(1);

INSERT INTO tabela_usuarios (id_usuario, nome, sobrenome, email, telefone, endereco)
VALUES (1,'Leandro','Eusebio','teste@teste','199999','Oliveiras');

INSERT INTO tabela_usuarios (id_usuario, nome, sobrenome, email, telefone, endereco)
VALUES (2,'Lucas','Augusto','Lucas@teste','188888','Rio');

INSERT INTO tabela_usuarios (id_usuario, nome, sobrenome, email, telefone, endereco)
VALUES (3,'Ryan','Portioli','Ryan@teste','1777777','Palmares');

INSERT INTO tabela_livros (id_livros,titulo,autor,ano_publicacao,disponivel)
VALUES (1, "Lua", "Luan", 1980, 1);

INSERT INTO tabela_livros (id_livros,titulo,autor,ano_publicacao,disponivel)
VALUES (2, "Sol", "Luana", 1990, 1);

INSERT INTO tabela_livros (id_livros,titulo,autor,ano_publicacao,disponivel)
VALUES (3, "Ceu", "Leo", 1970, 1);

INSERT INTO tabela_emprestimos (id_emprestimo, id_usuario, id_livro, data_emprestimo, data_devolucao)
VALUES (1,'2','3',1990-09-12,1990-10-13);

INSERT INTO tabela_emprestimos (id_emprestimo, id_usuario, id_livro, data_emprestimo, data_devolucao)
VALUES (4,5,6,1980-07-12,1990-11-13);

INSERT INTO tabela_emprestimos (id_emprestimo, id_usuario, id_livro, data_emprestimo, data_devolucao)
VALUES (7,8,9,2000-07-12,2001-10-13);

UPDATE tabela_usuarios SET telefone=199999 WHERE nome="Leandro Eusebio";
