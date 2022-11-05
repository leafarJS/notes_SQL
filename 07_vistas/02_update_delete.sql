create database if not exists vistas;
use vistas;

drop table if exists alumnos;
drop table if exists profesores;
 
 create table alumnos(
  documento char(8),
  nombre varchar(30),
  nota decimal(4,2),
  codigoprofesor int,
  primary key(documento)
 );

 create table profesores (
   codigo int auto_increment,
   nombre varchar(30),
   primary key(codigo)
 );


 insert into alumnos values('30111111','Ana Algarbe', 5.1, 1);
 insert into alumnos values('30222222','Bernardo Bustamante', 3.2, 1);
 insert into alumnos values('30333333','Carolina Conte',4.5, 1);
 insert into alumnos values('30444444','Diana Dominguez',9.7, 1);
 insert into alumnos values('30555555','Fabian Fuentes',8.5, 2);
 insert into alumnos values('30666666','Gaston Gonzalez',9.70, 2);

 insert into profesores(nombre) values ('Yoselin Valdez');
 insert into profesores(nombre) values ('Luis Agromonte');
 
 show tables;
 select * from alumnos;
 select * from profesores;
 
 create view view_note_student as 
 select documento, 
 a.nombre as nameStudent,
 p.nombre as nameTeacher,
 nota, 
 codigoprofesor from alumnos as a
 join profesores as p
 on a.  codigoprofesor=p.codigo
 where nota >= 7;
 
 select * from view_note_student;
 
 insert into view_note_student(documento, nameStudent,nameTeacher, nota) values('30777777', 'Juan Pablo',1,10.0);
 insert into view_note_student(documento, nameStudent,nameTeacher, nota) values('30888888', 'Jorge Rafael',2,8.5);
 
 select * from alumnos;
 
  update view_note_student set nota=10 where documento='30444444';
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 