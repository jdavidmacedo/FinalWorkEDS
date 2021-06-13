-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 10:13 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myteam`
--

-- --------------------------------------------------------

--
-- Table structure for table `atleta`
--

CREATE TABLE `atleta` (
  `id_atleta` int(11) NOT NULL,
  `nome_atleta` varchar(100) NOT NULL,
  `idade_atleta` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `nPorta` int(11) NOT NULL,
  `CodPostal` varchar(8) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `NCC` varchar(100) NOT NULL,
  `NIF` varchar(100) NOT NULL,
  `IBAN` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_quipa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `avaliacao`
--

CREATE TABLE `avaliacao` (
  `id_avaliacao` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `diretor`
--

CREATE TABLE `diretor` (
  `id_diretor` int(11) NOT NULL,
  `nome_diretor` varchar(100) NOT NULL,
  `id_equipa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diretor`
--

INSERT INTO `diretor` (`id_diretor`, `nome_diretor`, `id_equipa`) VALUES
(1, 'Tiago Penelas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `equipa`
--

CREATE TABLE `equipa` (
  `id_equipa` int(11) NOT NULL,
  `nome_equipa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipa`
--

INSERT INTO `equipa` (`id_equipa`, `nome_equipa`) VALUES
(1, 'FCPorto'),
(2, 'SLBenfica'),
(3, 'SportingCP');

-- --------------------------------------------------------

--
-- Table structure for table `funcao`
--

CREATE TABLE `funcao` (
  `id_funcao` int(11) NOT NULL,
  `nome_funcao` varchar(100) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funcao`
--

INSERT INTO `funcao` (`id_funcao`, `nome_funcao`, `descricao`) VALUES
(1, 'treinador guarda redes', 'treinador dos guarda redes');

-- --------------------------------------------------------

--
-- Table structure for table `localtreino`
--

