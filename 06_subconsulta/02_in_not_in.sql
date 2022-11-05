create database if not exists subConsultas;
use subConsultas;

#una subconsulta es una instrucción SELECT aninada dentro de una instrucción 
#select, select...into, insert...inot, delete, o update o dentro de otra subconsulta. 

 create table if not exists editoriales(
  codigo int auto_increment,
  nombre varchar(30),
  primary key (codigo)
 );
 
 create table if not exists libros (
  codigo int auto_increment,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial smallint,
  primary key(codigo)
 );

 insert into editoriales(nombre) values('Planeta');
 insert into editoriales(nombre) values('Emece');
 insert into editoriales(nombre) values('Paidos');
 insert into editoriales(nombre) values('Siglo XXI');

 insert into libros(titulo,autor,codigoeditorial) values('Uno','Richard Bach',1);
 insert into libros(titulo,autor,codigoeditorial) values('Ilusiones','Richard Bach',1);
 insert into libros(titulo,autor,codigoeditorial) values('Aprenda PHP','Mario Molina',4);
 insert into libros(titulo,autor,codigoeditorial) values('El aleph','Borges',2);
 insert into libros(titulo,autor,codigoeditorial) values('Puente al infinito','Richard Bach',2);
  
  show tables;
  select * from libros;
  select * from editoriales;
  
  select nombre
  from editoriales
  where codigo
  in (select codigoeditorial from libros where autor='Richard Bach');
  
  select codigoeditorial
  from libros
  where autor = 'Richard Bach';
  
  select distinct nombre
  from editoriales as e
  join libros 
  on codigoeditorial=e.codigo
  where autor = 'Richard Bach';
  
  select nombre
  from editoriales
  where codigo
  not in (select codigoeditorial from libros where autor='Richard Bach');
  
  
  
  
  
  
  
  
  