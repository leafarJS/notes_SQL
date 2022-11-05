create database if not exists pro_alm;
use pro_alm;

drop table if exists libros;

create table libros(
  codigo int auto_increment,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  stock int,
  primary key(codigo)
);

 insert into libros(titulo,autor,editorial,precio,stock) 
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',20.00, 9);
 insert into libros(titulo,autor,editorial,precio,stock)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Plaza',35.00, 50);
 insert into libros(titulo,autor,editorial,precio,stock)
  values('Aprenda PHP','Mario Molina','Siglo XXI',40.00, 3);
 insert into libros(titulo,autor,editorial,precio,stock)
  values('El aleph','Borges','Emece',10.00, 18);
 insert into libros(titulo,autor,editorial,precio,stock)
  values('Ilusiones','Richard Bach','Planeta',15.00, 22);
 insert into libros(titulo,autor,editorial,precio,stock)
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.00, 7);
 insert into libros(titulo,autor,editorial,precio,stock)
  values('Martin Fierro','Jose Hernandez','Planeta',20.00, 3);
 insert into libros(titulo,autor,editorial,precio,stock)
  values('Martin Fierro','Jose Hernandez','Emece',30.00, 70);
 insert into libros(titulo,autor,editorial,precio,stock)
  values('Uno','Richard Bach','Planeta',10.00, 120);
  
  show tables;
  describe libros;
  select * from libros;
  
drop procedure if exists pro_book_stock;

delimiter //
create procedure pro_book_stock()
begin
 select * from libros where stock <= 10;
end //
delimiter ;

call pro_book_stock();

delimiter //
create procedure pro_book_autor(in p_autor varchar(30))
begin
	select titulo, editorial, precio from libros
    where autor=p_autor;
end //
delimiter ;


call pro_book_autor('Richard Bach');

delimiter //
create procedure pro_library(
	in p_autor varchar(30),
    in p_editorial varchar(20)
)
begin
	select titulo, editorial, precio
    from libros
    where autor = p_autor
    and editorial = p_editorial;
end //
delimiter ;

call pro_library('Borges', 'Emece');
 
  
  
  
  
  
  
  
  
  
  