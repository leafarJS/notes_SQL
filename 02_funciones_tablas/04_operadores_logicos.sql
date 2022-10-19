create database if not exists curso_sql;
use curso_sql;

create table if not exists productos(
id integer unsigned not null auto_increment,
nombre varchar(50),
proveedor varchar(50),
descripcion text,
precio decimal(5,2) unsigned,
cantidad smallint unsigned,
primary key(id)
);

insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Laptop HP','HP','Las mejores laptop',155.69,10);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Mouse','Logitech','Las mejores mouse',20.86,30);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Teclado','Logitech','Las mejores teclados',80.12,87);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Laptop DELL','Dell','Las mejores laptop',200.8,19);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Pantalla','HP','Las mejores Pantallas',155.69,30);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Impresora','HP','Las mejores Impresoras',155,170);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Camaras','logitech','Las mejores Camaras',500,12);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Xbox 360','Xbox Microsoft','Las mejores Consolas',103,158);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('PlayStation 4','Sony','Las mejores play',15.69,500);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Lenovo 310','Lenovo','Las mejores laptop',155.69,140);

select * from productos;

select * from productos where (proveedor = "HP") and (precio <= 200);
select * from productos where (proveedor = "HP") and (precio >= 150);

select * from productos where (proveedor = "HP") or (cantidad > 150);
select * from productos where (proveedor = "HP") or (cantidad < 150);

select * from productos where (proveedor = "HP") xor (precio <= 200);
select * from productos where not (proveedor = "HP");

# and = y
# or = y / o
# xor = o
# not = "not" !



