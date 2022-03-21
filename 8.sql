--Creamos la tabla con sus campos
create table nationality(
ID int not null,
name varchar(20), 
country varchar(20),
primary key(ID));

insert into nationality (id, name, country) values(1, "Bob Smith", "United States");
insert into nationality (id, name, country) values(2, "Jim Jones", "China");
insert into nationality (id, name, country) values(3, "Sam White", "Japan");
insert into nationality (id, name, country) values(4, "Jess Black", "Canada");
insert into nationality (id, name, country) values(5, "Will Wilson", "Germany");
insert into nationality (id, name, country) values(6, "Wilson Scott", "England");
insert into nationality (id, name, country) values(7, "Scott Daniels", "France");
insert into nationality (id, name, country) values(8, "Daniel Jackson", "Canada");
insert into nationality (id, name, country) values(9, "Jack Johnson", "United States");

--Selecciono todos los registros que la nacionalidad sea distinta a EEUU y Canada
select name as 'Name'
from nationality
WHERE country <> 'United States' and country <> 'Canada';

DROP table nationality;