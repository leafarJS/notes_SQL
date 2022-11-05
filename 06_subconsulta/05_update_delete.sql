create database if not exists subConsultas;
use subConsultas;

/*SubConsultas Exists not Exists*/

drop table if exists editoriales;
drop table if exists libros;

 create table editoriales(
  codigo int auto_increment,
  nombre varchar(30),
  primary key (codigo)
 );
 
 create table libros (
  codigo int auto_increment,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial smallint,
  precio decimal(5,2),
  primary key(codigo)
 );

 insert into editoriales(nombre) values('Planeta');
 insert into editoriales(nombre) values('Emece');
 insert into editoriales(nombre) values('Paidos');
 insert into editoriales(nombre) values('Siglo XXI');

 insert into libros(titulo,autor,codigoeditorial,precio) values('Uno','Richard Bach',1,15);
 insert into libros(titulo,autor,codigoeditorial,precio) values('Ilusiones','Richard Bach',2,20);
 insert into libros(titulo,autor,codigoeditorial,precio) values('El aleph','Borges',3,10);
 insert into libros(titulo,autor,codigoeditorial,precio) values('Aprenda PHP','Mario Molina',4,40);
 insert into libros(titulo,autor,codigoeditorial,precio) values('Poemas','Juan Perez',1,20);
 insert into libros(titulo,autor,codigoeditorial,precio) values('Cuentos','Juan Perez',3,25);
 insert into libros(titulo,autor,codigoeditorial,precio) values('Java en 10 minutos','Marcelo Perez',2,30); 
 
 show tables;
 describe editoriales;
 describe libros;
 select * from editoriales;
 select * from libros;
 
 #sintaxis para actualizar
 #update tabla set campo=nuevovalor where campo= (subcosulta)
 
 select codigoeditorial, precio 
 from libros
 where codigoeditorial = 2;
 
 update libros
 set precio = precio+(precio*0.1)
 where  codigoeditorial = (
 select codigo 
 from editoriales
 where nombre='emece'
 );
 
 #delete from tabla where campo = (subconsulta)
 
 delete from libros
 where codigoeditorial = (
 select e.codigo from editoriales as e
 where nombre = 'Planeta'
 );
 
 select * from libros;
 
 
 
 
 
 
 
 
 