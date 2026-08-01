-- crear la base de datos de la universidad
-- create the university database
create database universidad_del_marketing;
go

-- usar la base de datos creada
-- use the created database
use universidad_del_marketing;
go

-- crear tabla asignatura
-- create asignatura table
create table asignatura (
    id_asignatura int not null,
    nombre_asignatura varchar(100) not null,
    profesor_asignado varchar(100) not null,
    -- tinyint para numeros pequenos (hasta 255)
    -- tinyint for small numbers (up to 255)
    creditos tinyint not null,
    primary key (id_asignatura)
);
go

-- crear tabla profesor
-- create profesor table
create table profesor (
    id_profesor int not null,
    nombre_profesor varchar(50) not null,
    apellido_profesor varchar(50) not null,
    departamento varchar(50) not null,
    -- bit para verdadero (1) o falso (0)
    -- bit for true (1) or false (0)
    activo bit not null,
    primary key (id_profesor)
);
go

-- crear tabla alumno
-- create alumno table
create table alumno (
    id_estudiante int not null,
    -- varchar para dni de longitud variable
    -- varchar for variable length dni
    dni varchar(15) not null,
    nombre_alumno varchar(50) not null,
    apellido_alumno varchar(50) not null,
    domicilio varchar(100) not null,
    primary key (id_estudiante)
);
go

-- crear tabla aula
-- create aula table
create table aula (
    id_aula int not null,
    edificio varchar(50) not null,
    -- smallint para numeros enteros pequenos
    -- smallint for small integers
    capacidad smallint not null,
    materia_impartida varchar(100) not null,
    primary key (id_aula)
);
go

-- crear tabla calificaciones
-- create calificaciones table
create table calificaciones (
    id_calificacion int not null,
    id_profesor int not null,
    -- decimal(5,2) = 5 digitos totales, 2 decimales. Ej: 100.00
    -- decimal(5,2) = 5 total digits, 2 decimals. Ex: 100.00
    nota decimal(5,2) not null,
    id_estudiante int not null,
    id_asignatura int not null,
    -- date para fechas
    -- date for dates
    fecha_registro date not null,
    primary key (id_calificacion)
);
go

-- insertar 20 registros en asignatura
-- insert 20 records in asignatura
insert into asignatura (id_asignatura, nombre_asignatura, profesor_asignado, creditos) values
(1, 'matematicas i', 'prof. garcia', 4),
(2, 'programacion basica', 'prof. martinez', 3),
(3, 'bases de datos', 'prof. lopez', 4),
(4, 'fisica general', 'prof. rodriguez', 5),
(5, 'quimica organica', 'prof. fernandez', 4),
(6, 'historia universal', 'prof. sanchez', 3),
(7, 'literatura española', 'prof. perez', 3),
(8, 'ingles tecnico', 'prof. gomez', 2),
(9, 'estadistica', 'prof. diaz', 3),
(10, 'algoritmos', 'prof. moreno', 4),
(11, 'redes informaticas', 'prof. alvarez', 4),
(12, 'sistemas operativos', 'prof. romero', 3),
(13, 'calculo diferencial', 'prof. torres', 5),
(14, 'etica profesional', 'prof. ruiz', 2),
(15, 'gestion de proyectos', 'prof. navarro', 3),
(16, 'inteligencia artificial', 'prof. castro', 4),
(17, 'desarrollo web', 'prof. ortiz', 3),
(18, 'seguridad informatica', 'prof. vargas', 4),
(19, 'metodologia investigacion', 'prof. mendez', 3),
(20, 'administracion empresas', 'prof. jimenez', 3);
go

