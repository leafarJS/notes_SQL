drop database if exists curso_sql;
create database if not exists curso_sql;
use curso_sql;

drop table productos;

create table if not exists productos(
id int unsigned not null auto_increment,
nombre varchar(50) not null,
descripcion text,
proveedorid int unsigned not null,
precio decimal(5,2),
cantidad smallint unsigned default 0,
primary key(id),
unique index (nombre)
);

describe productos;

select * from productos;

create table if not exists proveedor(
id int unsigned not null auto_increment,
nombre varchar(50),
primary key(id),
unique index (nombre)
);

select * from proveedor;


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

 #funcion de control if case con varias tablas 
 select pro.nombre,
 if(count(p.proveedorid)> 0, 'Si', 'No') as consulta
 from proveedor as pro
 left join productos as p
 on pro.id = p.proveedorid
 group by pro.nombre;
 
 select pro.nombre, 
 case count(p.proveedorid) when 0 then 'No'
 else 'Si' end as 'consulta'
 from proveedor as pro
 left join productos as p
 on pro.id = p.proveedorid
 group by pro.nombre;
 
 
 # variables 
 #@nombreVariable:=

select @precioMayor:= max(precio) from productos;

select * from productos where precio = @precioMayor;

select p.nombre, p.descripcion, pro.nombre
from productos as p
join proveedor as pro
on p.proveedorid = pro.id
where p.precio = @precioMayor;