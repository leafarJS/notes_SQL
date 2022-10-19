create database if not exists curso_sql;
use curso_sql;

create table if not exists visitantes(
nombre varchar(30),
edad tinyint unsigned,
sexo char(1),
domicilio varchar(30),
ciudad varchar(20), 
telefono varchar(15),
monto_compra decimal (6,2) unsigned
);
insert into visitantes(nombre, edad, sexo, domicilio, ciudad, telefono, monto_compra) values("jorge", 45, "M", "Calle#1", "Ciudad#1", "+59176797502", 150.99);
insert into visitantes values("jorge", 45, "M", "Calle#1", "Ciudad#1", "+59176797502", 15.99);
insert into visitantes values("rafael", 46, "M", "Calle#2", "Ciudad#2", "+59176797501", 50.99);
insert into visitantes values("marcel", 47, "M", "Calle#3", "Ciudad#3", "+59176797503", 60.99);
insert into visitantes values("joel", 48, "M", "Calle#4", "Ciudad#4", "+59176797504", 20.99);
insert into visitantes values("manuela", 45, "F", "Calle#5", "Ciudad#5", "+59176797505", 1299);
insert into visitantes values("yoel", 46, "M", "Calle#6", "Ciudad#6", "+59176797506", 150.99);
insert into visitantes values("jesus", 47, "M", "Calle#7", "Ciudad#7", "+59176797507", 250.99);
insert into visitantes values("josefa", 48, "F", "Calle#8", "Ciudad#8", "+59176797508", 350.99);
insert into visitantes values("lucas", 50, "M", "Calle#9", "Ciudad#9", "+59176797509", 450.99);
insert into visitantes values("pedro", 25, "M", "Calle#10", "Ciudad#10", "+59176797510", 450.99);
insert into visitantes values("judas", 26, "M", "Calle#11", "Ciudad#1", "+59176797511", 150.99);
insert into visitantes values("marco", 25, "M", "Calle#12", "Ciudad#2", "+59176797512", 130.99);
select * from visitantes;
select count(*) from visitantes;
#group by
select count(*) from visitantes where ciudad = "Ciudad#2";
select sexo, count(*) from visitantes group by ciudad;
select ciudad, count(*) from visitantes group by ciudad;
select sexo, sum(monto_compra) from visitantes group by sexo;
select ciudad, sexo, max(monto_compra) from visitantes group by ciudad;
select sexo, max(monto_compra), min(monto_compra) from visitantes group by sexo;
select sexo, max(monto_compra), min(monto_compra), monto_compra*.10, monto_compra-(monto_compra*.10) from visitantes group by sexo;
select ciudad, sexo, avg(monto_compra) from visitantes group by ciudad, sexo order by telefono desc;
select ciudad, count(*) from visitantes where ciudad <> "ciudad#1" group by ciudad;
select ciudad, count(*) from visitantes group by sexo desc;
select sexo, count(*) from visitantes group by sexo asc;


