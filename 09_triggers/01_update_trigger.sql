/*
es un objeto que se asocia con tablas
*/
create database if not exists dis_triggers;
use dis_triggers;

create table usuarios(
 nombre varchar(30),
 clave varchar(30),
 primary key (nombre)
);

create table passwords(
 numero int auto_increment,
 nombre varchar(30),
 clave varchar(30),
 primary key (numero)
);
/*
sintaxis basica "generar = trigger"
create trigger nombreTrigger
[before | after] [insert | delete | update]
on table
for each now 
begin 
end
drop trigger if exists nombreTrigger
call trigger
*/

delimiter // 
create trigger before_user_update
before update
on usuarios
for each row
begin
	insert into passwords(nombre, clave)
    values(old.nombre, old.clave);
end //
delimiter ;

insert into usuarios values('Jorge', '12345');
select * from usuarios;
select * from passwords;

update usuarios set clave = '54321'
where nombre = 'Jorge';

select * from usuarios;
select * from passwords;












