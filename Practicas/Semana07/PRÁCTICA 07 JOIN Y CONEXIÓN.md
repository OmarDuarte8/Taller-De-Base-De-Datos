

-- PRÁCTICA 07: JOIN Y CONEXIÓN DE TABLAS
-- Base de Datos: control_escolar
-- Alumno: Omar Said Duarte Ruiz (242240010)


USE control_escolar;

-- 1. INNER JOIN: Relacionar alumnos con sus grupos correspondientes
SELECT 
    a.nombre_completo AS alumno, 
    g.nombre_grupo, 
    g.turno
FROM alumnos AS a
INNER JOIN grupos AS g 
    ON a.grupo_id = g.id;

-- 2. LEFT JOIN: Mostrar todos los alumnos, tengan o no grupo asignado
SELECT 
    a.nombre_completo AS alumno, 
    g.nombre_grupo
FROM alumnos AS a
LEFT JOIN grupos AS g 
    ON a.grupo_id = g.id;

-- 3. Detección de registros sin relación (Alumnos sin grupo usando IS NULL)
SELECT 
    a.nombre_completo AS alumno_sin_grupo
FROM alumnos AS a
LEFT JOIN grupos AS g 
    ON a.grupo_id = g.id
WHERE g.id IS NULL;

-- 4. Unión de tres tablas (alumnos, calificaciones y materias)
SELECT 
    a.nombre_completo AS alumno,
    m.nombre_materia,
    c.calificacion
FROM alumnos AS a
INNER JOIN calificaciones AS c ON a.id = c.alumno_id
INNER JOIN materias AS m ON c.materia_id = m.id;
EOF
