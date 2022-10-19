use curso_sql;

create table if not exists libros(
id int unsigned auto_increment,
titulo varchar(40) not null, 
editorial varchar(15),
autor varchar(30) default 'Desconocido',
precio decimal(5,2) unsigned default 8.25,
cantidad mediumint unsigned not null,
primary key(id)
);

insert into libros(titulo, editorial, autor, precio, cantidad) values("La Metamorfosis", "Alfagura", "Kafka", 15.8, 10);
insert into libros(titulo, editorial, cantidad) values("La Plaga",15.8, 10);
insert into libros values(null, "La odisea", "creana", "Homero", 150.2, 200);

select * from libros;


#recomendable cuando se trabaja con tipos de facturación 
create table if not exists libros_1(
id int(6) zerofill auto_increment,
titulo varchar(40) not null, 
editorial varchar(15),
autor varchar(30) default 'Desconocido',
precio decimal(5,2) unsigned default 8.25,
cantidad mediumint zerofill not null,
primary key(id)
);
insert into libros_1(titulo, editorial, autor, precio, cantidad) values("La Metamorfosis", "Alfagura", "Kafka", 15.8, 10);
insert into libros_1(titulo, editorial, cantidad) values("La Plaga",15.8, 10);
insert into libros_1 values(null, "La odisea", "creana", "Homero", 150.2, 200);

select * from libros_1;