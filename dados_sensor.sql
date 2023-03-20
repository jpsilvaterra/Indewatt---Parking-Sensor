-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 14/10/2022 às 00:11
-- Versão do servidor: 10.4.11-MariaDB
-- Versão do PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `indewatt`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_sensor`
--

CREATE TABLE `dados_sensor` (
  `Data` date NOT NULL,
  `Hora` time NOT NULL,
  `Sensor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `dados_sensor`
--

INSERT INTO `dados_sensor` (`Data`, `Hora`, `Sensor`) VALUES
('2022-10-13', '18:18:10', 28.6),
('2022-10-13', '18:18:10', 26.33),
('2022-10-13', '18:20:11', 24),
('2022-10-13', '18:21:03', 23.3),
('2022-10-12', '10:18:10', 29.7),
('2022-10-12', '10:18:10', 29.7),
('2022-10-12', '11:18:10', 25.2),
('2022-10-12', '11:20:10', 21),
('2022-10-12', '10:18:10', 30),
('2022-10-12', '10:18:10', 27.3),
('2022-10-13', '10:18:10', 28),
('2022-10-13', '10:18:10', 28),
('2022-10-13', '10:18:10', 27.5),
('2022-10-13', '10:18:10', 26.2),
('2022-10-13', '10:18:10', 25.3),
('2022-10-13', '10:18:10', 29),
('2022-10-13', '10:18:10', 28.9);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
