--Creamos la tabla con sus campos
create table personas(
ID int not null,
name varchar(6), 
primary key(ID));

insert into personas (id, name) values(1, "bob");
insert into personas (id, name) values(2, "Sam");
insert into personas (id, name) values(3, "Jill");
insert into personas (id, name) values(4, "Jim");
insert into personas (id, name) values(5, "Sally");
insert into personas (id, name) values(6, "Jess");
insert into personas (id, name) values(7, "Will");


--Concatenamos el nombre con el texto
select '¡Hola ' || name || '! ¿Cómo estás?' as Saludo
from personas;

DROP table personas;