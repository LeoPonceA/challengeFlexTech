--Creamos la tabla CONVERSION, ID es primery key, VALOR es un entero
create table conversion(
ID int not null,
valor int, 
primary key(ID));

--Insertamos los registros
insert into conversion (id, valor) values(1, -56);
insert into conversion (id, valor) values(2, 76);
insert into conversion (id, valor) values(3, -84);
insert into conversion (id, valor) values(4, 96);
insert into conversion (id, valor) values(5, -47);

--Multiplicamos cada valor de VALOR por -1
select ( valor * -1 ) from conversion;

DROP conversion;