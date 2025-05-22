-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Maio-2025 às 03:10
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `musicasdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cds`
--

CREATE TABLE `cds` (
  `Codigo` int(11) NOT NULL,
  `Nome_cd` varchar(100) DEFAULT NULL,
  `DataCompra` date DEFAULT NULL,
  `ValorPago` decimal(10,2) DEFAULT NULL,
  `LocalCompra` varchar(100) DEFAULT NULL,
  `Album` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cds`
--

INSERT INTO `cds` (`Codigo`, `Nome_cd`, `DataCompra`, `ValorPago`, `LocalCompra`, `Album`) VALUES
(1, 'Rock Nacional', '2024-01-15', '39.90', 'Submarino', 'Sim'),
(2, 'Pop Hits', '2023-12-20', '29.90', 'Amazon', 'Não'),
(3, 'Jazz Clássico', '2024-03-10', '44.90', 'Submarino', 'Sim'),
(4, 'MPB Essencial', '2024-04-05', '35.00', 'Saraiva', 'Não'),
(5, 'Hits 2024', '2024-05-01', '49.90', 'Submarino', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE `musicas` (
  `Numero_musica` int(11) DEFAULT NULL,
  `Nome_musica` varchar(100) DEFAULT NULL,
  `Artista` varchar(100) DEFAULT NULL,
  `Tempo` time DEFAULT NULL,
  `CodigoCD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `musicas`
--

INSERT INTO `musicas` (`Numero_musica`, `Nome_musica`, `Artista`, `Tempo`, `CodigoCD`) VALUES
(1, 'Sol da Manhã', 'José Pedro', '00:03:45', 1),
(2, 'Caminhos', 'Ana Clara', '00:04:20', 1),
(3, 'Liberdade', 'José Pedro', '00:05:10', 1),
(1, 'No Ritmo', 'DJ Pop', '00:03:30', 2),
(2, 'Balanço', 'DJ Pop', '00:04:00', 2),
(3, 'Dance Agora', 'MC Flash', '00:03:50', 2),
(1, 'Jazz Blue', 'Miles D.', '00:06:15', 3),
(2, 'Soft Wind', 'Ella F.', '00:05:45', 3),
(3, 'Autumn Notes', 'Louis A.', '00:06:00', 3),
(1, 'Águas de Março', 'Tom Jobim', '00:04:30', 4),
(2, 'Sampa', 'Caetano Veloso', '00:05:10', 4),
(3, 'O Mundo é um Moinho', 'Cartola', '00:04:45', 4),
(1, 'Top Summer', 'DJ Beat', '00:03:20', 5),
(2, 'Piseiro Bom', 'Zé Neto', '00:02:50', 5),
(3, 'Sexta-feira', 'Luan P.', '00:03:40', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`Codigo`);

--
-- Índices para tabela `musicas`
--
ALTER TABLE `musicas`
  ADD KEY `CodigoCD` (`CodigoCD`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `musicas`
--
ALTER TABLE `musicas`
  ADD CONSTRAINT `musicas_ibfk_1` FOREIGN KEY (`CodigoCD`) REFERENCES `cds` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
