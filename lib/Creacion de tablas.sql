CREATE SCHEMA `TFG`  DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ; 
CREATE TABLE `TFG`.`repositorios` (
  `idProyecto` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Descripcion` MEDIUMTEXT NULL,
  `momento` DATETIME NOT NULL,
  PRIMARY KEY (`idProyecto`, `momento`));
  CREATE TABLE `TFG`.`issues` (
  `idProyecto` INT NOT NULL,
  `momento` DATETIME NOT NULL,
  `idIssue` INT NOT NULL,
  `Titulo` MEDIUMTEXT NULL,
  `Descripcion` MEDIUMTEXT NULL,
  `Etiquetas` JSON NULL,
  `Comentarios` JSON NULL,
  `Status` VARCHAR(10) NULL,
  PRIMARY KEY (`idProyecto`, `momento`, `idIssue`));
  CREATE TABLE `TFG`.`labels` (
  `idProyecto` INT NOT NULL,
  `momento` DATETIME NOT NULL,
  `idLabel` INT NOT NULL,
  `Nombre` MEDIUMTEXT NULL DEFAULT NULL,
  `Color` VARCHAR(45) NULL DEFAULT NULL,
  `Color_texto` VARCHAR(45) NULL DEFAULT NULL,
  `Descripcion` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`momento`, `idProyecto`, `idLabel`));
  CREATE TABLE `TFG`.`modelos` (
  `idProyectos` VARCHAR(700) NOT NULL,
  `momento` DATETIME NOT NULL,
  `modelo` LONGBLOB NOT NULL,
  PRIMARY KEY (`idProyectos`, `momento`));
ALTER TABLE `TFG`.`issues` 
ADD CONSTRAINT `repositorios`
  FOREIGN KEY (`idProyecto` , `momento`)
  REFERENCES `TFG`.`repositorios` (`idProyecto` , `momento`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;
  ALTER TABLE `TFG`.`labels` 
ADD CONSTRAINT `proyecto-label`
  FOREIGN KEY ( `idProyecto`,`momento` )
  REFERENCES `TFG`.`repositorios` (`idProyecto`,`momento` )
  ON DELETE CASCADE
  ON UPDATE NO ACTION;