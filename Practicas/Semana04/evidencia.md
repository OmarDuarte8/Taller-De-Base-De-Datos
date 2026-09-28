---

# 📋 PRÁCTICA 04 — LENGUAJE DE MANIPULACIÓN DE DATOS (DML)

* **Institución:** Tecnológico Nacional de México (TecNM)
* **Alumno:** Omar Said Duarte Ruiz
* **Número de Control:** 242240010
* **Fecha:** Septiembre de 2026

---

## 🎯 1. Objetivo

Aplicar las sentencias del Lenguaje de Manipulación de Datos (DML) —específicamente `INSERT`, `UPDATE` y `DELETE`— mediante la consola de MariaDB en un entorno GNU/Linux (Ubuntu), validando la correcta persistencia de la información y el comportamiento de las restricciones de integridad en bases de datos relacionales.

## 🗄️ 2. Base de datos utilizada

* **Nombre:** `transporte_escolar`
* **Descripción:** Base de datos  diseñada para la gestión  de rutas y choferes de transporte escolar.

## 📊 3. Tablas utilizadas

* **`choferes`:** Almacena la información de los conductores (identificador, nombre, teléfono, licencia, años de experiencia, estado y relación con la ruta).
* **`rutas`:** Almacena los trayectos asignados al transporte.

---

## 📥 4. INSERT

### 👤 Registro individual

Se realizó la inserción de un registro único en la tabla `choferes` especificando explícitamente las columnas objetivo para garantizar el orden de los datos.



### 📦 Inserción múltiple

Se ejecutó una sola sentencia de inserción para agregar múltiples registros de manera eficiente utilizando una lista de valores separados por comas.



### ⚠️ Pruebas de constraints

Se realizaron pruebas para verificar la respuesta del SGBD ante violaciones de restricciones de integridad.


---

## ✏️ 5. UPDATE

### 🔍 Modificación individual

Se actualizó un campo específico de un registro utilizando la cláusula `WHERE` para restringir el cambio a una sola fila.



### 📑 Modificación múltiple

Se modificó el estado de múltiples registros utilizando una condición lógica en el filtro `WHERE`.



### 📊 Prueba controlada

Se validó el uso de la función de control para medir el impacto de la sentencia ejecutada en la última operación.



---

## 🗑️ 6. DELETE

### 🔍 Eliminación individual

Se consultó previamente el registro seleccionado para asegurar su existencia antes de proceder a la baja.



### ⚡ Eliminación controlada

Se ejecutó la baja del registro aplicando estrictamente la cláusula `WHERE`.



### 🛡️ Prueba de integridad referencial

Se verificó el estado de la tabla posterior a la eliminación para comprobar la efectividad de la transacción.



---

## ❌ 7. Errores encontrados

1. **Error 1452 (23000):** Restricción de llave foránea al intentar relacionar un registro con una clave primaria inexistente en la tabla padre (`rutas`).
2. **Error 1048 (23000):** Violación de restricción de nulidad al intentar insertar un valor nulo en una columna configurada como obligatoria (`NOT NULL`).

## 🧠 8. Análisis de errores

Los mensajes de error arrojados por MariaDB demostraron que el motor de base de datos cumple un rol activo en la protección de la integridad referencial y de dominio. Ante cualquier intento de vulnerar las reglas establecidas en el esquema relacional, el SGBD bloquea la transacción de forma inmediata para evitar inconsistencias en los datos.

## 👁️ 9. Verificaciones

Todas las modificaciones, inserciones y eliminaciones fueron validadas mediante consultas `SELECT` ejecutadas de forma constante antes y después de cada instrucción DML, asegurando la trazabilidad de los cambios en el sistema gestor.

## 🚨 10. Reto UPDATE sin WHERE

* **Análisis:** Ejecutar un `UPDATE` sin la cláusula `WHERE` provoca que la modificación se aplique de forma masiva a **todos** los registros de la tabla de manera irreversible, alterando datos que no debían ser tocados. Por ello, el uso de filtros estrictos es una norma de seguridad obligatoria en administración de bases de datos.

## ⚠️ 11. Reto DELETE sin WHERE

* **Análisis:** Un comando `DELETE` ejecutado sin restricciones de filtrado borra la totalidad de las filas contenidas en la tabla, vaciándola por completo (a diferencia de un `TRUNCATE`, aunque con implicaciones similares de pérdida masiva de información). Su ejecución por descuido representa una falla crítica de operación.

## 💡 12. Reflexión final

El manejo correcto del Lenguaje de Manipulación de Datos (DML) es fundamental para garantizar que la información almacenada en un sistema mantenga su veracidad, orden y consistencia. Las pruebas realizadas permitieron comprender la importancia crítica de utilizar siempre cláusulas restrictivas (`WHERE`) en las operaciones de actualización y eliminación, así como el valor de las restricciones estructurales para blindar las bases de datos ante errores humanos.