CREATE TABLE `localtreino` (
  `id_localtreino` int(11) NOT NULL,
  `nome_localtreino` varchar(100) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `nporta` int(11) NOT NULL,
  `codPostal` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `maquina`
--

CREATE TABLE `maquina` (
  `id_maquina` int(11) NOT NULL,
  `nome_maquina` varchar(100) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `secretario`
--

CREATE TABLE `secretario` (
  `id_secretario` int(11) NOT NULL,
  `nome_secretario` varchar(100) NOT NULL,
  `id_equipa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `secretario`
--

INSERT INTO `secretario` (`id_secretario`, `nome_secretario`, `id_equipa`) VALUES
(1, 'Jhonny Depp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `treinador`
--

CREATE TABLE `treinador` (
  `id_treinador` int(11) NOT NULL,
  `nome_treinador` varchar(100) NOT NULL,
  `idade_treinador` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `nPorta` int(8) NOT NULL,
  `CodPostal` varchar(8) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `NCC` varchar(100) NOT NULL,
  `NIF` varchar(100) NOT NULL,
  `IBAN` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_equipa` int(11) NOT NULL,
  `id_funcao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treinador`
--

INSERT INTO `treinador` (`id_treinador`, `nome_treinador`, `idade_treinador`, `rua`, `nPorta`, `CodPostal`, `telefone`, `NCC`, `NIF`, `IBAN`, `email`, `id_equipa`, `id_funcao`) VALUES
(1, 'TIago', 23, 'dra anibal araujo', 23, '4750-109', '937996683', '123456123123', '1231512312312345', '8912 1231 1234 1233 1234', 'tiago@gmail.com', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `treino`
--

CREATE TABLE `treino` (
  `id_treino` int(11) NOT NULL,
  `data` date NOT NULL,
  `id_treinotipo` int(11) NOT NULL,
  `id_localtreino` int(11) NOT NULL,
  `id_treinador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treinoatleta`
--

CREATE TABLE `treinoatleta` (
  `id_treinoatleta` int(11) NOT NULL,
  `id_atleta` int(11) NOT NULL,
  `id_treino` int(11) NOT NULL,
  `id_avaliacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treinotipo`
--

CREATE TABLE `treinotipo` (
  `id_treinotipo` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `nome_treinotipo` varchar(100) NOT NULL,
  `id_maquina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`id_atleta`),
  ADD KEY `fk_equipa` (`id_quipa`);

--
-- Indexes for table `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`id_avaliacao`);

--
-- Indexes for table `diretor`
--
ALTER TABLE `diretor`
  ADD PRIMARY KEY (`id_diretor`),
  ADD KEY `fk_equipa` (`id_equipa`);

--
-- Indexes for table `equipa`
--
ALTER TABLE `equipa`
  ADD PRIMARY KEY (`id_equipa`);

--
-- Indexes for table `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`id_funcao`);

--
-- Indexes for table `localtreino`
--
ALTER TABLE `localtreino`
  ADD PRIMARY KEY (`id_localtreino`);

--
-- Indexes for table `maquina`
--
ALTER TABLE `maquina`
  ADD PRIMARY KEY (`id_maquina`);

--
-- Indexes for table `secretario`
--
ALTER TABLE `secretario`
  ADD PRIMARY KEY (`id_secretario`),
  ADD KEY `fk_equipa` (`id_equipa`);

--
-- Indexes for table `treinador`
--
ALTER TABLE `treinador`
  ADD PRIMARY KEY (`id_treinador`),
  ADD KEY `id_funcao` (`id_funcao`),
  ADD KEY `id_equipa` (`id_equipa`);

--
-- Indexes for table `treino`
--
ALTER TABLE `treino`
  ADD PRIMARY KEY (`id_treino`),
  ADD KEY `fk_treinotipo` (`id_treinotipo`),
  ADD KEY `fk_localtreino` (`id_localtreino`),
  ADD KEY `fk_treinador` (`id_treinador`);

--
-- Indexes for table `treinoatleta`
--
ALTER TABLE `treinoatleta`
  ADD PRIMARY KEY (`id_treinoatleta`),
  ADD KEY `fk_atleta` (`id_atleta`),
  ADD KEY `fk_treino` (`id_treino`),
  ADD KEY `id_avaliacao` (`id_avaliacao`);

--
-- Indexes for table `treinotipo`
--
ALTER TABLE `treinotipo`
  ADD PRIMARY KEY (`id_treinotipo`),
  ADD KEY `fk_maquina` (`id_maquina`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atleta`
--
ALTER TABLE `atleta`
  MODIFY `id_atleta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diretor`
--
ALTER TABLE `diretor`
  MODIFY `id_diretor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `equipa`
--
ALTER TABLE `equipa`
  MODIFY `id_equipa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `funcao`
--
ALTER TABLE `funcao`
  MODIFY `id_funcao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `localtreino`
--
ALTER TABLE `localtreino`
  MODIFY `id_localtreino` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maquina`
--
ALTER TABLE `maquina`
  MODIFY `id_maquina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secretario`
--
ALTER TABLE `secretario`
  MODIFY `id_secretario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `treinador`
--
ALTER TABLE `treinador`
  MODIFY `id_treinador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `treino`
--
ALTER TABLE `treino`
  MODIFY `id_treino` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treinoatleta`
--
ALTER TABLE `treinoatleta`
  MODIFY `id_treinoatleta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treinotipo`
--
ALTER TABLE `treinotipo`
  MODIFY `id_treinotipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `fk_quipa` FOREIGN KEY (`id_quipa`) REFERENCES `equipa` (`id_equipa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diretor`
--
ALTER TABLE `diretor`
  ADD CONSTRAINT `fk_equipa` FOREIGN KEY (`id_equipa`) REFERENCES `equipa` (`id_equipa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `secretario`
--
ALTER TABLE `secretario`
  ADD CONSTRAINT `id_equipa` FOREIGN KEY (`id_equipa`) REFERENCES `equipa` (`id_equipa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `treinador`
--
ALTER TABLE `treinador`
  ADD CONSTRAINT `fk_equipatreinador` FOREIGN KEY (`id_equipa`) REFERENCES `equipa` (`id_equipa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_funcao` FOREIGN KEY (`id_funcao`) REFERENCES `funcao` (`id_funcao`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `treino`
--
ALTER TABLE `treino`
  ADD CONSTRAINT `fk_localtreino` FOREIGN KEY (`id_localtreino`) REFERENCES `localtreino` (`id_localtreino`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_treinador` FOREIGN KEY (`id_treinador`) REFERENCES `treinador` (`id_treinador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_treinotipo` FOREIGN KEY (`id_treinotipo`) REFERENCES `treinotipo` (`id_treinotipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `treinoatleta`
--
ALTER TABLE `treinoatleta`
  ADD CONSTRAINT `fk_atelta` FOREIGN KEY (`id_atleta`) REFERENCES `atleta` (`id_atleta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_avaliacao` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacao` (`id_avaliacao`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_treino` FOREIGN KEY (`id_treino`) REFERENCES `treino` (`id_treino`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `treinotipo`
--
ALTER TABLE `treinotipo`
  ADD CONSTRAINT `fk_maquina` FOREIGN KEY (`id_maquina`) REFERENCES `maquina` (`id_maquina`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
