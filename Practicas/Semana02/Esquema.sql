CREATE DATABASE transporte_escolar;

USE transporte_escolar;

CREATE TABLE rutas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_ruta VARCHAR(100),
    turno VARCHAR(50),
    capacidad_autobus INT
);

CREATE TABLE choferes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    licencia VARCHAR(50)
);

ALTER TABLE choferes ADD COLUMN años_de_experiencias INT;
