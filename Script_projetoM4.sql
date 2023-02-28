-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SistemaResilia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SistemaResilia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SistemaResilia` DEFAULT CHARACTER SET utf8 ;
USE `SistemaResilia` ;

-- -----------------------------------------------------
-- Table `SistemaResilia`.`Turma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SistemaResilia`.`Turma` (
  `idTurma` INT NOT NULL AUTO_INCREMENT,
  `Numero_turma` VARCHAR(45) NULL,
  PRIMARY KEY (`idTurma`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SistemaResilia`.`Cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SistemaResilia`.`Cursos` (
  `idCursos` INT NOT NULL AUTO_INCREMENT,
  `nome_curso` VARCHAR(45) NULL,
  PRIMARY KEY (`idCursos`),
  CONSTRAINT `fk_Cursos_Turma`
    FOREIGN KEY (`idCursos`)
    REFERENCES `SistemaResilia`.`Turma` (`idTurma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SistemaResilia`.`Alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SistemaResilia`.`Alunos` (
  `idAlunos` INT NOT NULL AUTO_INCREMENT,
  `nome_aluno` VARCHAR(45) NULL,
  PRIMARY KEY (`idAlunos`),
  CONSTRAINT `fk_Alunos_Turma1`
    FOREIGN KEY (`idAlunos`)
    REFERENCES `SistemaResilia`.`Turma` (`idTurma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
