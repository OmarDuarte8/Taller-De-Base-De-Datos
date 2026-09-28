
PRÁCTICA 04: LENGUAJE DE MANIPULACIÓN DE DATOS (DML)
Base de datos: transporte_escolar
Alumno: Omar Said Duarte Ruiz (Control: 242240010)
Institución: Tecnológico Nacional de México (TecNM)


0. Selección de la base de datos de trabajo
USE transporte_escolar;


FASE 1: CONSULTAS Y VERIFICACIÓN INICIAL (SELECT)

SELECT * FROM choferes;
DESCRIBE choferes;



FASE 2: INSERCIÓN DE DATOS (INSERT)



INSERT INTO choferes (id, nombre, licencia) VALUES (5, 'Carlos Gómez', 'LIC-9988');


INSERT INTO choferes (id, nombre, licencia) VALUES 
(6, 'Ana Torres', 'LIC-1111'),
(7, 'Luis Pérez', 'LIC-2222');


SELECT * FROM choferes;



FASE 3: PRUEBAS DE RESTRICCIONES (ERRORES CONTROLADOS)


Intento fallido por violación de llave foránea (FOREIGN KEY constraint fails)
-- INSERT INTO choferes (id, nombre, licencia, ruta_id) VALUES (8, 'Chofer Error', 'LIC-8888', 9999);

Intento fallido por campo obligatorio nulo (Column 'licencia' cannot be null)
-- INSERT INTO choferes (id, nombre, licencia) VALUES (9, 'Sin Licencia', NULL);



-- FASE 4: MODIFICACIÓN DE DATOS (UPDATE)


-- 1. Modificación de un registro específico utilizando WHERE
UPDATE choferes SET nombre = 'Conductor Actualizado' WHERE id = 3;

-- 2. Verificación de filas afectadas utilizando ROW_COUNT()
SELECT ROW_COUNT();

-- 3. Modificación múltiple con condición específica
UPDATE choferes SET estado = 'activo' WHERE id > 2;



-- FASE 5: ELIMINACIÓN DE DATOS (DELETE SEGURO)


-- 1. Consulta previa del registro a eliminar
SELECT * FROM choferes WHERE id = 7;

-- 2. Eliminación segura utilizando la cláusula WHERE
DELETE FROM choferes WHERE id = 7;

-- 3. Verificación posterior para comprobar la eliminación
SELECT * FROM choferes WHERE id = 7;
