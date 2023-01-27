SHOW databases;
DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda;
USE tienda;

  CREATE TABLE fab(
  numero_fabricante INT(10) PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
  );
DESCRIBE fab; 

CREATE TABLE pro(
codigo INT(10) PRIMARY KEY,
nombre VARCHAR(100) NOT NULL UNIQUE,
precio DOUBLE NOT NULL,
numero_fabricante INT(10) NOT NULL,
  CONSTRAINT fab_numero_fabricante_fab_numero_fabricante_fk
  FOREIGN KEY (numero_fabricante)
  REFERENCES fab(numero_fabricante)
); 
DESCRIBE pro;
