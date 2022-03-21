--Creo la tabla
create table ingresos(
division_ID int not null,
year int, 
Revenue int,
primary key(division_ID, year));

insert into ingresos (division_id, year, revenue) values(1, 2018, 60);
insert into ingresos (division_id, year, revenue) values(1, 2021, 40);
insert into ingresos (division_id, year, revenue) values(1, 2020, 70);
insert into ingresos (division_id, year, revenue) values(2, 2021, -10);
insert into ingresos (division_id, year, revenue) values(3, 2018, 20);
insert into ingresos (division_id, year, revenue) values(3, 2016, 40);
insert into ingresos (division_id, year, revenue) values(4, 2021, 50);

--Selecciono los del año 2021 y que sean valores positivos
select division_id from ingresos
where year = 2021 AND revenue > 0
GROUP by division_id;

DROP table ingresos;
