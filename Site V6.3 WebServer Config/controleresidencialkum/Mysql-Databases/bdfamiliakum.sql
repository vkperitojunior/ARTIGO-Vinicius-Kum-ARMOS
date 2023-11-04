-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/10/2023 às 23:14
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdfamiliakum`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `id_endereco` int(11) NOT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(40) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `uf` varchar(3) DEFAULT NULL,
  `pais` varchar(30) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `enderecos`
--

INSERT INTO `enderecos` (`id_endereco`, `cep`, `rua`, `bairro`, `numero`, `cidade`, `uf`, `pais`, `complemento`) VALUES
(1, '13223100', 'Nazareno spinucci', 'Jardim Promeca', 685, 'Várzea Paulista', 'sp', 'brasil', 'casa 02'),
(2, '13205190', 'Antonio Tacildo Vion', 'Jardim Santa Gertrudes', 297, 'Jundiaí', 'sp', 'brasil', 'casa 02'),
(3, '13205190', 'Antonio Tacildo Vion', 'Jardim Santa Gertrudes', 297, 'Jundiaí', 'sp', 'brasil', 'casa 02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `preferencias`
--

CREATE TABLE `preferencias` (
  `id_pref` int(11) NOT NULL,
  `estrelas` int(11) DEFAULT NULL,
  `tema` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `preferencias`
--

INSERT INTO `preferencias` (`id_pref`, `estrelas`, `tema`) VALUES
(1, 10, 1),
(2, 10, 1),
(3, 10, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome_user` varchar(40) DEFAULT NULL,
  `email_user` varchar(40) DEFAULT NULL,
  `senha_user` varchar(50) DEFAULT NULL,
  `id_pref` int(11) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome_user`, `email_user`, `senha_user`, `id_pref`, `id_endereco`, `id_admin`) VALUES
(1, 'vinicius kum', 'codnicius@gmail.com', '1238904567cod19742007', 1, 1, 1),
(2, 'odair kum', 'odairkum@gmail.com', 'od1974vinicius', 2, 2, 0),
(3, 'madalena l amaral', 'mariamadalenalopesamaral800@gmail.com', '15031983', 3, 3, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`id_endereco`);

--
-- Índices de tabela `preferencias`
--
ALTER TABLE `preferencias`
  ADD PRIMARY KEY (`id_pref`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_pref` (`id_pref`),
  ADD KEY `id_endereco` (`id_endereco`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `preferencias`
--
ALTER TABLE `preferencias`
  MODIFY `id_pref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_pref`) REFERENCES `preferencias` (`id_pref`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id_endereco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
