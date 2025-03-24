-- Exercícios de Revisão

/* 1) Criar na tabela Estudante do banco de dados cadastro, mais 2 atributos: 
 email e telefone */
 
/* Cadastrar pelo menos 6 email e telefone para, obviamente, 6 estudantes escolhidos */

/* Listar os dados de todos os estudantes para verificar as mudanças realizadas acima.*/

-- Criação do atributo email na tabela estudante
USE cadastro;
ALTER TABLE estudante ADD COLUMN email varchar(50);
-- Criação do atributo telefone na tabela estudante


-- Adicionando email para 6 estudantes a serem escolhidos
-- Primeiro, verificando os estudantes cadastrados

SELECT * FROM estudante;

UPDATE estudante SET email="danimoraes@gmail.com"
where id=1;


