

-- PRÁCTICA 06: FUNCIONES DE AGREGADO Y AGRUPAMIENTO

-- Base de Datos: control_escolar

-- Alumno: Omar Said Duarte Ruiz (242240010)



USE control_escolar;

-- 1. Conteo total de registros
SELECT COUNT(*) AS total_alumnos 
FROM alumnos;

-- 2. Funciones estadísticas (Suma, Promedio, Mínimo y Máximo)
SELECT 
    SUM(calificacion) AS suma_calificaciones,
    AVG(calificacion) AS promedio_general,
    MIN(calificacion) AS calificacion_minima,
    MAX(calificacion) AS calificacion_maxima
FROM calificaciones;

-- 3. Agrupamiento por grupos (COUNT con GROUP BY)
SELECT 
    g.nombre_grupo, 
    COUNT(a.id) AS total_alumnos
FROM grupos AS g
LEFT JOIN alumnos AS a ON g.id = a.grupo_id
GROUP BY g.id, g.nombre_grupo;

-- 4. Filtrar grupos utilizando HAVING
SELECT 
    g.nombre_grupo, 
    COUNT(a.id) AS total_alumnos
FROM grupos AS g
LEFT JOIN alumnos AS a ON g.id = a.grupo_id
GROUP BY g.id, g.nombre_grupo
HAVING COUNT(a.id) >= 1;

-- 5. Ordenamiento de resultados (ORDER BY DESC)
SELECT nombre_completo, edad 
FROM alumnos 
ORDER BY edad DESC;
EOF
