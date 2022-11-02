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