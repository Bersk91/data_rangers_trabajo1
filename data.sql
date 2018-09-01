
USE `mydb` ;


-- -----------------------------------------------------
-- Table `mydb`.`DTiempo`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `mydb`.`DTiempo` 
(
 `idTiempo` INT NOT NULL ,
  
  `Fecha` DATE NOT NULL ,

  `Dia` INT NULL ,

  `Mes` INT NULL ,

  `Año` INT NOT NULL ,
  `Bimestre` VARCHAR(45) NULL ,

  `Trimestre` VARCHAR(45) NULL ,

  PRIMARY KEY (`Fecha`) 
)
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `mydb`.`DMedioDePago`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `mydb`.`DMedioDePago` 
(
 `MediodePago` VARCHAR(100) NOT NULL ,

   PRIMARY KEY (`MediodePago`) 
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DTipoDescuento`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `mydb`.`DMedioDePago` 
(
 `TipoDescuento` VARCHAR(100) NOT NULL ,

   PRIMARY KEY (`TipoDescuento`) 
)
ENGINE = InnoDB;





-- -----------------------------------------------------
-- Table `mydb`.`DCategoria`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `mydb`.`DCategoria` 
(
 `idCategoria` INT NOT NULL ,

  `Categoria` VARCHAR(45) NOT NULL ,

  `Familia` VARCHAR(45) NULL ,

  PRIMARY KEY (`Categoria`) 
)
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `mydb`.`DTipo`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `mydb`.`DTipo` 
(
 `idTipo` INT NOT NULL ,

  `Tipo` VARCHAR(45) NULL ,

  PRIMARY KEY (`Tipo`) 
)
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `mydb`.`DProducto`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `mydb`.`DProducto` 
(
 `idProducto` INT NOT NULL ,

  `Producto` VARCHAR(45) NOT NULL ,

  `idCategoria` VARCHAR(45) NULL ,

  `Tipo` VARCHAR(45) NULL ,

  `Precio` VARCHAR(45) NULL ,

  `DCategoria_idCategoria` INT NOT NULL ,

  `DTipo_idTipo` INT NOT NULL ,

  PRIMARY KEY (``Producto`, `Categoria`, `Tipo`) 
)
ENGINE = InnoDB;



CREATE INDEX `fk_DProducto_DCategoria1_idx` ON `mydb`.`DProducto` (`Categoria` ASC) ;


CREATE INDEX `fk_DProducto_DTipo1_idx` ON `mydb`.`DProducto` (`Tipo` ASC) ;




-- -----------------------------------------------------
-- Table `mydb`.`FAC_VENTAS`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `mydb`.`FAC_VENTAS` 
(
 `idFAC_VENTAS` INT NOT NULL ,

  `Cajero` VARCHAR(45) NOT NULL ,
  `Fecha` DATE NOT NULL ,

  `Producto` VARCHAR(45) NOT NULL ,

  `MediodePago` VARCHAR(45) NULL ,

  `TipoDescuento` VARCHAR(45) NOT NULL ,

  `Cantidad` INT NULL ,

  `Precio_Total` DECIMAL(18,2) NULL ,

  `TipoDescuento` VARCHAR(45) NULL ,

  `Descuento` DECIMAL(1,2) NULL ,

  `Venta` DECIMAL(18,2) NULL ,

  `Unidades` INT NULL ,

   PRIMARY KEY (`idFAC_VENTAS`, `Cajero`, `Fecha`, `Producto`, `TipoDescuento`,`MediodePago`) 
)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `mydb`.`DUbigeo`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `mydb`.`DUbigeo` 
(
  `idUbigeo` INT NOT NULL ,

  `Ubigeo` VARCHAR(45) NULL ,

  `Departamento` VARCHAR(45) NULL ,

  `Provincia` VARCHAR(45) NULL ,

  `Distrito` VARCHAR(45) NULL ,

  PRIMARY KEY (`Ubigeo`) 
)
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `mydb`.`DTienda`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `mydb`.`DTienda` 
(
 `idTienda` INT NOT NULL ,

  `Tienda` VARCHAR(45) NULL ,

  `Ubigeo` VARCHAR(45) NULL ,
  PRIMARY KEY (`Tienda`)

ENGINE = InnoDB;






-- -----------------------------------------------------
-- Table `mydb`.`DCajero`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `mydb`.`DCajero` 
(
  `idCajero` INT NOT NULL ,

  `Cajero` VARCHAR(250) NOT NULL ,

  `Tienda` INT NOT NULL ,

  PRIMARY KEY (`Cajero`) 
)
ENGINE = InnoDB;





USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
