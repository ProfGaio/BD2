/*Exercicio 1*/
create database bibliotecaBD;

/*Exercicio 2*/
USE bibliotecaBD;

create table usuario (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(35) NOT NULL,
sobrenome VARCHAR(100) NOT NULL,
telefone VARCHAR(15)
);

create table  livro (
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao YEAR NOT NULL,
    disponivel BOOLEAN DEFAULT TRUE
);

create table emprestimo (
	id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    foreign key (id_usuario) references usuario(id_usuario),
    id_livro INT,
    foreign key (id_livro) references livro(id_livro),
    data_emprestimo date not null,
    data_devolucao date default null
);

/*Exercicio 3*/
alter table usuario add endereco VARCHAR(200);

alter table livro modify column disponivel TINYINT(1);

/*Exercicio 4*/
INSERT INTO usuario (nome, sobrenome, telefone, endereco)
values ('Marco Tadeu', 'Calcagnoto', '19 40028922', 'Rua dos Crisantemos'),
('Flavia Stefani', 'Zauli', '19 12332145', 'Rua das Palmas'),
('Lara', 'Santos', '19 9781509990', 'Rua dos Jasmins');

INSERT INTO livro (titulo, autor, ano_publicacao, disponivel)
values ('A pequena sereia', 'Irmãos Grim', 1990-09-21, 1),
('João e Maria', 'Irmãos Grim', 1960-03-01, 0),
('Turma da Monica', 'Mauricio de Souza', 2000-12-31, 1);

INSERT INTO emprestimo (id_usuario, id_livro, data_emprestimo, data_devolucao)
values (1, 2, "2025-03-21", "2025-03-31"),
(2, 1, "2025-03-31", "2025-04-04");

/*Exercicio 5*/
UPDATE usuario SET telefone = '19 12345678' WHERE nome = 'Marco Tadeu';

DELETE FROM livro WHERE titulo = 'João e Maria';

/*Exercicio 6*/
SELECT * FROM usuario;

SELECT * FROM livro WHERE disponivel = 1;

SELECT * FROM emprestimo;



