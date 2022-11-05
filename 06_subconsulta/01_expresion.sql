create database if not exists subConsultas;
use subConsultas;

#una subconsulta es una instrucción SELECT aninada dentro de una instrucción 
#select, select...into, insert...inot, delete, o update o dentro de otra subconsulta. 

create table if not exists libros(
  codigo int auto_increment,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo)
);

insert into libros(titulo,autor,editorial,precio) 
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',20.00);
 insert into libros(titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Plaza',35.00);
 insert into libros(titulo,autor,editorial,precio)
  values('Aprenda PHP','Mario Molina','Siglo XXI',40.00);
 insert into libros(titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',10.00);
 insert into libros(titulo,autor,editorial,precio)
  values('Ilusiones','Richard Bach','Planeta',15.00);
 insert into libros(titulo,autor,editorial,precio)
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.00);
 insert into libros(titulo,autor,editorial,precio)
  values('Martin Fierro','Jose Hernandez','Planeta',20.00);
 insert into libros(titulo,autor,editorial,precio)
  values('Martin Fierro','Jose Hernandez','Emece',30.00);
 insert into libros(titulo,autor,editorial,precio)
  values('Uno','Richard Bach','Planeta',10.00);
  
  show tables;
  select * from libros;
  select * from libros where precio > 35;
  
  # sintaxis basica de subconsutas
  # select campos from tabla where campo operador(subconsulta)
  # select campo operador(subconsulta) from tabla
  
  select titulo, precio, precio-(select max(precio) from libros) 
  as diferencia
  from libros
  where titulo = 'Martin Fierro';
  
  select titulo, autor, precio 
  from libros
  where precio=(select max(precio) from libros);
  
  
  
  
  
  
  
  
  
  