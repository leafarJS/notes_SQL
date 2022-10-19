#crear un bse de datos
create database curso_sql;
#mostrar una base de datos
show databases;
#usar la base de datos 
use curso_sql;
#crear una tabla en la base de datos
create table usuario(
nombre varchar(50),
edad int(15)
);
#mostrar las tablas que tiene la base de datos 
show tables;
# mostrar el tipo de dato que tiene la tabla
describe usuario;
#borrar la tabla de datos 
drop table producto;
drop table usuario;

# crear una nueva tabla de datos en la base de datos 
create table alumnos(
nombre varchar(50),
apellido varchar(50), 
direccion varchar(100), 
telefono varchar (15), 
edad int(2)
);
# maneras de insertar datos en las columnas de la tabla de datos 
insert into alumnos(nombre, apellido, direccion, telefono, edad) values("fernando", "callejo", "calle#3", "767-97502", 17);
insert into alumnos values("rafael", "flores", "calle#4", "767-97503", 46);
insert into alumnos(nombre, telefono, edad) values("oscar", "767-50202", 30);
insert into alumnos(nombre, apellido, direccion, telefono, edad) values("jorge", "choque", "calle#5", "767-97508", 47);
# seleccionar las columnas de la tabla
select  * from alumnos;
select nombre, direccion from alumnos;
select edad, telefono from alumnos;
# selecionar las columnas cunado cumpla una condicion 
select * from alumnos where nombre = "jorge";
select * from alumnos where nombre = "coco";

select nombre, edad from alumnos where nombre = "jorge";
select nombre, edad from alumnos where edad = "45";
# operadores relacionales 
# = igual
# <> distinto
# > mayor que
# >= mayor o igual que
# < menor que
# <= menor o igual que 
select * from alumnos where nombre = "jorge";
select * from alumnos where edad >= 45;
select * from alumnos where nombre <> "jorge";
select nombre, apellido from alumnos where edad > 45;
select * from alumnos where apellido <> "null";
# borrar registros de una tabla 
delete from alumnos; # error 1175 | edit | preferens | SQL Editor | desmarcar save update | ok | reiniciar
# borrar un registro especifico de la tabla de datos 
delete from alumnos where nombre = "jorge"; 
# NOTA: RECOMENDABLE EN TODO MOMENTO PARA BORRAR DATOS 
# Actualización de los registros en la tabla de datos 
select * from alumnos;
update alumnos set edad  = 33;
update alumnos set apellido = 'choque' where nombre = 'MAMANI';
update alumnos set edad = 17 where nombre = 'RAMBO';
update alumnos set nombre = 'rafael' where edad = 45;

























