-- insertar 20 registros en profesor
-- insert 20 records in profesor
insert into profesor (id_profesor, nombre_profesor, apellido_profesor, departamento, activo) values
(1, 'carlos', 'garcia', 'matematicas', 1),
(2, 'ana', 'martinez', 'informatica', 1),
(3, 'luis', 'lopez', 'informatica', 1),
(4, 'maria', 'rodriguez', 'ciencias', 1),
(5, 'pedro', 'fernandez', 'ciencias', 0),
(6, 'sofia', 'sanchez', 'humanidades', 1),
(7, 'diego', 'perez', 'humanidades', 1),
(8, 'laura', 'gomez', 'idiomas', 1),
(9, 'jorge', 'diaz', 'matematicas', 0),
(10, 'carmen', 'moreno', 'informatica', 1),
(11, 'ricardo', 'alvarez', 'informatica', 1),
(12, 'elena', 'romero', 'informatica', 1),
(13, 'fernando', 'torres', 'matematicas', 1),
(14, 'patricia', 'ruiz', 'humanidades', 0),
(15, 'miguel', 'navarro', 'administracion', 1),
(16, 'isabel', 'castro', 'informatica', 1),
(17, 'roberto', 'ortiz', 'informatica', 1),
(18, 'valeria', 'vargas', 'informatica', 1),
(19, 'andres', 'mendez', 'investigacion', 1),
(20, 'natalia', 'jimenez', 'administracion', 1);
go

-- insertar 20 registros en alumno
-- insert 20 records in alumno
insert into alumno (id_estudiante, dni, nombre_alumno, apellido_alumno, domicilio) values
(1, '12345678a', 'juan', 'perez', 'calle mayor 10'),
(2, '23456789b', 'maria', 'gomez', 'avenida libertad 5'),
(3, '34567890c', 'carlos', 'ruiz', 'plaza central 3'),
(4, '45678901d', 'ana', 'torres', 'calle sol 15'),
(5, '56789012e', 'luis', 'diaz', 'avenida norte 20'),
(6, '67890123f', 'sofia', 'moreno', 'calle luna 8'),
(7, '78901234g', 'pedro', 'alvarez', 'plaza nueva 12'),
(8, '89012345h', 'laura', 'romero', 'calle paz 7'),
(9, '90123456i', 'diego', 'navarro', 'avenida sur 25'),
(10, '01234567j', 'carmen', 'castro', 'calle rio 18'),
(11, '11223344k', 'jorge', 'ortiz', 'plaza vieja 4'),
(12, '22334455l', 'elena', 'vargas', 'calle monte 9'),
(13, '33445566m', 'fernando', 'mendez', 'avenida este 14'),
(14, '44556677n', 'patricia', 'jimenez', 'calle oeste 22'),
(15, '55667788o', 'miguel', 'santos', 'plaza grande 6'),
(16, '66778899p', 'isabel', 'flores', 'calle jardin 11'),
(17, '77889900q', 'roberto', 'ramos', 'avenida centro 17'),
(18, '88990011r', 'valeria', 'cruz', 'calle parque 13'),
(19, '99001122s', 'andres', 'morales', 'plaza pequeña 2'),
(20, '00112233t', 'natalia', 'ortega', 'calle fuente 19');
go

-- insertar 20 registros en aula
-- insert 20 records in aula
insert into aula (id_aula, edificio, capacidad, materia_impartida) values
(1, 'edificio a', 30, 'matematicas i'),
(2, 'edificio a', 25, 'programacion basica'),
(3, 'edificio b', 35, 'bases de datos'),
(4, 'edificio b', 20, 'fisica general'),
(5, 'edificio c', 28, 'quimica organica'),
(6, 'edificio c', 32, 'historia universal'),
(7, 'edificio a', 22, 'literatura española'),
(8, 'edificio d', 30, 'ingles tecnico'),
(9, 'edificio d', 26, 'estadistica'),
(10, 'edificio b', 24, 'algoritmos'),
(11, 'edificio e', 30, 'redes informaticas'),
(12, 'edificio e', 28, 'sistemas operativos'),
(13, 'edificio a', 35, 'calculo diferencial'),
(14, 'edificio c', 20, 'etica profesional'),
(15, 'edificio d', 25, 'gestion de proyectos'),
(16, 'edificio e', 30, 'inteligencia artificial'),
(17, 'edificio b', 22, 'desarrollo web'),
(18, 'edificio e', 26, 'seguridad informatica'),
(19, 'edificio c', 24, 'metodologia investigacion'),
(20, 'edificio d', 28, 'administracion empresas');
go

