create database if not exists subConsultas;
use subConsultas;

#drop table editoriales;
#drop table libros;

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
  precio decimal(5,2),
  primary key(codigo)
 );

 insert into editoriales(nombre) values('Planeta');
 insert into editoriales(nombre) values('Emece');
 insert into editoriales(nombre) values('Paidos');
 insert into editoriales(nombre) values('Siglo XXI');

 insert into libros(titulo,autor,codigoeditorial, precio) values('Uno','Richard Bach',1, 135.52);
 insert into libros(titulo,autor,codigoeditorial, precio) values('Ilusiones','Richard Bach',1,846.63);
 insert into libros(titulo,autor,codigoeditorial, precio) values('Aprenda PHP','Mario Molina',4,741.63);
 insert into libros(titulo,autor,codigoeditorial, precio) values('El aleph','Borges',2,951.41);
 insert into libros(titulo,autor,codigoeditorial, precio) values('Puente al infinito','Richard Bach',2,789.21);
 insert into libros(titulo,autor,codigoeditorial, precio) values('El aleph II','Borges',2,151.41);
 
 
  show tables;
  describe libros;
  describe editoriales;
  
  select * from libros;
  select * from editoriales;
  
   select titulo 
   from libros
   where autor='Borges'
   and codigoeditorial = any (
   select e.codigo
   from editoriales as e
   join libros as l
   on codigoeditorial=e.codigo
   where l.autor='Richard Bach'
   );
   
  
  select titulo, precio
  from libros
  where autor='Borges'
  and precio > any (
  select precio
  from libros 
  where autor='Richard Bach'
  );
  
  select titulo, precio
  from libros
  where autor='Borges'
  and precio < any (
  select precio
  from libros 
  where autor='Richard Bach'
  )