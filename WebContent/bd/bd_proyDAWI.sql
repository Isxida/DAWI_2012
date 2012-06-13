SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `bd_proydawi` ;
CREATE SCHEMA IF NOT EXISTS `bd_proydawi` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci ;
USE `bd_proydawi` ;

-- -----------------------------------------------------
-- Table `bd_proydawi`.`tb_tipoUsuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bd_proydawi`.`tb_tipoUsuario` (
  `id_tipoUsu` INT(2) NOT NULL AUTO_INCREMENT ,
  `desc` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`id_tipoUsu`) ,
  UNIQUE INDEX `desc_UNIQUE` (`desc` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_proydawi`.`tb_usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bd_proydawi`.`tb_usuario` (
  `id_usu` VARCHAR(20) NOT NULL ,
  `clave` VARCHAR(15) CHARACTER SET 'latin1' COLLATE 'latin1_spanish_ci' NOT NULL ,
  `nombre` VARCHAR(30) NOT NULL ,
  `apellido` VARCHAR(30) NOT NULL ,
  `id_tipoUsu` INT(2) NOT NULL ,
  PRIMARY KEY (`id_usu`) ,
  INDEX `fk_tb_usuario_tb_tipoUsuario` (`id_tipoUsu` ASC) ,
  CONSTRAINT `fk_tb_usuario_tb_tipoUsuario`
    FOREIGN KEY (`id_tipoUsu` )
    REFERENCES `bd_proydawi`.`tb_tipoUsuario` (`id_tipoUsu` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_spanish_ci;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;