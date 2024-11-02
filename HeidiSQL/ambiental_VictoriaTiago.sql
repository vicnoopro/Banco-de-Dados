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


-- Copiando estrutura do banco de dados para ambiental_victoria_tiago
DROP DATABASE IF EXISTS `ambiental_victoria_tiago`;
CREATE DATABASE IF NOT EXISTS `ambiental_victoria_tiago` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ambiental_victoria_tiago`;

-- Copiando estrutura para tabela ambiental_victoria_tiago.jogador
DROP TABLE IF EXISTS `jogador`;
CREATE TABLE IF NOT EXISTS `jogador` (
  `codJogador` int NOT NULL AUTO_INCREMENT,
  `NomeJogador` varchar(100) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  PRIMARY KEY (`codJogador`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela ambiental_victoria_tiago.jogador: ~6 rows (aproximadamente)
INSERT INTO `jogador` (`codJogador`, `NomeJogador`, `matricula`) VALUES
	(1, 'João Victor', '202211987003'),
	(2, 'Paola Vieira', '20201398887'),
	(3, 'Isabela Magalhaes', '2023199987'),
	(4, 'Tiago Masaro', '20231190056'),
	(5, 'Priscila Santos', '20191100432'),
	(6, 'Victoria Caixeta', '20157680009');

-- Copiando estrutura para tabela ambiental_victoria_tiago.jogo
DROP TABLE IF EXISTS `jogo`;
CREATE TABLE IF NOT EXISTS `jogo` (
  `codJogo` int NOT NULL AUTO_INCREMENT,
  `dataJogo` date NOT NULL,
  `pontuacaoFinal` varchar(45) DEFAULT NULL,
  `jogador_codJogador` int NOT NULL,
  PRIMARY KEY (`codJogo`,`jogador_codJogador`),
  KEY `fk_Jogo_jogador1_idx` (`jogador_codJogador`),
  CONSTRAINT `fk_Jogo_jogador1` FOREIGN KEY (`jogador_codJogador`) REFERENCES `jogador` (`codJogador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela ambiental_victoria_tiago.jogo: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela ambiental_victoria_tiago.niveis
