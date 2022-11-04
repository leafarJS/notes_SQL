drop database if exists curso_sql;
create database if not exists curso_sql;
use curso_sql;

drop table productos;
drop table proveedor;

create table if not exists productos(
id int unsigned not null auto_increment,
nombre varchar(50) not null,
descripcion text,
proveedorid int unsigned not null,
precio decimal(5,2),
cantidad smallint unsigned default 0,
primary key(id),
unique index (nombre),
foreign key(proveedorid) references proveedor(id)
);

create table if not exists proveedor(
id int unsigned not null auto_increment,
nombre varchar(50),
primary key(id),
unique index (nombre)
);

describe productos;
describe proveedor;


insert into proveedor (nombre) values('Lenovo');
insert into proveedor (nombre) values('Logitech');
insert into proveedor (nombre) values('Microsoft'); 
insert into proveedor (nombre) values('HP');

insert into productos(nombre, descripcion, proveedorid, precio, cantidad) 
values('Lenovo 310', 'La mejor laptop', 1, 100, 50);
insert into productos(nombre, descripcion, proveedorid, precio, cantidad) 
values('Mouse', 'mouse inalambrico', 2, 15.96, 5);
insert into productos(nombre, descripcion, proveedorid, precio, cantidad) 
values('Office 360', 'Paquete de Ofice', 3, 150.69, 30);
insert into productos(nombre, descripcion, proveedorid, precio, cantidad) 
values('HP Y700', 'La mejor laptop del mercado', 4, 10, 15);
insert into productos(nombre, descripcion, proveedorid, precio, cantidad) 
values('Alfombra Lenovo', 'Alfombras asombrosas', 1, 300, 40);
insert into productos(nombre, descripcion, proveedorid, precio, cantidad) 
values('laptop HP 1000', 'No funciona muy bien',4 , 500, 3);
insert into productos(nombre, descripcion, proveedorid, precio, cantidad) 
values('Volante Gamer', 'El mejor volante para jugar', 2, 800, 5);
insert into productos(nombre, descripcion, proveedorid, precio, cantidad) 
values('Disco duro', 'Obten mas capacidad', 3, 70, 80);


select * from productos;
select * from proveedor;

create table cantidadporproveedor
select pro.nombre,count(*) as cantidad
from productos as p
join proveedor as pro
on p.proveedorid=p.id
group by pro.nombre;

select * from cantidadporproveedor;

#insertar datos buscando en valor en otra tabla
insert into productos(nombre, descripcion, precio, proveedorid, cantidad)
select 'Teclado', 'Descripción del producto', 100, id, 500
from proveedor where nombre = 'Logitech';

select * from productos;

show tables;

#Actualizar registros con valores de otra tabla(UPDATE)

#ALTER TABLE table_name DROP COLUMN column_name (cuando de comete errores al indicar el nombre de la columna)
alter table productos drop column proveedo;

alter table productos add proveedor varchar(50);

select * from productos;

# simplificación con join
update productos
join proveedor
on productos.proveedorid = proveedor.id
set productos.proveedor = proveedor.nombre;

select * from productos;

alter table productos drop column proveedorid;
drop table cantidadporproveedor;
drop table proveedor;

select * from productos;
