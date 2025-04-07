-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 31-Mar-2025 às 17:45
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

DROP TABLE IF EXISTS `emprestimo`;
CREATE TABLE IF NOT EXISTS `emprestimo` (
  `idEmprestimo` int NOT NULL AUTO_INCREMENT,
  `dataEmprestimo` date NOT NULL,
  `dataDevolucao` date DEFAULT NULL,
  `idUsuario` int NOT NULL,
  `idLivro` int NOT NULL,
  PRIMARY KEY (`idEmprestimo`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idLivro` (`idLivro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

DROP TABLE IF EXISTS `livro`;
CREATE TABLE IF NOT EXISTS `livro` (
  `idLivro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `ano_publi` year NOT NULL,
  `disponivel` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idLivro`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`idLivro`, `titulo`, `autor`, `ano_publi`, `disponivel`) VALUES
(1, 'Leia um café e tome uma poesia', 'Regiane dos Reis', 2020, 5),
(2, 'O menino maluquinho', 'Charlie Brown', 2000, 10),
(3, 'One Piece', 'Oda', 1990, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuarios` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `sobrenome` varchar(35) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idUsuarios`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `usuario`, `sobrenome`, `email`, `telefone`, `endereco`) VALUES
(2, 'Henrique', 'Pablo', 'afonso@gmail.com', '191848392', 'Rua dos berimbau 123'),
(3, 'fafa', 'rei', 'picasso@gmail.com', '19194499', 'Rua da escada rolante 202'),
(4, 'pedro', 'flavio', 'xaulinmatadordeporco@gmail.com', '12433392', 'Rua dos juju 122');
COMMIT;

--
-- Consultando dados
--
select usuario from usuarios;

select titulo from livro where disponivel >= 1












/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