-- insertar 20 registros en calificaciones
-- insert 20 records in calificaciones
insert into calificaciones (id_calificacion, id_profesor, nota, id_estudiante, id_asignatura, fecha_registro) values
(1, 1, 8.50, 1, 1, '2024-01-15'),
(2, 2, 9.00, 2, 2, '2024-01-16'),
(3, 3, 7.50, 3, 3, '2024-01-17'),
(4, 4, 8.00, 4, 4, '2024-01-18'),
(5, 5, 6.50, 5, 5, '2024-01-19'),
(6, 6, 9.50, 6, 6, '2024-01-20'),
(7, 7, 7.00, 7, 7, '2024-01-21'),
(8, 8, 8.75, 8, 8, '2024-01-22'),
(9, 9, 6.00, 9, 9, '2024-01-23'),
(10, 10, 9.25, 10, 10, '2024-01-24'),
(11, 11, 7.80, 11, 11, '2024-01-25'),
(12, 12, 8.30, 12, 12, '2024-01-26'),
(13, 13, 5.50, 13, 13, '2024-01-27'),
(14, 14, 9.10, 14, 14, '2024-01-28'),
(15, 15, 7.20, 15, 15, '2024-01-29'),
(16, 16, 8.90, 16, 16, '2024-01-30'),
(17, 17, 6.80, 17, 17, '2024-01-31'),
(18, 18, 9.40, 18, 18, '2024-02-01'),
(19, 19, 7.60, 19, 19, '2024-02-02'),
(20, 20, 8.10, 20, 20, '2024-02-03');
go

-- verificar que las tablas existen
-- verify that tables exist
use universidad_del_marketing;
go



-- 1. select basico de alumnos
-- 1. basic select of students
select id_estudiante, nombre_alumno, apellido_alumno from alumno;
go

-- 2. where para filtrar por apellido
-- 2. where to filter by lastname
select nombre_alumno, apellido_alumno from alumno where apellido_alumno = 'perez';
go

-- 3. order by para ordenar por nombre
-- 3. order by to sort by name
select nombre_alumno, apellido_alumno from alumno order by nombre_alumno asc;
go

-- 4. distinct para obtener departamentos unicos
-- 4. distinct to get unique departments
select distinct departamento from profesor;
go

-- 5. top para mostrar los primeros 5 profesores
-- 5. top to show first 5 professors
select top 5 nombre_profesor, apellido_profesor from profesor;
go

-- 6. like para buscar nombres que empiecen con m
-- 6. like to find names starting with m
select nombre_profesor, apellido_profesor from profesor where nombre_profesor like 'm%';
go

-- 7. between para buscar notas entre 7 y 9
-- 7. between to find grades between 7 and 9
select id_estudiante, nota from calificaciones where nota between 7.00 and 9.00;
go

-- 8. in para buscar estudiantes con id especifico
-- 8. in to find students with specific id
select nombre_alumno, apellido_alumno from alumno where id_estudiante in (1, 5, 10, 15);
go

-- 9. not para negar una condicion
-- 9. not to negate a condition
select nombre_asignatura from asignatura where not id_asignatura = 1;
go

-- 10. is null (sintaxis valida, no retorna filas)
-- 10. is null (valid syntax, returns no rows)
select nombre_alumno from alumno where domicilio is null;
go

-- 11. is not null para verificar domicilios
-- 11. is not null to verify addresses
select nombre_alumno, domicilio from alumno where domicilio is not null;
go

