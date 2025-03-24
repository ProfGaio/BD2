-- Exercícios de Revisão

/* 1)Criar na tabela Estudante do banco de dados escolaTI, mais 2 atributos:
email e telefone*/

/*Cadastrar pelo menos 6 email e telefone para,obviamente,6 estudantes escolhidos*/

/*Listar os dados de todos os estudantes para verificar as mudanças realizadas a cima*/

-- Criação do atributo email na tabela estudante
USE cadastro;
ALTER TABLE estudante ADD COLUMN email varchar(50);

-- Criação do atributo telefone na tabela estudante
USE cadastro;
ALTER TABLE estudante ADD COLUMN telefone int(11);


-- Primeiro, verificando os estudantes cadastrados

SELECT * FROM  estudantes;

UPDATE estudante SET email="danimoraes@gmail.com"
where id=1;
