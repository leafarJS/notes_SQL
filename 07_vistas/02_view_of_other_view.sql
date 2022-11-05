#vistas basadas en otras vistas
create database if not exists vistas;
use vistas;

drop table if exists empleados;
drop table if exists secciones;

 create table secciones(
  codigo int auto_increment,
  nombre varchar(30),
  sueldo decimal(5,2),
  primary key(codigo)
 );

 create table empleados(
  legajo int auto_increment,
  documento char(8),
  sexo char(1),
  apellido varchar(40),
  nombre varchar(30),
  domicilio varchar(30),
  seccion int not null,
  cantidadhijos int,
  estadocivil char(10),
  fechaingreso date,
  primary key(legajo)
 );
 
insert into secciones(nombre,sueldo) values('Administracion', 300);
 insert into secciones(nombre,sueldo) values('Contaduría', 400);
 insert into secciones(nombre,sueldo) values('Sistemas', 500);

 insert into empleados (documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)
   values ('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','2010-10-10');
 insert into empleados (documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)   
   values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','2010-02-10');
 insert into empleados (documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)
   values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','2018-07-12');
 insert into empleados (documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)
   values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','2018-10-09');
 insert into empleados (documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)
   values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2019-05-09');
 
   drop view if exists view_empleado;
   create view view_empleado as select concat(apellido, ' ', e.nombre)
   as nombre, sexo, s.nombre 
   as seccion, cantidadhijos
   from empleados as e
   join secciones as s
   on codigo=seccion;
   
   drop view if exists view_ingreso_emp;
   create view view_ingreso_emp (f_ing, cantidad)
   as select extract(year from fechaingreso)
   as f_ing, count(*)
   as cantidad from empleados
   group by f_ing;
   
   
select * from view_empleado;
select * from view_ingreso_emp;

create view view_emp_children
as select nombre, sexo, seccion
from view_empleado
where cantidadhijos > 2;

select * from view_emp_children;












