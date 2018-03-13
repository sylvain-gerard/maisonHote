-- -----------------------------------------------------
-- Schema maisonhote
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `maisonhote` DEFAULT CHARACTER SET utf8 ;
USE `maisonhote` ;

-- -----------------------------------------------------
-- Table `filrouge`.`suspects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `maisonhote`.`reservations` (
  `idreservations` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `typeSejour` varchar(45) DEFAULT NULL,
  `parking` tinyint(4) DEFAULT NULL,
  `fumeur` tinyint(4) DEFAULT NULL,
  `animal` tinyint(4) DEFAULT NULL,
  `nbrePersonnes` varchar(45) DEFAULT NULL,
  `dureeSejour` varchar(45) DEFAULT NULL,
  `debutSejour` varchar(45) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  PRIMARY KEY (`idreservations`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;