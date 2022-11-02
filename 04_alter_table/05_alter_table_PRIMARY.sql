drop database if exists curso_sql;
create database if not exists curso_sql;
use curso_sql;

#modificar tablas existentes 
drop table productos;
create table if not exists productos(
id int unsigned not null,
nombre varchar(50)
);

#AGREGAR PRIMARY KEY
alter table productos add primary key(id);
describe productos;

alter table productos modify id int unsigned auto_increment not null;
describe productos;

#solo puede haber un primary key por tabla

#para borrar una primary key primero se modifica 
alter table productos modify id int unsigned;
alter table productos drop primary key;

describe productos;