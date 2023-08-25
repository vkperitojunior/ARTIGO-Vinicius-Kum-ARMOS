-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Maio-2023 às 13:50
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

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
-- Estrutura da tabela `enderecos`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` (`id_endereco`, `cep`, `rua`, `bairro`, `numero`, `cidade`, `uf`, `pais`, `complemento`) VALUES
(1, '13223100', 'Nazareno spinucci', 'Jardim Promeca', 685, 'Várzea Paulista', 'sp', 'brasil', 'casa 02'),
(2, '13205190', 'Antonio Tacildo Vion', 'Jardim santa Gertrudes', 295, 'Jundiaí', 'sp', 'brasil', 'casa 02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas`
--

CREATE TABLE `paginas` (
  `id_pagina` int(11) NOT NULL,
  `nome_pag` varchar(30) DEFAULT NULL,
  `url_pag` varchar(100) DEFAULT NULL,
  `importancia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `paginas`
--

INSERT INTO `paginas` (`id_pagina`, `nome_pag`, `url_pag`, `importancia`) VALUES
(1, 'loginkum', 'https://controleresidecialkum/PHP/loginkum.php', 'Página de login com camadas extras de segurança'),
(2, 'index', 'https://controleresidecialkum/PHP/index.php', 'Primeira página do site, é a página home'),
(3, 'controlehorta', 'https://controleresidecialkum/PHP/controlehorta.php', 'Controle da Horta'),
(4, 'controlecftv', 'https://controleresidecialkum/PHP/controlecftv', 'Controle do sistema de cameras'),
(5, 'controleemergencia', 'https://controleresidecialkum/PHP/controleemergencia.php', 'Controle do sistema de emergencia, luz do quarto e etc'),
(6, 'controlesegurança', 'https://controleresidecialkum/PHP/controlesegurança.php', 'Controle do sistema de segurança como luzes de refletor e cachorro'),
(7, 'conexao', 'https://controleresidecialkum/PHP/index.php', 'Página que cria a conexao com banco de dados'),
(8, 'home', 'https://controleresidecialkum/HTML/home.html', 'página exemplo e de backup'),
(9, 'cabrodbásico', 'https://controleresidecialkum/HTML/caberodbásico.html', 'Página exemplo e de backup');

-- --------------------------------------------------------

--
-- Estrutura da tabela `preferencias`
--

CREATE TABLE `preferencias` (
  `id_pref` int(11) NOT NULL,
  `estrelas` int(11) DEFAULT NULL,
  `tema` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `preferencias`
--

INSERT INTO `preferencias` (`id_pref`, `estrelas`, `tema`) VALUES
(1, 10, 1),
(2, 10, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome_user` varchar(40) DEFAULT NULL,
  `email_user` varchar(40) DEFAULT NULL,
  `senha_user` varchar(50) DEFAULT NULL,
  `id_pref` int(11) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome_user`, `email_user`, `senha_user`, `id_pref`, `id_endereco`) VALUES
(1, 'vinicius kum', 'codnicius@gmail.com', '1238904567cod19742007', 1, 1),
(2, 'odair kum', 'odairkum@gmail.com', 'od1974vinicius', 2, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`id_endereco`);

--
-- Índices para tabela `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id_pagina`);

--
-- Índices para tabela `preferencias`
--
ALTER TABLE `preferencias`
  ADD PRIMARY KEY (`id_pref`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_pref` (`id_pref`),
  ADD KEY `id_endereco` (`id_endereco`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `paginas`
--
ALTER TABLE `paginas`
  MODIFY `id_pagina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `preferencias`
--
ALTER TABLE `preferencias`
  MODIFY `id_pref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_pref`) REFERENCES `preferencias` (`id_pref`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id_endereco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
