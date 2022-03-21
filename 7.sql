--Creamos la tabla con sus campos
create table product(
ID int not null,
name varchar(6), 
Amount_Sold int,
primary key(ID));

insert into product (id, name, amount_sold) values(1, "Cup", 11);
insert into product (id, name, amount_sold) values(2, "Saucer", 22);
insert into product (id, name, amount_sold) values(3, "Plate", 46);
insert into product (id, name, amount_sold) values(4, "Fork", 34);
insert into product (id, name, amount_sold) values(5, "Spoon", 45);
insert into product (id, name, amount_sold) values(6, "Knife", 78);
insert into product (id, name, amount_sold) values(7, "Mug", 23);
insert into product (id, name, amount_sold) values(8, "Glass", 64);
insert into product (id, name, amount_sold) values(9, "Tumbler", 24);

--Selecciono todos los registros y los ordeno de mayor a menor
--limitando por cinco registros
select name as 'Product', amount_sold as 'Amount sold'
from product
ORDER BY amount_sold DESC
LIMIT 5;

DROP table product;