-- 12. and para combinar condiciones
-- 12. and to combine conditions
select nombre_alumno, apellido_alumno, id_estudiante from alumno where id_estudiante > 5 and id_estudiante < 15;
go

-- 13. or para combinar condiciones
-- 13. or to combine conditions
select nombre_asignatura from asignatura where id_asignatura = 1 or id_asignatura = 20;
go

-- 14. group by para agrupar por departamento
-- 14. group by to group by department
select departamento, count(id_profesor) as total_profesores from profesor group by departamento;
go

-- 15. having para filtrar grupos de calificaciones
-- 15. having to filter grade groups
select id_asignatura, avg(nota) as promedio_nota from calificaciones group by id_asignatura having avg(nota) > 7.50;
go

-- 16. count para contar alumnos
-- 16. count to count students
select count(id_estudiante) as total_alumnos from alumno;
go

-- 17. sum para sumar capacidades de aulas
-- 17. sum to add classroom capacities
select sum(capacidad) as capacidad_total_aulas from aula;
go

-- 18. avg para promediar notas
-- 18. avg to average grades
select avg(nota) as promedio_general from calificaciones;
go

-- 19. min para encontrar la nota minima
-- 19. min to find the minimum grade
select min(nota) as nota_minima from calificaciones;
go

-- 20. max para encontrar la nota maxima
-- 20. max to find the maximum grade
select max(nota) as nota_maxima from calificaciones;
go

-- 21. inner join entre alumno, calificaciones y asignatura
-- 21. inner join between student, grades and subject
select a.nombre_alumno, asig.nombre_asignatura, c.nota
from alumno a
inner join calificaciones c on a.id_estudiante = c.id_estudiante
inner join asignatura asig on c.id_asignatura = asig.id_asignatura;
go

-- 22. left join para mostrar todos los alumnos y sus calificaciones
-- 22. left join to show all students and their grades
select a.nombre_alumno, c.nota
from alumno a
left join calificaciones c on a.id_estudiante = c.id_estudiante;
go

-- 23. right join para mostrar todas las calificaciones y sus alumnos
-- 23. right join to show all grades and their students
select a.nombre_alumno, c.nota
from alumno a
right join calificaciones c on a.id_estudiante = c.id_estudiante;
go

-- 24. subconsulta para encontrar alumnos con nota mayor al promedio
-- 24. subquery to find students with grade above average
select nombre_alumno, apellido_alumno from alumno
where id_estudiante in (
    select id_estudiante from calificaciones where nota > (select avg(nota) from calificaciones)
);
go

-- 25. create view para resumen de calificaciones
-- 25. create view for grade summary
create view vw_resumen_calificaciones as
select a.nombre_alumno, a.apellido_alumno, asig.nombre_asignatura, c.nota
from alumno a
inner join calificaciones c on a.id_estudiante = c.id_estudiante
inner join asignatura asig on c.id_asignatura = asig.id_asignatura;
go

-- 26. crear vista para ver profesores y sus departamentos
-- 26. create view to see professors and their departments
create view vw_info_profesores as
select nombre_profesor, apellido_profesor, departamento
from profesor;
go

-- 27. crear vista para ver aulas y su capacidad
-- 27. create view to see classrooms and their capacity
create view vw_capacidad_aulas as
select edificio, materia_impartida, capacidad
from aula
where capacidad > 25;
go

-- 28.  consultar todos los datos de una vista
-- 28. query all data from a view
select * from vw_info_profesores;
go

-- 29. filtrar datos de una vista con where
-- 29. filter view data with where
select * from vw_capacidad_aulas where capacidad > 30;
go

-- 30. ordenar los resultados de una vista
-- 30. sort view results
select * from vw_resumen_calificaciones order by nota desc;
go

-- 31. buscar un dato especifico en la vista
-- 31. search specific data in the view
select nombre_alumno, nota from vw_resumen_calificaciones where nota > 9.00;
go