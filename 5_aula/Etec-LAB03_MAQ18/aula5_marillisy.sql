-- ACESSANDO O BD CADASTRO--
USE cadastro;

-- CONSULTANDO OS DADOS DE TODAS AS TABELAS--
SELECT * FROM estudante;
SELECT * FROM curso;
SELECT * FROM estudantecursa;

-- EXIBINDO NOME E NACIONALIDADE BRASILEIRA --
SELECT nome, nacionalidade FROM estudante
WHERE nacionalidade = "Basil";


/*-- CONSULTAR 
-- 1. NOME, PROFISSÃO E NACIONALIDADE PARA ESTUDANTES CUJA PROFISSÃO SEJA PROGRAMADOR.
-- 2. EXIBIR O NOME, TOTAL DE AULAS E ANO DOS CURSOS CRIADOS A PARTIR DE 2016.
-- 3. CONTAR A QUANTIDADE DE ESTUDANTES DE PORTUGAL.
-- 4. CONSULTAR O NOME, A DESCRIÇÃO E CARGA (HORÁRIA) DOS CURSOS QUE CONTENHAM A PALAVRA PHP.
*/

SELECT nome, profissao, nacionalidade FROM estudante
WHERE profissao = "programador";

SELECT nome, totaulas, ano FROM ano
WHERE >= 2016;


SELECT COUNT (nome)as "De Portugal" FROM estudante
WHERE nacionalidade = "Portugal";


SELECT nome, descrição, carga FROM curso
WHERE nome like  "%PHP%";



