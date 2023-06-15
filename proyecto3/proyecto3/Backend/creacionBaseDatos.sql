-- Database Creation
-- Initial Tables

CREATE TABLE Mensjae (
    idNotificacion INT AUTO_INCREMENT PRIMARY KEY,
    idemisor INT,
    idgrupo INT,
    fechahora DATETIME,
    contenido VARCHAR(1000)
);


-- Schema: proyectoDisenoDb
CREATE SCHEMA IF NOT EXISTS `proyectoDisenoDb` DEFAULT CHARACTER SET utf8;
USE `proyectoDisenoDb`;

-- Table: Rol
CREATE TABLE IF NOT EXISTS `proyectoDisenoDb`.`Rol` (
  `idRol` INT NOT NULL,
  `desRol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRol`)
);

-- Table: Estudiante
CREATE TABLE IF NOT EXISTS `proyectoDisenoDb`.`Estudiante` (
  `idEstDB` INT NOT NULL,
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `nombreAdicional` VARCHAR(45) NOT NULL,
  `apellido1` VARCHAR(45) NOT NULL,
  `apellido2` VARCHAR(45) NOT NULL,
  `sede` INT NOT NULL,
  `correoTec` VARCHAR(50) NOT NULL,
  `fedicion` DATETIME NULL,
  `editor` VARCHAR(120) NULL,
  `fcreacion` DATETIME NOT NULL,
  PRIMARY KEY (`idEstDB`),
  INDEX `sede_idx` (`sede` ASC) VISIBLE,
  CONSTRAINT `sedeEstudiante`
    FOREIGN KEY (`sede`)
    REFERENCES `proyectoDisenoDb`.`Sede` (`idSede`)
);

-- Table: AsistenteAdministrativo
CREATE TABLE IF NOT EXISTS `proyectoDisenoDb`.`AsistenteAdministrativo` (
  `idAsistente` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido1` VARCHAR(45) NOT NULL,
  `apellido2` VARCHAR(45) NOT NULL,
  `sede` INT NOT NULL,
  PRIMARY KEY (`idAsistente`),
  INDEX `sede_idx` (`sede` ASC) VISIBLE,
  CONSTRAINT `sedeAAdmi`
    FOREIGN KEY (`sede`)
    REFERENCES `proyectoDisenoDb`.`Sede` (`idSede`)
);

-- Table: Profesor
CREATE TABLE IF NOT EXISTS `proyectoDisenoDb`.`Profesor` (
  `idProfesor` INT NOT NULL,
  `codigo` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido1` VARCHAR(45) NOT NULL,
  `apellido2` VARCHAR(45) NOT NULL,
  `oficina` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `telOficina` INT NOT NULL,
  `telCelular` INT NOT NULL,
  `fotografia` BLOB NOT NULL,
  `rol` INT NOT NULL,
  `fcreacion` DATETIME NOT NULL,
  `fedicion` DATETIME NULL,
  PRIMARY KEY (`idProfesor`),
  INDEX `rol_idx` (`rol` ASC) VISIBLE,
  CONSTRAINT `rol`
    FOREIGN KEY (`rol`)
    REFERENCES `proyectoDisenoDb`.`Rol` (`idRol`)
);

-- Table: EquipoTrabajo
CREATE TABLE IF NOT EXISTS `proyectoDisenoDb`.`EquipoTrabajo` (
  `idEquipoTrabajo` INT NOT NULL,
  `coordinador` INT NOT NULL,
  `fedicion` DATETIME NULL,
  `editor` VARCHAR(45) NULL,
  PRIMARY KEY (`idEquipoTrabajo`)
);

-- Table: Sede
CREATE TABLE IF NOT EXISTS `proyectoDisenoDb`.`Sede` (
  `idSede` INT NOT NULL,
  `codigoSede` VARCHAR(2) NOT NULL,
 


 CREATE TABLE Notificacion (
  idNotificacion INT AUTO_INCREMENT PRIMARY KEY,
  idreceptor_id INT,
  idemisor_id INT,
  fechahora DATETIME,
  contenido VARCHAR(1000),
  leida BOOLEAN
);
