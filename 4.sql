--Creamos la tabla con sus campos
create table par_impar(
ID int not null,
value int, 
primary key(ID));

insert into par_impar (id, value) values(1, 4);
insert into par_impar (id, value) values(2, 11);
insert into par_impar (id, value) values(3, 57);
insert into par_impar (id, value) values(4, 24);
insert into par_impar (id, value) values(5, 47);

--Calculo el resto y si es 0, imprimo PAR, si no, IMPAR
select case WHEN value % 2 = 0 then 'Par' ELSE 'Impar' end as resultado 
from par_impar;

DROP table par_impar;
