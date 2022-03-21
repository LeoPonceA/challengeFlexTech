--Creamos la tabla con sus campos
create table edad(
ID int not null,
name varchar(6),
age int, 
primary key(ID));

insert into edad (id, name, age) values(1, "bob", 21);
insert into edad (id, name, age) values(2, "Sam", 19);
insert into edad (id, name, age) values(3, "Jill", 18);
insert into edad (id, name, age) values(4, "Jim", 21);
insert into edad (id, name, age) values(5, "Sally", 19);
insert into edad (id, name, age) values(6, "Jess", 20);
insert into edad (id, name, age) values(7, "Will", 21);

--Hacemos el COUNT por edad
select age, count(*)
from edad
GROUP by age;

DROP table edad;

