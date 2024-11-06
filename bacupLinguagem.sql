-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.2.0 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para banco2infod2024
DROP DATABASE IF EXISTS `banco2infod2024`;
CREATE DATABASE IF NOT EXISTS `banco2infod2024` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `banco2infod2024`;

-- Copiando estrutura para tabela banco2infod2024.cidade
DROP TABLE IF EXISTS `cidade`;
CREATE TABLE IF NOT EXISTS `cidade` (
  `codCidade` int NOT NULL AUTO_INCREMENT,
  `nomeCidade` varchar(50) NOT NULL,
  `ufCidade` varchar(2) NOT NULL,
  PRIMARY KEY (`codCidade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela banco2infod2024.cidade: ~4 rows (aproximadamente)
INSERT INTO `cidade` (`codCidade`, `nomeCidade`, `ufCidade`) VALUES
	(1, 'Machado', 'MG'),
	(2, 'Alfenas', 'MG'),
	(3, 'Serrania', 'MG'),
	(4, 'Poços de Caldas', 'MG'),
	(5, 'Curitiba', 'PR');

-- Copiando estrutura para tabela banco2infod2024.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `codCliente` int NOT NULL,
  `nomeCiente` varchar(150) NOT NULL,
  `cpfCliente` varchar(20) NOT NULL,
  PRIMARY KEY (`codCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela banco2infod2024.cliente: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela banco2infod2024.funcionarios
DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `codFuncionario` int NOT NULL AUTO_INCREMENT,
  `nomeFuncionario` varchar(50) NOT NULL,
  `salarioFuncionario` double NOT NULL,
  `nascimentoFuncionario` date NOT NULL,
  `cidadeFuncionario` int NOT NULL,
  PRIMARY KEY (`codFuncionario`),
  KEY `FK__cidade` (`cidadeFuncionario`),
  CONSTRAINT `FK__cidade` FOREIGN KEY (`cidadeFuncionario`) REFERENCES `cidade` (`codCidade`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela banco2infod2024.funcionarios: ~2 rows (aproximadamente)
INSERT INTO `funcionarios` (`codFuncionario`, `nomeFuncionario`, `salarioFuncionario`, `nascimentoFuncionario`, `cidadeFuncionario`) VALUES
	(1, 'Tulio', 1450, '1978-10-02', 2),
	(2, 'Alexandra', 2500, '2000-03-20', 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
