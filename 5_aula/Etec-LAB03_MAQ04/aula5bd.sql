
USE cadastro;

SELECT * FROM estudante;
SELECT * FROM curso;
SELECT * FROM estudantecursa;

SELECT nome,nacionalidade FROM estudante
WHERE nacionalidade = "Brasil";


SELECT nome,profissao,nacionalidade FROM estudante
WHERE profissao = "Programador";


SELECT COUNT(nome) as "De Portugal" FROM estudante
WHERE nacionalidade = "Portugal";
