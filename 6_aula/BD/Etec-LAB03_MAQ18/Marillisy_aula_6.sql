/*Criar na  tabela Estudante do banco de dados escolaTI, mais 2 atributos:
email e telefone */

/*Cadastrar pelo menos 6 email e telefone para, obviamente , 6 estudantes escolhidos*/

/*Listar os dados de todos estudantes  para verificar as tarefas realizadas acima*/

 -- Criação do atributo email na tabela estudante
 USE cadastro;
 ALTER TABLE estudante ADD COLUMN email varchar(50);
 ALTER TABLE estudante ADD COLUMN telefone varchar(14);
 -- Criação do atributo telefone na tabela estudante
 -- Adicionando email para 6 estudantes a serem escolhidos
 -- Primeiro, verificando os estudantes cadastrados
 
 SELECT * FROM estudante;

UPDATE estudante SET email="danimoraes@gmail.com", telefone="35 988041319"
where id=1;

UPDATE estudante SET email="Anamendes@gmail.com", telefone="19 904167219"
where id=21;

UPDATE estudante SET email="delfinoandreia@gmail.com", telefone="21 987623405"
where id=11;

UPDATE estudante SET email="moniqueprecivalli@gmail.com", telefone="16 972735042"
where id=27;

UPDATE estudante SET email="ribeirokarine@gmail.com"
where id=31;

UPDATE estudante SET email="brunateles@gmail.com"
where id=45;


