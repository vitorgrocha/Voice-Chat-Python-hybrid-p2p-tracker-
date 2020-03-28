-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Jan-2018 às 15:11
-- Versão do servidor: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xqdl`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `buddy`
--

CREATE TABLE `buddy` (
  `person_id1` int(11) NOT NULL,
  `person_id2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `buddy`
--

INSERT INTO `buddy` (`person_id1`, `person_id2`) VALUES
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `user_ID` int(11) NOT NULL,
  `user_nome` varchar(100) NOT NULL,
  `user_senha` varchar(100) NOT NULL,
  `nome_completo` varchar(200) NOT NULL,
  `status` int(1) DEFAULT '0',
  `user_PORT` int(11) NOT NULL,
  `user_IP` text NOT NULL,
  `user_Ocupado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`user_ID`, `user_nome`, `user_senha`, `nome_completo`, `status`, `user_PORT`, `user_IP`, `user_Ocupado`) VALUES
(1, 'vitor', '123', 'Vitor Gomes Rocha', 0, 0, '0.0.0.0', 0),
(2, 'lucas', '123', 'Lucas Marques', 0, 0, '0.0.0.0', 0),
(3, 'henrico', '123', 'Henrico Vilela', 0, 0, '', 0),
(4, 'Guerra', '123', 'Arthur Rosa', 0, 0, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buddy`
--
ALTER TABLE `buddy`
  ADD PRIMARY KEY (`person_id1`,`person_id2`),
  ADD KEY `person_id2` (`person_id2`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `buddy`
--
ALTER TABLE `buddy`
  ADD CONSTRAINT `buddy_ibfk_1` FOREIGN KEY (`person_id1`) REFERENCES `user` (`user_ID`),
  ADD CONSTRAINT `buddy_ibfk_2` FOREIGN KEY (`person_id2`) REFERENCES `user` (`user_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
