create database if not exists curso_sql;
use curso_sql;

create table if not exists libro(
id int unsigned auto_increment not null,
titulo varchar(100),
autor varchar(50),
descripcion text,
editorial varchar(25),
primary key(id)
);
drop table libro;
# tipo index comun
create table if not exists libros(
id int unsigned auto_increment not null,
titulo varchar(100),
autor varchar(50) not null,
descripcion text,
editorial varchar(25) not null,
primary key(id), 
index i_autorEditorial(autor, editorial)
);
show index from libros;

# tipo index unique ()
drop table books;
create table if not exists books(
id int unsigned auto_increment not null,
titulo varchar(100),
autor varchar(50) not null,
descripcion text,
editorial varchar(25) not null,
primary key(id), 
index i_autor(autor),
unique uq_titulo(titulo)
);
show index from books;

insert into books(titulo, autor, descripcion, editorial) values("La odisea", "Homero", "Epico Mitologico", "Hoguera");
insert into books(titulo, autor, descripcion, editorial) values("La iliada", "Homero", "Epico Mitologico", "La Hoguera");
select * from books;

#borra los index 
drop index i_autor on books;
show index from books;
drop index uq_titulo on books;
show index from books;

create table if not exists book(
id int unsigned auto_increment not null,
titulo varchar(100),
autor varchar(50) not null,
descripcion text,
editorial varchar(25) not null,
primary key(id)
);
select * from book;

create index i_editorial on book (editorial);
show index from book;

create unique index uq_titulo on book (titulo);
show index from book 
