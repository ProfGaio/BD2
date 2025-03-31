CREATE DATABASE biblioteca;
USE biblioteca;
CREATE TABLE tabela_usuarios (
    id int auto_increment PRIMARY KEY,
	nome VARCHAR(35) NOT NULL,
	sobrenome VARCHAR(35) NOT NULL,
	email VARCHAR(100) UNIQUE, NOT NULL,
	telefone VARCHAR(15),
);

CREATE TABLE tabela_livro (
    id_livro INT, PRIMARY KEY, AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
	ano_publicacao YEAR, NOT NULL,
    disponivel BOOLEAN, DEFAULT TRUE
     foreign key (id_livr) references livro (id_livro)
);

CREATE TABLE tabela_emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_livro INT, 
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE DEFAULT NULL,
    foreign key (id_usuario) references usuario (id_usuario)
);
ALTER TABLE tabela_usuarios ADD coluna_email VARCHAR(200);
ALTER TABLE tabela_livro
MODIFY COLUMN disponivel TINYINT(1);

INSERT INTO usuarios (nome,sobrenome,email,telefone)
VALUES ('Taila' 'fonsecasouza','tailafon2gmail.com' , '1998235561'),
       ('jose' 'das dores','josedasdores90gmail.com' , '19982890761'),
       ('Divino' 'tailasilva','divinosilva78gmail.com' ,'1998235561')
       
       
