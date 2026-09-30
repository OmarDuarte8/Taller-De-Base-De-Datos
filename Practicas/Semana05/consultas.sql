-- ====================================================================
-- PRÁCTICA 05: ¡INTERROGUEMOS A LA BASE DE DATOS! (SELECT)
-- Base de datos: transporte_escolar
-- ====================================================================

USE transporte_escolar;

-- ====================================================================
-- 01. SELECT BÁSICO Y COLUMNAS ESPECÍFICAS
-- ====================================================================

-- Ver todos los registros de choferes y rutas
SELECT * FROM choferes;
SELECT * FROM rutas;

-- Seleccionar columnas específicas con alias
SELECT 
    nombre AS nombre_chofer, 
    telefono AS contacto_telefonico 
FROM choferes;

-- ====================================================================
-- 02. FILTRADO BÁSICO CON WHERE Y OPERADORES
-- ====================================================================

-- Filtro por igualdad (Choferes activos)
SELECT * FROM choferes 
WHERE estado = 'activo';

-- Filtro numérico (Rutas con capacidad mayor o igual a 30)
SELECT * FROM rutas 
WHERE capacidad_autobus >= 30;

-- ====================================================================
-- 03. BÚSQUEDA DE PATRONES CON LIKE Y RANGOS CON BETWEEN
-- ====================================================================

-- Búsqueda de texto con LIKE (Choferes cuyo nombre comienza con 'A')
SELECT * FROM choferes 
WHERE nombre LIKE 'A%';

-- Búsqueda por rango con BETWEEN (Experiencia entre 2 y 5 años)
SELECT * FROM choferes 
WHERE anos BETWEEN 2 AND 5;

-- ====================================================================
-- 04. LISTAS (IN), NULOS (IS NULL) Y VALORES ÚNICOS (DISTINCT)
-- ====================================================================

-- Búsqueda en una lista de valores específicos con IN
SELECT * FROM rutas 
WHERE turno IN ('Matutino', 'Vespertino');

-- Identificar registros con valores nulos (Choferes sin ruta asignada)
SELECT * FROM choferes 
WHERE ruta_id IS NULL;

-- Obtener valores únicos eliminando duplicados con DISTINCT
SELECT DISTINCT turno FROM rutas;

-- ====================================================================
-- 05. CONDICIONES COMBINADAS (AND) Y ORDENAMIENTO (ORDER BY)
-- ====================================================================

-- Combinación de condiciones con AND
SELECT nombre, anos, estado FROM choferes 
WHERE estado = 'activo' AND anos > 2;

-- Ordenamiento de resultados con ORDER BY (De mayor a menor capacidad)
SELECT * FROM rutas 
ORDER BY capacidad_autobus DESC;

-- ====================================================================
-- 06. RETO FINAL: 10 PREGUNTAS DE NEGOCIO
-- ====================================================================

-- 1. ¿Cuáles son los nombres y licencias de todos los choferes registrados?
SELECT nombre, licencia FROM choferes;

-- 2. ¿Qué rutas operan bajo el turno Matutino?
SELECT * FROM rutas WHERE turno = 'Matutino';

-- 3. ¿Qué choferes tienen una experiencia mayor a 3 años?
SELECT * FROM choferes WHERE anos > 3;

-- 4. ¿Qué choferes tienen un nombre que contiene el fragmento 'ez'?
SELECT * FROM choferes WHERE nombre LIKE '%ez%';

-- 5. ¿Cuáles son las rutas cuya capacidad de autobús está entre 20 y 40 asientos?
SELECT * FROM rutas WHERE capacidad_autobus BETWEEN 20 AND 40;

-- 6. ¿Qué choferes están asignados a las rutas con ID 1, 3 o 5?
SELECT * FROM choferes WHERE ruta_id IN (1, 3, 5);

-- 7. ¿Qué choferes todavía no tienen asignada una ruta escolar?
SELECT * FROM choferes WHERE ruta_id IS NULL;

-- 8. ¿Qué estados diferentes de contratación o actividad tienen los choferes?
SELECT DISTINCT estado FROM choferes;

-- 9. ¿Qué choferes están activos y tienen más de 2 años de experiencia?
SELECT * FROM choferes WHERE estado = 'activo' AND anos > 2;

-- 10. ¿Cuáles son las rutas ordenadas de forma ascendente por su nombre?
SELECT * FROM rutas ORDER BY nombre_ruta ASC;
