-- Criar na tabela Estudante do banco de dados escolaTI, mais dois atribultos:

/* 1) Criar na tabela Estudante do banco de dados da escolaTI, mais dois atribultos
email e telefone */

/* Cadastrar pelo menos 6 emails e telefone para, obviamente, 6 escolhidos */

/* Listar os dados de todos os estudantes para verificar as mudanças realizads acima. */


-- Criação do tributo na tabela estudante
USE cadastro;
ALTER TABLE estudante ADD COLUMN email  varchar (50);


ALTER TABLE estudante ADD COLUMN telefone  varchar (14);

-- Criação do tributo telefone na tabela estudante 
-- Primeiro, verificando os estudantes cadastrados

SELECT  * FROM estudante;
UPDATE estudante SET email="danimoraes@gmail.com"
where id=1;