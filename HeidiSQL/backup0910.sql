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


-- Copiando estrutura do banco de dados para teste0210
DROP DATABASE IF EXISTS `teste0210`;
CREATE DATABASE IF NOT EXISTS `teste0210` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `teste0210`;

-- Copiando estrutura para tabela teste0210.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `codCliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL DEFAULT '0',
  `cpf` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`codCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela teste0210.cliente: ~3 rows (aproximadamente)
INSERT INTO `cliente` (`codCliente`, `nome`, `cpf`) VALUES
	(1, 'Fabrício Alves', '222.222.222.45'),
	(2, 'pedro', '666.666.666-66'),
	(3, 'Fabrício Alves', '222.222.222.45');

-- Copiando estrutura para procedure teste0210.pr_olaMundo
DROP PROCEDURE IF EXISTS `pr_olaMundo`;
DELIMITER //
CREATE PROCEDURE `pr_olaMundo`()
BEGIN
	SELECT "Olá mundo!" AS MENSAGEM;
END//
DELIMITER ;

-- Copiando estrutura para procedure teste0210.pr_quadrado
DROP PROCEDURE IF EXISTS `pr_quadrado`;
DELIMITER //
CREATE PROCEDURE `pr_quadrado`(
	INOUT `numero` INT
)
BEGIN
	SET NUMERO = NUMERO*NUMERO;
END//
DELIMITER ;

-- Copiando estrutura para procedure teste0210.p_insereCliente
DROP PROCEDURE IF EXISTS `p_insereCliente`;
DELIMITER //
CREATE PROCEDURE `p_insereCliente`(
	IN `nomeNovo` VARCHAR(150),
	IN `cpfNovo` VARCHAR(30)
)
BEGIN
	INSERT INTO cliente(nome, cpf) VALUES (nomeNovo, cpfNovo);
END//
DELIMITER ;

-- Copiando estrutura para procedure teste0210.p_media
DROP PROCEDURE IF EXISTS `p_media`;
DELIMITER //
CREATE PROCEDURE `p_media`(
	IN `nota1` FLOAT,
	IN `nota2` FLOAT,
	IN `nota3` FLOAT,
	OUT `resultado` FLOAT
)
BEGIN
	SET resultado = (nota1+nota2+nota3)/3;
END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
