-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 22-Abr-2021 às 21:32
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola_ead`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao_curta` varchar(100) NOT NULL,
  `conteudo` longtext NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `titulo`, `descricao_curta`, `conteudo`, `data_cadastro`, `preco`, `imagem`) VALUES
(3, 'PHP Essencial', 'Este Ã© um Ã³timo curso sobre PHP', 'Aula  1\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iel_hJ5hbJ8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\nAula 2\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iel_hJ5hbJ8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\nAula 3\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iel_hJ5hbJ8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-21 15:36:04', '15.00', 'upload/6032a8149ce06.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorio`
--

DROP TABLE IF EXISTS `relatorio`;
CREATE TABLE IF NOT EXISTS `relatorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `data_compra` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `relatorio`
--

INSERT INTO `relatorio` (`id`, `id_usuario`, `id_curso`, `valor`, `data_compra`) VALUES
(2, 2, 3, '15', '2021-02-21 16:02:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(256) NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `creditos` decimal(10,2) DEFAULT '0.00',
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `data_cadastro`, `creditos`, `admin`) VALUES
(2, 'Jose da Silva', '56f017c2f9@firemailbox.club', '$2y$10$benV9ue4CO2OFmAdgIKpQevy8yKPGJ5dfsUkVW7iFeh69Otc.T7Ym', '2021-02-21 15:01:26', '585.00', 0),
(3, 'ADMIN', 'admin@gmail.com', '$2y$10$75bPq8RHzJU4NTFY4LRWy.B.AtOOOx3QV7UbyvAQf/9tj.4H8W9.q', '2021-02-21 15:01:26', '35.00', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
