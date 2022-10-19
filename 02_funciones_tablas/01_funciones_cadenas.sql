#COLUMNAS CALCULADAS
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

insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Laptop HP','HP','Las mejores laptop',155.69,50);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Mouse','Logitech','Las mejores mouse',20.86,30);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Teclado','Logitech','Las mejores teclados',80.12,100);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Laptop DELL','Dell','Las mejores laptop',200.8,15);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Pantalla','HP','Las mejores Pantallas',155.69,50);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Impresora','HP','Las mejores Impresoras',155,70);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Camaras','logitech','Las mejores Camaras',500,20);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Xbox 360','Xbox Microsoft','Las mejores Consolas',103,10);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('PlayStation 4','Sony','Las mejores play',15.69,50);
insert into productos(nombre, proveedor, descripcion, precio, cantidad) values('Lenovo 310','Lenovo','Las mejores laptop',155.69,50);

select nombre, precio, cantidad from productos;
select nombre, precio, cantidad, precio*cantidad from productos;
select nombre, precio, precio*0.1, precio-(precio*0.1) from productos;

#MANEJO DE CADENAS 
#concatenar
select concat('Hola, ', ' ', 'como estas?');
select concat_ws('-','Miguel','Lopez','Martinez');
select length('Hola a todos');

select left('Buenas Noches', 8);
select right('Buenas Noches', 8);

select ltrim('    espacios    a');
select rtrim('    espacios    ');
select trim('           camino            a        ');
select length(trim('           camino            a        '));
select length(trim('           camino            a'));
select length(trim('           camino'));

select replace('www.udemy.com', 'w', 'x');
select repeat('SQL ', 6);
select reverse('Python');

select lower('Hola Como Estas?');
select upper('paciencia y buen humor');
select lcase('Hola Como Estas?');
select ucase('paciencia y buen humor');

select concat_ws(' / ', nombre,precio) from productos;
select left(nombre, 3) from productos;
select lower(nombre), upper(descripcion) from productos;
















