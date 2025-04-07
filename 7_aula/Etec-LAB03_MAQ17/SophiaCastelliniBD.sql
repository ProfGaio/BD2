USE biblioteca;
CREATE TABLE usuario(
	IdUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(35) NOT NULL,
    Sobrenome VARCHAR(35) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15)
);

CREATE TABLE livro(
    IdLivro INT PRiMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL ,
    autor  VARCHAR(100) NOT NULL ,
    AnoPublicacao YEAR NOT NULL ,
    disponivel BOOLEAN DEFAULT TRUE
);

CREATE TABLE emprestismo( 
	IdEmprestimo INT PRIMARY KEY AUTO_INCREMENT,
    DataEmprestimo DATE NOT NULL,
    DataDevolução DATE NOT NULL,
	IdUsuario INT,
    IdLivro INT,
	FOREIGN KEY (IdUsuario) REFERENCES usuario(IdUsuario),
	FOREIGN KEY (IdLivro) REFERENCES	 livro(IdLivro)
);

ALTER TABLE usuario ADD endereco VARCHAR(200);

ALTER TABLE livro MODIFY COLUMN disponivel TINYINT;

INSERT INTO usuario	(nome, Sobrenome, email, telefone, endereco)
		VALUES(	'Julia', 'Silva', 'Silvajuh@gmail.com',	'199345-7811'),
        ('Sophia', 'castellini', 'castellinisophia71@gmail.com', 	'1999626-8892'),
        ('pedro', 'lima', 'pedrinho019@gmail.com', '1999626-8892');
        
INSERT INTO livro( titulo, autor, AnoPublicacao, disponivel)
		VALUES ('Percy jackson', 'Rebeca rowllins', 2000, 1),
		('Harry potter', 'J.k Rollin', 2001,0),
        ('A culpa é das estrelas', 'John Green', 2000,1);
        
INSERT INTO emprestismo(DataEmprestimo, DataDevolução)
	    VALUES (03/01/2025, 12/03/2025),
        (02/01/2025, 01/02/2025);
        
UPDATE usuario SET telefone = '9991895022'	WHERE IdUsuario = 1;

DELETE FROM livro WHERE IdLivro = 1;

SELECT * FROM usuario;
SELECT * FROM livro;
SELECT * FROM emprestismo;





    
        

        

