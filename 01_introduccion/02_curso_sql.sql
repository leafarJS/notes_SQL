#eliminar la base de datos ya existente
#drop database if exists curso_sql; NOTA: en producción esta parte debe estar borrada

#crear un nuevo database
show databases;
create database if not exists curso_sql;

# especificar que base de datos se utilizara
use curso_sql;
#crear una tabla en la base de datos
create table if not exists usuario(
nombre varchar(50),
apelllido varchar(50),
correo varchar(100),
primary key(nombre)
);
# visualizar la tabla
describe usuario;

# agregar datos a la taba usuario
insert into usuario values("jorge","callejo","jorge@gmail.com");
insert into usuario values("rafael","flores","rafael@gmail.com");
insert into usuario values("marcelo","vasquez","marcelo@gmail.com");
insert into usuario values("juan","choque","juan@gmail.com");
insert into usuario values("marco","argandoña","marco@gmail.com");
insert into usuario values("fermin","zabala","fermin@gmail.com");

create table if not exists producto(
id int(11) auto_increment,
producto varchar(50),
descripcion text,
precio float(11,2),
primary key(id)
);

describe producto;

#ingresar valores
insert into producto values(null, "pantalon_1", "jean vaquero", 135.50);
insert into producto values(null, "pantalon_2", "jean casual", 145.50);
insert into producto values(null, "pantalon_3", "jean noche", 165.50);
insert into producto values(null, "pantalon_4", "jean diario", 125.50);

select * from usuario;
select * from producto;

#borrar tabla
delete from producto; # borra el contenido pero sigue la secuencia de la primary key donde se quedo

#otra forma de borrar la tabla 
truncate table producto; # borra la tabla y reinicia totalmente todos los campos 

create table if not exists persona(
id integer unsigned not null,
nombre varchar(50),
edad integer unsigned,
primary key(id)
);
#unsigned para resivir numeros positivos
describe persona;


























