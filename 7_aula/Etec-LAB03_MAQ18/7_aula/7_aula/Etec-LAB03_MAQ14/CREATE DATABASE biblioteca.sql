CREATE DATABASE biblioteca

use biblioteca;

	/*Tabela 1*/  
CREATE TABLE tabela_usuarios (
    id_usuario INT, PRIMARY KEY 
    nome (VARCHAR(35), NOT NULL
    sobrenome (VARCHAR(35), NOT NULL
    email (VARCHAR(100), UNIQUE, NOT NULL
    telefone (VARCHAR(15),
    endereco (VARCHAR(200))
    
    
);
	/*Tabela 2*/        
               
CREATE TABLE tabela_livros (
	id_livros INT PRIMARY KEY,
	titulo VARCHAR(150) NOT NULL,
	autor VARCHAR(100) NOT NULL,
	ano_publicacao YEAR NOT NULL,
	disponivel TINYINT(1) DEFAULT TRUE
    
);

           /*Tabela 3*/
CREATE TABLE tabela_emprestimos (
	emprestimo INT, PRIMARY KEY,
	usuario INT,
	livro INT,
	data_emprestimo DATE, NOT NULL
	data_devolucao DATE, DEFAULT NULL
    
   FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
   FOREIGN KEY (id_livro REFERENCES livro(id_livro))
    
);

           /*Exercicio 4*/
           
INSERT INTO usuario (nome, sobrenome, telefone, endereco)
values('Roberto', 'Pereira', '19 99860-8578', 'Rua Ronaldo');

INSERT INTO usuario (nome, sobrenome, telefone, endereco)           
values('Vitor', 'Gomes', '19 99250-8348', 'Rua Guerra');
           
INSERT INTO usuario (nome, sobrenome, telefone, endereco)           
values('Joao', 'Deleni', '19 95240-8213', 'Rua Vale do Amor');           
           

INSERT INTO livros (titulo, autor, ano_publicacao, disponivel)           
values('Joao e Maria', 'Irmãos Grimm', "1994-08-02", 1 );
           
INSERT INTO livros (titulo, autor, ano_publicacao, disponivel)    
values('O pequeno principe', 'Joao', "1988-03-05", 2 );
           
INSERT INTO livros (titulo, autor, ano_publicacao, disponivel)    
values('Chapeuzinho Vermelho', 'Irmãos Grimm', "1990-05-03", 3 );

INSERT INTO emprestimos (emprestimo, usuario, livro, data_emprestimo, data_devolucao)    
values(1, 2, "2025-05-03","2025-6-03");
           
INSERT INTO emprestimos (emprestimo, usuario, livro, data_emprestimo, data_devolucao)    
values(1, 2, "2025-06-03","2025-07-02");
           
  /*Exercicio 5*/  
  UPDATE usuario SET telefone = '19 2145321' WHERE nome = 'Roberto Pereira';
           
  DELETE FROM livro WHERE titulo ='Chapeuzinho Vermelho';
     
  /*Exercicio 6*/
  SELECT * FROM usuario;