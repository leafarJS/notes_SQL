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

#agregar index ADD DROP INDEX
alter table productos add index i_precio(precio);
describe productos;

alter table productos drop index i_precio;
describe productos;

alter table productos add index i_precio_cantidad(precio, cantidad);
describe productos;

alter table productos drop index i_precio_cantidad;
describe productos;