DROP TABLE IF EXISTS `niveis`;
CREATE TABLE IF NOT EXISTS `niveis` (
  `codNivel` int NOT NULL AUTO_INCREMENT,
  `tipoNivel` varchar(45) NOT NULL,
  `chancesPossiveis` int NOT NULL,
  PRIMARY KEY (`codNivel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela ambiental_victoria_tiago.niveis: ~3 rows (aproximadamente)
INSERT INTO `niveis` (`codNivel`, `tipoNivel`, `chancesPossiveis`) VALUES
	(1, 'Fácil', 10),
	(2, 'Médio', 5),
	(3, 'DiFícil', 3);

-- Copiando estrutura para tabela ambiental_victoria_tiago.pergunta
DROP TABLE IF EXISTS `pergunta`;
CREATE TABLE IF NOT EXISTS `pergunta` (
  `codPergunta` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) NOT NULL,
  `resposta` varchar(100) NOT NULL,
  PRIMARY KEY (`codPergunta`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela ambiental_victoria_tiago.pergunta: ~15 rows (aproximadamente)
INSERT INTO `pergunta` (`codPergunta`, `descricao`, `resposta`) VALUES
	(1, 'Qual cor é utilizada em reciclagem para indicar o depósito de papel?', 'Azul'),
	(2, 'Qual o nome da atividade legal que visa alimentar o caçador e sua família?', 'Caça de subsistência'),
	(3, 'Qual é o principal elemento químico da chuva ácida? ', 'Dióxido de Enxofre'),
	(4, 'Como se classificam os animais que não vivem em liberdade, portanto, sofrem modificações do seu hábitat natural?', 'Domésticos'),
	(5, 'Como se chama o grupo de animais de uma região? ', 'Fauna'),
	(6, 'Como se chama as espécies vegetais de uma região? ', 'Flora'),
	(7, 'Qual o nome do gás poluente inodoro, incolor e produzido pela queima incompleta de combustível cujo a característica é ser portador de Carbono?', 'Monóxido de Carbono'),
	(8, 'Qual é o poluente que nos ecossistemas atua como fator de desequilíbrio, pois eliminam não somente as pragas, mas os seres vivos que não atacam as agriculturas?', 'Pesticidas'),
	(9, 'Qual o poluente, advindo das camadas profundas do oceano, que ao ser despejado no meio ambiente produz uma lâmina que impede a oxigenação da água?', 'Petróleo'),
	(10, 'Qual o nome dado à alteração desfavorável do meio ambiente pelos subprodutos e resíduos resultantes da atividade humana?', 'Poluição Ambiental'),
	(11, 'Qual nome recebe os atos que despejam esgotos quentes e que elevam a temperatura dos rios e lagos?', 'Poluição Térmica'),
	(12, 'Qual é o nome da poluição proveniente das usinas nucleares? ', 'Radiativa'),
	(13, 'De acordo com a proteção ambiental, como são classificados os animais que vivem em liberdade, ou seja, fora do cativeiro?', 'Silvestres'),
	(14, 'Qual cor é utilizada em reciclagem para indicar o depósito de vidro? ', 'Verde'),
	(15, 'Qual cor é utilizada em reciclagem para indicar o depósito de plástico? ', 'Vermelho');

-- Copiando estrutura para procedure ambiental_victoria_tiago.p_alteraJogador
DROP PROCEDURE IF EXISTS `p_alteraJogador`;
DELIMITER //
CREATE PROCEDURE `p_alteraJogador`(
	IN `codAlterar` INT,
	IN `nomeAlterar` VARCHAR(150),
	IN `matriculaAlterar` VARCHAR(50)
)
BEGIN
	SELECT COUNT(*) INTO @contador FROM jogador WHERE codjogador = codAlterar;
	
	if (@contador = 0)
		then SELECT "Jogador não encontrado!" AS erro;
		ELSE UPDATE jogador SET NomeJogador = nomeAlterar, matricula = matriculaAlterar
				WHERE codJogador = codAlterar;
				SELECT * FROM jogador;
	END if;
	
END//
DELIMITER ;

-- Copiando estrutura para procedure ambiental_victoria_tiago.p_exluirJogador
DROP PROCEDURE IF EXISTS `p_exluirJogador`;
DELIMITER //
CREATE PROCEDURE `p_exluirJogador`(
	IN `codApagar` INT
)
BEGIN
		SELECT COUNT(*) INTO @contador FROM jogador WHERE codJogador = codApagar;
	if (@contador = 0)
		then SELECT "Jogador não existe!" AS erro;
		else
			DELETE FROM jogador WHERE codJogador = codApagar;
			SELECT * FROM jogador;
	END if;
	
END//
DELIMITER ;

-- Copiando estrutura para procedure ambiental_victoria_tiago.p_insereJogador
DROP PROCEDURE IF EXISTS `p_insereJogador`;
DELIMITER //
CREATE PROCEDURE `p_insereJogador`(
	IN `nomeNovo` VARCHAR(150),
	IN `matriculaNova` VARCHAR(50)
)
BEGIN
	INSERT INTO jogador(NomeJogador, matricula) VALUES(nomeNovo,matriculaNova);
	SELECT * FROM jogador;
END//
DELIMITER ;

-- Copiando estrutura para procedure ambiental_victoria_tiago.p_relatorioJogador
DROP PROCEDURE IF EXISTS `p_relatorioJogador`;
DELIMITER //
CREATE PROCEDURE `p_relatorioJogador`(
	IN `tipo` INT
)
BEGIN
	if (tipo = 1)
		then SELECT COUNT(*) AS total FROM jogador;
		ELSE if (tipo = 2)
			then SELECT * FROM jogador ORDER BY NomeJogador ASC;
			ELSE if (tipo = 3)
						then SELECT * FROM jogador ORDER BY NomeJogador desc;
						ELSE SELECT "Tipo de relatório não existe" AS erro;
					END if;
				END if;
	END if;
	
END//
DELIMITER ;

-- Copiando estrutura para tabela ambiental_victoria_tiago.rodada
DROP TABLE IF EXISTS `rodada`;
CREATE TABLE IF NOT EXISTS `rodada` (
  `codRodada` int NOT NULL AUTO_INCREMENT,
  `pontuacaoRodada` varchar(45) DEFAULT NULL,
  `quantRodadas` varchar(45) NOT NULL,
  `Jogo_codJogo` int NOT NULL,
  `niveis_codNivel` int NOT NULL,
  `pergunta_codPergunta` int NOT NULL,
  PRIMARY KEY (`codRodada`,`Jogo_codJogo`,`niveis_codNivel`,`pergunta_codPergunta`),
  KEY `fk_Rodada_Jogo1_idx` (`Jogo_codJogo`),
  KEY `fk_Rodada_niveis1_idx` (`niveis_codNivel`),
  KEY `fk_Rodada_pergunta1_idx` (`pergunta_codPergunta`),
  CONSTRAINT `fk_Rodada_Jogo1` FOREIGN KEY (`Jogo_codJogo`) REFERENCES `jogo` (`codJogo`),
  CONSTRAINT `fk_Rodada_niveis1` FOREIGN KEY (`niveis_codNivel`) REFERENCES `niveis` (`codNivel`),
  CONSTRAINT `fk_Rodada_pergunta1` FOREIGN KEY (`pergunta_codPergunta`) REFERENCES `pergunta` (`codPergunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela ambiental_victoria_tiago.rodada: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
