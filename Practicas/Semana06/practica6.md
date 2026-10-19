# 📊 PRÁCTICA 06 — FUNCIONES DE AGREGADO Y AGRUPAMIENTO

**Asignatura:** Taller de Base de Datos 
**Alumno:** Omar Said Duarte Ruiz 
**Matrícula:** 242240010 
**Base de Datos:** `control_escolar` 


---

## 🛠️ 1. ESTRUCTURA Y DATOS UTILIZADOS

Las consultas de esta práctica se ejecutan sobre la base de datos `control_escolar`, utilizando principalmente las tablas `alumnos`, `grupos` y `calificaciones`.

---

## 📊 2. CONSULTAS DE LA PRÁCTICA 06

### 1️⃣ Conteo Total de Registros (`COUNT`)
Obtiene la cantidad total de alumnos registrados en la base de datos.

```sql
USE control_escolar;

SELECT COUNT(*) AS total_alumnos 
FROM alumnos;
```

---

### 2️⃣ Funciones Estadísticas (`SUM`, `AVG`, `MIN`, `MAX`)
Calcula la suma, el promedio general, la calificación mínima y la máxima registradas.

```sql
SELECT 
    SUM(calificacion) AS suma_calificaciones,
    AVG(calificacion) AS promedio_general,
    MIN(calificacion) AS calificacion_minima,
    MAX(calificacion) AS calificacion_maxima
FROM calificaciones;
```

---

### 3️⃣ Agrupamiento por Criterio (`GROUP BY`)
Agrupa a los alumnos por su grupo correspondiente y cuenta cuántos estudiantes hay en cada uno.

```sql
SELECT 
    g.nombre_grupo, 
    COUNT(a.id) AS total_alumnos
FROM grupos AS g
LEFT JOIN alumnos AS a ON g.id = a.grupo_id
GROUP BY g.id, g.nombre_grupo;
```

---

### 4️⃣ Filtrado de Grupos Agrupados (`HAVING`)
Filtra el resultado anterior para mostrar únicamente los grupos que cuentan con 1 o más alumnos.

```sql
SELECT 
    g.nombre_grupo, 
    COUNT(a.id) AS total_alumnos
FROM grupos AS g
LEFT JOIN alumnos AS a ON g.id = a.grupo_id
GROUP BY g.id, g.nombre_grupo
HAVING COUNT(a.id) >= 1;
```

---

### 5️⃣ Ordenamiento de Resultados (`ORDER BY`)
Muestra a los alumnos ordenados según su edad de mayor a menor (`DESC`).

```sql
SELECT nombre_completo, edad 
FROM alumnos 
ORDER BY edad DESC;
```

---

## 💻 3. COMANDO DE EJECUCIÓN DESDE TERMINAL

```bash
mysql -u root -p control_escolar < 06_agregaciones/agregaciones.sql
```
