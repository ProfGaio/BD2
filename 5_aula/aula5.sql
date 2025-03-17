-- Acessando o bd cadastro --
USE cadastro;
-- Consultando todos os dados de todas as tabelas --
SELECT * FROM estudante;
SELECT * FROM curso;
SELECT * FROM estudantecursa;
-- Exibindo nome e nacionalidade de estudantes brasileiros --
SELECT nome,nacionalidade FROM estudante
WHERE nacionalidade = "Brasil";

/*Consultar: 
1. Nome, profissão e nacionalidade para estudantes 
cuja profissão seja Programador.
*/
SELECT nome, profissao, nacionalidade from estudante
WHERE profissao = "Programador";

/*
2. Exibir o nome, total de aulas e ano, 
dos cursos criados a partir de 2016.
*/
SELECT nome, totaulas, ano from curso
WHERE ano >= 2016;

/*
3. Contar a quantidade de estudantes de Portugal.
*/
SELECT COUNT(nome) as "De Portugal" FROM estudante
WHERE nacionalidade = "Portugal";


/*
4. Consultar o nome, a descrição e a carga (horária)
dos cursos que contenham a palavra PHP.
*/
SELECT nome, descricao, carga from curso
WHERE nome like "PHP%";