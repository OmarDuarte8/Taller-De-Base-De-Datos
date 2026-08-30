# Semana 01 - Taller de Base de Datos

## 🎯 Objetivo

¿Qué aprendí durante la práctica?Durante esta práctica se aprendió a comprender y configurar la arquitectura cliente-servidor de un Sistema de Gestión de Base de Datos (SGBD) en un entorno Linux. Específicamente, se entendió cómo administrar paquetes del sistema, verificar y controlar servicios en segundo plano mediante systemctl, identificar procesos y puertos de red activos, y realizar conexiones locales para ejecutar consultas SQL básicas utilizando herramientas de consola.
    
## 🐧 Entorno

¿Qué sistema operativo utilicé? Ubuntu LTS 26.04

¿Qué versión? 26.04

¿Qué usuario?omar8

## 📦 Paquetes

¿Qué es un paquete? Es un archivo comprimido que tiene todo el contenido para instalar un programa

¿Qué función cumple apt? La funcion es sincronizar el dispositivo con los servidores de Ubuntu por si hay alguna version mas recientes de las aplicaciones intaladas

## 🗄️ SGBD

¿Qué es un SGBD? Es un sistema de gestion de base de datos

¿Qué SGBD utilizamos? MariaDB

## 🖥️ Servidor

¿Qué es un servidor de base de datos? Es la computadora (virtual o fisica) y el software encargados de gestonar la base de datos

## ⌨️ Cliente

¿Qué es el cliente mysql? Es el medio por el cual el usuario se comunica con el servidor de la base de datos

## ⚙️ Servicio

¿Cómo comprobé que el servicio estaba funcionando?Se comprobó ejecutando el comando sudo systemctl status mariadb, el cual indicó en su salida el estado active (running) en color verde y mostró que el demonio aceptaba peticiones en segundo plano.

## 🔎 Proceso

¿Qué proceso ejecuta el servidor?El servidor ejecuta el proceso principal denominado mysqld (el demonio de MariaDB), el cual se mantiene activo en segundo plano gestionando las solicitudes y peticiones de las bases de datos.

## 🔌 Puerto

¿Qué puerto encontré?Se encontró abierto y escuchando el puerto estándar 3306.

¿Cómo lo comprobé?Se comprobó con comandos de red en la terminal como ss -lntp o netstat, verificando que el proceso del servidor estuviera vinculado al puerto local.

## 👤 Usuario y autenticación

¿Qué usuario utilicé?Se utilizó el usuario administrador  (sudo).

¿Qué significa autenticación?es la verificación mediante  el sistema que comprueba la identidad de un usuario (¿Quién eres?) antes de permitirle el acceso al sistema o base de datos.

## 🚪 Primera conexión

¿Qué ocurrió al conectarme?Al ejecutar el comando de conexión, el cliente se comunicó  con el servidor local, mostrando un mensaje de bienvenida  y cambiando el indicador de comandos a la consola interactiva MariaDB a none

## 🧪 Primera consulta SQL

¿Qué ocurrió al ejecutar SELECT VERSION()?El servidor procesó la instrucción y devolvió una tabla con la versión exacta de MariaDB instalada en el sistema (por ejemplo, 11.8.6-MariaDB).

¿Qué ocurrió al ejecutar SHOW DATABASES?El servidor consultó sus datos   y desplegó una lista  con las bases de datos predeterminadas del sistema,  como information_schema, mysql, performance_schema y sys.

## 🔥 Retos

¿Qué descubrí?Se descubrió cómo interactúan los componentes de bajo nivel en Linux al administrar un SGBd

## 🧪 Experimento

¿Qué ocurrió al detener el servidor?Al ejecutar el comando para detener el servicio (stop), el demonio mysqld finalizó su ejecución y el sistema operativo cerró los canales de escucha.

¿Qué ocurrió al intentar conectarme?Al intentar establecer una conexión con el SGBD mientras el servidor estaba apagado, la terminal arrojó un error de conexión debido a que no había ningún proceso activo atendiendo peticiones.

¿Qué ocurrió después de iniciarlo nuevamente?Al arrancar el servicio otra vez con el comando start, el demonio volvió a ponerse en marcha, permitiendo de nuevo el acceso por dl cliente y respondiendo con normalidad a las consultas.

## 🔄 Recorrido de una consulta

Explica el recorrido desde el cliente hasta el servidor y de regreso.
La orden SQL se escribe e inicia en la interfaz del cliente (por ejemplo, mysql), el cual la empaqueta y la envía a través de un mecanismo de comunicación local como el puerto de red 3306. El servidor (mysqld) recibe la petición, la interpreta, ejecuta la operación solicitada contra los archivos de la base de datos, procesa el resultado y lo devuelve a por  la misma vía para que el cliente finalmente lo imprima en la pantalla en forma de tabla.

## 💭 Reflexión final

¿Qué aprendí sobre la comunicación entre cliente y servidor?
Se aprendió que el acceso a los datos no ocurre de forma mágica, sino que depende de un software cliente que actúa como la interfaz de comandos y un proceso de servidor (mysql) opera en segundo plano para escuchar, procesar y responder de forma segura a las solicitudes.
