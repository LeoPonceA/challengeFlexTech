--Creamos las tablas con sus campos

create TABLE nacionalidad(
id_nacionalidad int not null,
descripcion varchar(20),
PRIMARY KEY(id_nacionalidad)
);

create table edad_nacionalidad(
ID_edad_nacionalidad int not null,
id_nacionalidad int,
name varchar(6),
age int, 
primary key(ID_edad_nacionalidad),
FOREIGN KEY(id_nacionalidad) REFERENCES nacionalidad(id_nacionalidad)
);

CREATE TABLE vencimiento_pasaporte(
id_edad_nacionalidad int,
fecha_vecimiento datetime,
FOREIGN KEY(id_edad_nacionalidad) REFERENCES edad_nacionalidad(id_edad_nacionalidad)
);


-- Insertamos NACIONALIDAD
insert into nacionalidad (id_nacionalidad, descripcion) values(1, "Argentino");
insert into nacionalidad (id_nacionalidad, descripcion) values(2, "Italiano");
insert into nacionalidad (id_nacionalidad, descripcion) values(3, "Español");
insert into nacionalidad (id_nacionalidad, descripcion) values(4, "Alemán");

-- Insertamos edades y nacionalidad
insert into edad_nacionalidad (ID_edad_nacionalidad, id_nacionalidad, name, age) 
						values(1, 1, "Bob", 21);
insert into edad_nacionalidad (ID_edad_nacionalidad, id_nacionalidad, name, age) 
						values(2, 1, "Sam", 19); 
insert into edad_nacionalidad (ID_edad_nacionalidad, id_nacionalidad, name, age) 
						values(3, 2, "Jill", 18);
insert into edad_nacionalidad (ID_edad_nacionalidad, id_nacionalidad, name, age) 
						values(4, 3, "Jim", 21);
insert into edad_nacionalidad (ID_edad_nacionalidad, id_nacionalidad, name, age) 
						values(5, 4, "Sally", 19); 
insert into edad_nacionalidad (ID_edad_nacionalidad, id_nacionalidad, name, age) 
						values(6, 2, "Jess", 20);
insert into edad_nacionalidad (ID_edad_nacionalidad, id_nacionalidad, name, age) 
						values(7, 3, "Will", 21);  


insert into vencimiento_pasaporte (ID_edad_nacionalidad, fecha_vecimiento) 
						values(1, 20231001);
insert into vencimiento_pasaporte (ID_edad_nacionalidad, fecha_vecimiento) 
						values(2, 20250125);
insert into vencimiento_pasaporte (ID_edad_nacionalidad, fecha_vecimiento) 
						values(5, 20230122);
insert into vencimiento_pasaporte (ID_edad_nacionalidad, fecha_vecimiento) 
						values(6, 20250615);      
                  


--Seleccionamos todos los registros con las fechas 
SELECT edad_nacionalidad.id_edad_nacionalidad 'ID',
		edad_nacionalidad.name 'Name', edad_nacionalidad.age 'Age',
        convert(varchar(10), cast(vencimiento_pasaporte.fecha_vecimiento as date), 103)
FROM edad_nacionalidad AS edad_nacionalidad
left JOIN vencimiento_pasaporte as vencimiento_pasaporte 
ON edad_nacionalidad.ID_edad_nacionalidad = vencimiento_pasaporte.id_edad_nacionalidad;

DROP TABLE edad_nacionalidad.
DROP TABLE nacionalidad.
DROP TABLE vencimiento_pasaporte.