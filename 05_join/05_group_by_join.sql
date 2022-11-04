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
unique index (nombre),
foreign key(proveedorid) references proveedor(id)
);
drop table proveedor;
create table if not exists proveedor(
id int unsigned not null auto_increment,
nombre varchar(50),
primary key(id),
unique index (nombre)
);
show tables;

#clave foranea es la representación de un campo que es la clave primaria de otra tabla 

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

insert into proveedor(nombre) values('Lenovo');
insert into proveedor(nombre) values('Logitech');
insert into proveedor(nombre) values('Microsoft'); 
insert into proveedor(nombre) values('HP');

show tables;
select * from productos;
describe productos;

select * from proveedor;
describe proveedor;

#join entre tablas 
select * from productos join proveedor on productos.proveedorid=proveedor.id;

#p es un alias producto, y pro un alias de proveedor 
select p.nombre, p.descripcion, p.precio, pro.nombre from productos 
as p
join proveedor 
as pro
on p.proveedorid= pro.id;

# left join 
select * from productos 
left join proveedor
on proveedor.id=productos.proveedorid;

#right join
select * from proveedor
right join productos
on proveedor.id = productos.proveedorid;

#inner join
select p.nombre, p.descripcion, p.precio, pro.nombre from proveedor as pro
inner join productos as p
on pro.id = proveedorid = pro.id;

#straight join 
select p.nombre, p.descripcion, p.precio, pro.nombre from proveedor as pro
straight_join productos as p
on pro.id = proveedorid = pro.id;

#group_by join
select pro.nombre, count(p.proveedorid) as 'Cantidad de Productos'
from proveedor as pro
join productos as p
on pro.id = p.proveedorid
group by pro.nombre;

select pro.nombre, max(p.precio) as 'Mayor Precio'
from proveedor as pro
join productos as p
on p.proveedorid = pro.id
group by pro.nombre;