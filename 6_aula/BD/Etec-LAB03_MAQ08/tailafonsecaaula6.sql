/* 1)Criar na tabela estudantes do banco de dados escolaTI,mais 2 atributos:
email e telefone*/

 /* cadastrar pelo menos 6 email e telefones ,para obviamente 6 estudantes escolhidos*/
 
 /*listar todos os dados de todos os estudantes para verificar as mudanças*/
 
 -- criação de atributo email na tabela estudante
 use cadastro;
 
ALTER TABLE  estudante ADD COLUMN email varchar (50);

ALTER TABLE  estudante ADD COLUMN telefone varchar (14); 
  
  SELECT * FROM estudante;
  UPDATE estudante set email = "danielmorais9@gmail.com"
  where id=1;
  
   UPDATE estudante set email = "talitanascimento9@gmail.com"
  where id=2;