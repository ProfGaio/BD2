/*Criar na tabela estudante banco de dados escolaTI, mais 2 atributos:
email e telefone*/

/*Cadastrar pelo menos 6 email e telefone para, obviamente, 6 estudantes escolhidos*/

/*listar os dados de todos os estudantes para verificar as mudanças realizadas acima*/

USE cadastro;
ALTER TABLE estudante ADD COLUMN email varchar (50);
ALTER TABLE estudante ADD COLUMN telefone varchar(14);

SELECT * FROM estudante;

UPDATE estudante SET email="danimoraes@gmail.com", telefone="(11)90876-5463"
where id=1;

UPDATE estudante SET email="talitanas@gmail.com", telefone="(19)95467-5403"
where id=2;


UPDATE estudante SET email="gabemersinho@gmail.com", telefone="(11)97151-6163"
where id=3;



UPDATE estudante SET email="luca01ss@gmail.com", telefone="(11)90978-1235"
where id=4;


UPDATE estudante SET email="martinsleiloca@gmail.com", telefone="(11)95678-4093"
where id=5;


UPDATE estudante SET email="letineves019@gmail.com", telefone="(11)93456-9963"
where id=6;
