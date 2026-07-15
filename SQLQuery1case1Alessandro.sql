create database clase1
go

use clase1
go

create table producto(
id int not null,
nombre varchar(15) not null,
clase varchar(10)not null
)
go

create table cliente(
idcl int not null,
nombrecl varchar(20) not null,
direccion varchar(25)not null
)
go

insert into cliente (idcl, nombrecl, direccion)values
(1, 'Alejandro', 'Madrid'),
(2, 'Valeria', 'Bogotá'),
(3, 'Mateo', 'Buenos Aires'),
(4, 'Camila', 'Lima'),
(5, 'Santiago', 'Guadalajara'),
(6, 'Isabella', 'Ciudad de México'),
(7, 'Daniel', 'Caracas'),
(8, 'Luciana', 'Quito'),
(9, 'Sebastián', 'Montevideo'),
(10, 'Martina', 'San José');
go

create table ventas(
id int,
nombre varchar(10),
clase varchar(5)
)
go
select* from cliente
go