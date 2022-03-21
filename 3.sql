--Creamos la tabla con sus campos
create table anios(
ID int not null ,
year int,
primary key(ID));

insert into anios (id, year) values(1, 1776);
insert into anios (id, year) values(2, 2021);
insert into anios (id, year) values(3, 1643);
insert into anios (id, year) values(4, 1865);
insert into anios (id, year) values(5, 1969);

--Redondeo y casteo con un float para que tome los decimales
select ceil( 
  1700/cast(100 as float) )
  from anios;

DROP table anios;
