drop database if exists curso_sql;
create database if not exists curso_sql;
use curso_sql;

#modificar tablas existentes 
drop table productos;
create table if not exists productos(
id int unsigned not null auto_increment,
nombre varchar(50),
primary key(id)
);
#ver los campos 
describe productos;

alter table productos add precio int;
describe productos;

alter table productos add cantidad smallint unsigned not null;
describe  productos;

#Eliminar una columna de la tabla
alter table productos drop precio;
describe productos;

alter table productos drop cantidad, drop nombre;
describe productos;

alter table productos add nombre varchar(50) not null;
describe productos;

#MODIFY modificar un campo de la tabla
alter table productos modify nombre varchar(100) not null;
describe productos;

alter table productos modify precio decimal(5,2) not null;
describe productos;

# CAMBIAR EL CAMPO A UN CAMPO 
alter table productos change cantidad stock int;
describe productos;

alter table productos change nombre noma varchar(50);
describe productos;
alter table productos change noma name varchar(50);
describe productos;