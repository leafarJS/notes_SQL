#crear un nuevo database
show databases;
create database if not exists curso_sql;
# especificar que base de datos se utilizara
use curso_sql;
# TIPOS DE DATOS NUMERICOS
#enteros 
TINYINT -127 128 UNSIGNED 255
SMALLINT 32000
MEDIUMINT 5000000
INT 20000000 O INTEGER
BIGINT 200000000
#decimales
FLOAT 
precio float(6.24)
DOUBLE
precio double(4.53)
DECIMAL
#decimal no redondea 64 / 30 decimales
salario decimal(2.15)
# CADENAS O ALFANUMERICOS 
CHAR  255 
nombre char(1) F O M femenino o masculino ej. char(100) juan + 96
VARCHAR 255 - 65534
nombre varchar(100) solo ocupa el espacio 
BINARY Y VARBINARY

TEXT 
para textos demasiado grandes 
BLOB 65534
es para imagenes pero ya no es muy utilizado
TINYBLOB 255, MEDIUMBLOB, LONGBLOB 4GB
ENUM 65535
SET  listas tipos unico
#FECHA y HORA
DATE 
AAAA-MM-DD
#NUMERO CONTINUO
20220917
2022-07-15
DATETIME
AAAA-MM-DD HH:MM:SS
TIME
HH:MM:SS  35 dias atras y 35 dias adelante
TIMESTAMP
AAAA-MM-DD
AA-MM-DD
ON UPDATE CURRENT_TIMESTAMP actualizar en line
YEAR
AAAA
































