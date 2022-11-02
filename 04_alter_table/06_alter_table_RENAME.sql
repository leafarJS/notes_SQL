drop database if exists curso_sql;
create database if not exists curso_sql;
use curso_sql;

#modificar tablas existentes 
drop table productos;
create table if not exists productos(
id int unsigned not null auto_increment,
nombre varchar(50),
precio int(11),
cantidad smallint(5) unsigned,
primary key(id)
);
describe productos;
create table if not exists otros_productos(
id int unsigned not null auto_increment,
nombre varchar(50),
precio int(11),
cantidad smallint(5) unsigned,
primary key(id)
);
describe otros_productos;
alter table otros_productos add item int(10) unsigned;

#CAMBIAR EL NOMBRE A LA TABLA
show tables;

alter table productos rename product;
describe product;

rename table product to items;
describe items;

show tables;

#cambiar los nombres entre tablas 
rename table productos to change_table,
otros_productos to productos,
change_table to otros_productos;

show tables;
describe productos;
describe otros_productos;