


CREATE DATABASE IF NOT EXISTS transporte_escolar;
USE transporte_escolar;


CREATE TABLE rutas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_ruta VARCHAR(100) NOT NULL UNIQUE,
    turno VARCHAR(50) NOT NULL,
    capacidad_autobus INT CHECK (capacidad_autobus > 0)
);


CREATE TABLE choferes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    licencia VARCHAR(50) NOT NULL UNIQUE,
    anos INT CHECK (anos >= 0),
    estado VARCHAR(20) DEFAULT 'activo',
    ruta_id INT,
    FOREIGN KEY (ruta_id) REFERENCES rutas(id)
);
