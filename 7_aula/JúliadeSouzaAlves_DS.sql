CREATE TABLE biblioteca;
USE biblioteca

 CREATE TABLE tabela_usuario(
 id_usuario INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(35), NOT NULL,
 sobrenome VARCHAR(35) NOT NULL
 email VARCHAR(100) UNIQUE NOT NULL,
 telefone VARCHAR(15),
 );


 CREATE TABLE tabela_livro( 
 id_livro INT PRIMARY KEY AUTO_INCREMENT,
 titulo VARCHAR(150) NOT NULL,
 autor VARCHAR(100) NOT NULL,
 ano_publicacao YEAR NOT NULL,
 disponivel BOOLEAN DEFAULT TRUE,
 );
 
 

 CREATE TABLE tabela_emprestimo(
 id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
 id_usuario INT,
 id_livro INT,
 data_emprestimo DATE NOT NULL,
 data_devolucao DATE DEFAULT NULL,
 foreign key (id_usuario) referencias usuario(id_usuario),
 foreign key (id_livro) referencias livro(id_livro),
 
 ALTER TABLE tabela_usuario ADD coluna_endereco VARCHAR (200);
 ALTER TABLE tabela_livro modify column diponivel TINYINT (1);
 
 INSERT INTO tabela_usuario (coluna_nome)
 values ("Mariane"), ("João"), ("Julia");
 
 INSERT INTO tabela_livro (coluna_titulo)
 values ("A ilha perdida"), ("Crepusculo"),("A culpa é das estrelas");
 
 INSERT INTO tabela_emprestimo (data_emprestimo)
 values ("A ilha perdida"), ("Crepusculo"),("A culpa é das estrelas");
 );
 