/* Resultados de tutorial de SQL by:SamuelDuran  */

/* CONCEPTO 1- Objetivos y alcances del tutorial SQL Server*/

create database BaseDatosTutorialSQL
use BaseDatosTutorialSQL

/*  CONCEPTO 2 - Crear una tabla (create table - sp_tables - sp_columns - drop table) */

/* Problema 1 */

/* 1- Elimine la tabla "agenda" si existe: */
if object_id('agenda') is not null
	drop table agenda;
go

/* 2- Intente crear una tabla llamada "/agenda": */
create table /agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11) );
go

/* 3- Cree una tabla llamada "agenda", debe tener los siguientes campos: apellido, varchar(30); nombre, varchar(20); domicilio, varchar (30) y telefono, varchar(11): */
create table agenda
(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);
go

/* 4- Intente crearla nuevamente. Aparece mensaje de error. */
create table agenda
(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);
go

/* 5- Visualice las tablas existentes (exec sp_tables @table_owner='dbo'). */
exec sp_tables @table_owner = 'dbo'

/* 6- Visualice la estructura de la tabla "agenda" (sp_columns).  */
exec sp_columns agenda;

/* 7- Elimine la tabla. */
drop table agenda
go

/* 8- Intente eliminar la tabla, sin controlar si existe. Debe aparecer un mensaje de error. */
drop table agenda-- Nota: Confirmo, da error.
go

/* Problema 2 */

/* 1- Elimine la tabla "libros", si existe: */
if object_id ('Libros') is not null
	drop table Libros;
go

/* 2- Verifique que la tabla "libros" no existe en la base de datos activa (exec sp_tables @table_owner='dbo'). */
exec sp_tables @table_owner='dbo'
go

/* 3- Cree una tabla llamada "libros". Debe definirse con los siguientes campos: titulo, varchar(20); autor, varchar(30) y editorial, varchar(15). */
create table Libros
(
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);
go

/* 4- Intente crearla nuevamente. Aparece mensaje de error. */
create table Libros
(
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
); --Nota: Confirmo, da error.
go

/* 5- Visualice las tablas existentes. */
exec sp_tables @table_owner='dbo'
go

/* 6- Visualice la estructura de la tabla "libros". */
exec sp_columns Libros;
go

/* 7- Elimine la tabla. */
drop table Libros
go

/* 8- Intente eliminar la tabla nuevamente. */
drop table Libros
go

/* CONCEPTO 3 - Insertar y recuperar registros de una tabla (insert into - select) */

/* Problema 1 */

/* 1- Elimine la tabla "agenda", si existe: */
if object_id('agenda') is not null
	drop table agenda;
go

/* 2- Cree una tabla llamada "agenda". Debe tener los siguientes campos: apellido (cadena de 30), nombre (cadena de 20), domicilio (cadena de 30) y telefono (cadena de 11): */
create table agenda
(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);
go

/* 3- Visualice las tablas existentes para verificar la creación de "agenda" */
exec sp_tables @table_owner='dbo'
go

 /*4- Visualice la estructura de la tabla "agenda" (sp_columns). */
exec sp_columns agenda;
go

/* 5- Ingrese los siguientes registros:
 insert into agenda (apellido, nombre, domicilio, telefono) values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono) values ('Torres','Juan','Avellaneda 135','4458787'); */
insert into agenda(apellido, nombre, domicilio, telefono) values ('Moreno','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre, domicilio, telefono) values ('Torres','Juan','Avellaneda 135','4458787');
go

/* 6- Seleccione todos los registros de la tabla: */
select * from agenda;
go

/* 7- Elimine la tabla "agenda": */
drop table agenda;
go

/* 8- Intente eliminar la tabla nuevamente (aparece un mensaje de error): */
drop table agenda; --Nota: Confirmo, Da error
go

/* Problema 2 */

/* 1- Elimine la tabla "libros", si existe: */
if object_id ('libros') is not null
	drop table Libros;
go

/* 2- Cree una tabla llamada "libros". Debe definirse con los siguientes campos: titulo (cadena de 20), autor (cadena de 30) y editorial (cadena de 15). */
create table Libros
(
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);
go

/* 3- Visualice las tablas existentes (exec sp_tables @table_owner='dbo'). */
exec sp_tables @table_owner= 'dbo'
go

/* 4- Visualice la estructura de la tabla "libros" (sp_columns). */
exec sp_columns Libros
go

/* 5- Ingrese los siguientes registros:
 insert into libros (titulo,autor,editorial) values ('El aleph','Borges','Planeta');
 insert into libros (titulo,autor,editorial) values ('Martin Fierro','Jose Hernandez','Emece');
 insert into libros (titulo,autor,editorial) values ('Aprenda PHP','Mario Molina','Emece'); */
insert into libros (titulo,autor,editorial) values ('El aleph', 'Borges', 'Planeta');
insert into libros (titulo,autor,editorial) values ('Martin Fierro','Jose Hernandez','Emece');
insert into libros (titulo,autor,editorial) values ('Aprenda PHP','Mario Molina','Emece');
go

/* 6- Muestre todos los registros (select). */
select * from Libros
go

/* CONCEPTO 4 - Tipos basicos de datos */
/* 1- Elimine la tabla, si existe: */
if object_id('peliculas') is not null
	drop table peliculas
go

/*2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo: */
create table peliculas
(
nombre varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);
go

/* 3- Vea la estructura de la tabla: */
exec sp_columns peliculas
go

/* 4- Ingrese los siguientes registros:
insert into peliculas (nombre, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',128,3);
insert into peliculas (nombre, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',130,2);
insert into peliculas (nombre, actor, duracion, cantidad) values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (nombre, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',110,2);*/
insert into peliculas (nombre, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',128,3);
insert into peliculas (nombre, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',130,2);
insert into peliculas (nombre, actor, duracion, cantidad) values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (nombre, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',110,2);
go

/* 5- Muestre todos los registros. */ 
select * from peliculas
go

/* Problema 2 */
/* 1- Elimine la tabla, si existe: */
if object_id('empleados') is not null
  drop table empleados
go

/* 2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo: */
create table empleados(
nombre varchar(20),
documento varchar(8),
sexo varchar(1),
domicilio varchar(30),
sueldobasico float
);
go

/* 3- Vea la estructura de la tabla: */
exec sp_columns empleados;
go

/* 4- Ingrese algunos registros:
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Juan Perez','22333444','m','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Ana Acosta','24555666','f','Colon 134',650);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Bartolome Barrios','27888999','m','Urquiza 479',800); */
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Juan Perez','22333444','m','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Ana Acosta','24555666','f','Colon 134',650);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Bartolome Barrios','27888999','m','Urquiza 479',800);
go

/* 5- Seleccione todos los registros. */
select * from empleados
go


/* CONCEPTO 5 - Recuperar algunos campos (select) */

/* Problema 1 */
/* 1- Elimine la tabla, si existe: */
if object_id('peliculas') is not null
  drop table peliculas
go

/* 2- Cree la tabla: peliculas(titulo varchar(20),actor varchar(20),duracion integer,cantidad integer); */
create table peliculas
(
titulo varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);
go

/* 3- Vea la estructura de la tabla (sp_columns). */
exec sp_columns peliculas
go

/* 4- Ingrese alos siguientes registros:
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',180,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',190,2);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',110,2); */
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',180,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',190,2);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',110,2);
go

/* 5- Realice un "select" mostrando solamente el título y actor de todas las películas */
select titulo, actor from peliculas
go

/* 6- Muestre el título y duración de todas las peliculas */
select titulo, duracion from peliculas
go

/* 7- Muestre el título y la cantidad de copias */
select titulo, cantidad from peliculas
go

/* Problema 2 */
/* 1- Elimine la tabla, si existe: */
if object_id('empleados') is not null
	drop table empleados;
go

/* 2- Cree la tabla: */
create table empleados
(
nombre varchar(20),
documento varchar(8), 
sexo varchar(1),
domicilio varchar(30),
sueldobasico float
);
go

/* 3- Vea la estructura de la tabla: */
exec sp_columns empleados
go

/* 4- Ingrese algunos registros: */
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Juan Juarez','22333444','M','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Ana Acosta','27888999','F','Colon 134',700);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Carlos Caseres','31222333','M','Urquiza 479',850);
go

/* 5 - Muestre todos los datos del empleado */
select * from empleados
go

/* 6 - Muestre el nombre, documento y domicilio de los empleados */
select nombre, documento, domicilio from empleados
go

/* 7- Realice un "select" mostrando el documento, sexo y sueldo básico de todos los empleados */
select documento, sexo, sueldobasico from empleados
go

/* CONCEPTO 6 - Recuperar algunos registros (where) */
/* 1- Elimine "agenda", si existe: */
if object_id('agenda') is not null
	drop table agenda
go

/* 2- Cree la tabla, con los siguientes campos: apellido(cadena de 30),nombre(cadena de 20),domicilio(cadena de 30) y telefono(cadena de 11). */
create table agenda
(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);
go

/* 3- Visualice la estructura de la tabla "agenda". */
exec sp_columns agenda
go

/* 4- Ingrese los siguientes registros: */
insert into agenda(apellido, nombre, domicilio, telefono) values ('Acosta', 'Ana', 'Colon 123', 4234567);
insert into agenda(apellido, nombre, domicilio, telefono) values ('Bustamante', 'Betina', 'Avellaneda 135', 4458787);
insert into agenda(apellido, nombre, domicilio, telefono) values ('Lopez', 'Hector', 'Salta 545', 4887788);
insert into agenda(apellido, nombre, domicilio, telefono) values ('Lopez', 'Luis', 'Urquiza 333', 4545454);
insert into agenda(apellido, nombre, domicilio, telefono) values ('Lopez', 'Marisa', 'Urquiza 333', 4545454);
go

/* 5- Seleccione todos los registros de la tabla */
select * from agenda
go

/* 6- Seleccione el registro cuyo nombre sea "Marisa" (1 registro) */
select * from agenda where nombre = 'Marisa'
go

/* 7- Seleccione los nombres y domicilios de quienes tengan apellido igual a "Lopez" (3 registros) */
select nombre, domicilio from agenda where apellido = 'Lopez'
go

/* 8- Muestre el nombre de quienes tengan el teléfono "4545454" (2 registros) */
select nombre from agenda where telefono = 4545454
go

/* Problema 2 */
/* 1- Elimine la tabla si existe */
if object_id ('Libros') is not null
	drop table Libros
go

/* 2- Cree la tabla "libros". Debe tener la siguiente estructura: */
create table Libros
(
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);
go

/* 3- Visualice la estructura de la tabla "libros". */
exec sp_columns Libros
go

/* Ingrese los siguientes registros */
insert into Libros(titulo, autor, editorial) values ('El aleph', 'Borges', 'Emece')
insert into Libros(titulo, autor, editorial) values ('Martin Fierro', 'Jose Hernandez', 'Emece')
insert into Libros(titulo, autor, editorial) values ('Martin Fierro', 'Jose Hernandez', 'Planeta')
insert into Libros(titulo, autor, editorial) values ('Aprenda PHP', 'Mario Molina', 'Siglo XXI')
go

/* 5- Seleccione los registros cuyo autor sea "Borges" (1 registro) */
select * from Libros where autor = 'Borges'
go

/* 6- Seleccione los títulos de los libros cuya editorial sea "Emece" (2 registros) */
select titulo from Libros where editorial = 'Emece'
go

/* 7- Seleccione los nombres de las editoriales de los libros cuyo titulo sea "Martin Fierro" (2 registros) */
select editorial from Libros where titulo = 'Martin Fierro'
go

/*  CONCEPTO 7 - Operadores relacionales */ 

/* Problema 1 */ 
/* 1- Elimine "Articulos", si existe */
if object_id('articulos') is not null
	drop table articulos;
go

/* 2- Cree la tabla, con la siguiente estructura: */
create table articulos
(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
);
go

/* 3- Vea la estructura de la tabla (sp_columns). */
exec sp_columns articulos
go

/* 4- Ingrese algunos registros: */
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (5,'teclado','espa�ol Biswal',90,50);
go

/* 5- Seleccione los datos de las impresoras (2 registros) */
select * from articulos where nombre = 'impresora'
go

/* 6- Seleccione los artículos cuyo precio sea mayor o igual a 400 (3 registros) */
select * from articulos where precio >= 400
go

/* 7- Seleccione el código y nombre de los artículos cuya cantidad sea menor a 30 (2 registros) */
select codigo, nombre from articulos where cantidad < 30
go

/* 8- Selecciones el nombre y descripción de los artículos que NO cuesten $100 (4 registros) */
select nombre, descripcion from articulos where precio != 100
go

/* Problema 2 */ 
/* 1- Elimine la tabla si existe */ 
if object_id ('peliculas') is not null
	drop table peliculas
go

/* 2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo */
create table peliculas(
titulo varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);
go

/* 3- Ingrese los siguientes registros */
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',120,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',180,4);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mujer bonita','Julia R.',90,1);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',80,2);
go

/* 4- Seleccione las películas cuya duración no supere los 90 minutos (2 registros) */
select * from peliculas where duracion <= 90
go

/* 5- Seleccione el título de todas las películas en las que el actor NO sea "Tom Cruise" (2 registros) */
select * from peliculas where actor != 'Tom Cruise'
go

 /* 6- Muestre todos los campos, excepto "duracion", de todas las películas de las que haya más de 2 copias (2 registros) */
select titulo,actor,cantidad from peliculas where cantidad > 2;
go

/* CONCEPTO 8 - Borrar registros (delete) */

/* Problema 1 */
/* 1- Elimine la tabla si existe: */
if object_id ('agenda') is not null
	drop table agenda
go

/* 2- Cree la tabla con los siguientes campos */
create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);
go

/* 3- Ingrese los siguientes atributos */
insert into agenda(apellido, nombre, domicilio, telefono) values ('Alvarez', 'Alberto', 'Colon 123', 4234567);
insert into agenda (apellido, nombre, domicilio, telefono) values ('Juarez','Juan','Avellaneda 135', 4458787);
insert into agenda (apellido, nombre, domicilio, telefono) values ('Lopez', 'Maria', 'Urquiza 333',4545454);
insert into agenda (apellido, nombre, domicilio, telefono) values ('Lopez', 'Jose', 'Urquiza 333', 4545454);
insert into agenda (apellido, nombre, domicilio, telefono) values ('Salas', 'Susana','Gral. Paz 1234',4123456);
go

/* 4- Elimine el registro cuyo nombre sea "Juan" (1 registro afectado) */
delete from agenda where nombre = 'Juan'
go

/* 5- Elimine los registros cuyo número telefónico sea igual a "4545454" (2 registros afectados): */
delete from agenda where telefono = 4545454
go

/* 6- Muestre la tabla. */
select * from agenda
go

/*7- Elimine todos los registros (2 registros afectados): */
delete from agenda;
go

/* 8- Muestre la tabla. */
select * from agenda;
go

/* Problema 2 */
/* 1- Elimine "Articulos", si existe: */
if object_id('articulos') is not null
  drop table articulos;
go

/* 2- Cree la tabla, con la siguiente estructura: */
create table articulos(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
);
go

/* 3- Vea la estructura de la tabla. */
exec sp_columns articulos
go

/* 4- Ingrese algunos registros: */
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (5,'teclado','espa�ol Biswal',90,50);
go

/* 5- Elimine los artículos cuyo precio sea mayor o igual a 500 (2 registros) */
delete from articulos where precio >= 500;
go

/* 7- Elimine todas las impresoras (1 registro) */
delete from articulos where nombre = 'impresora';
go

/* 8- Elimine todos los artículos cuyo código sea diferente a 4 (1 registro) */
delete from articulos where codigo <> 4;
go

/* 9- Mostrar la tabla después que borra cada registro. */
select * from articulos
go


/* CONCEPTO 9 - Actualizar registros (update) */

/* Problema 1 */
/* 1- Elimine la tabla si existe: */
if object_id('agenda') is not null
	drop table agenda;
go

/* 2- Cree la tabla */
create table agenda
(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);
go

/* 3- Ingrese los siguientes registros (1 registro actualizado): */
insert into agenda (apellido,nombre,domicilio,telefono) values ('Acosta','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono) values ('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono) values ('Suarez','Susana','Gral. Paz 1234','4123456');
go

/* 4- Modifique el registro cuyo nombre sea "Juan" por "Juan Jose" (1 registro afectado) */
update agenda set nombre='Juan Jose' where nombre='Juan';
go

/* 5- Actualice los registros cuyo número telefónico sea igual a "4545454" por "4445566" (2 registros afectados) */
update agenda set telefono='4445566' where telefono='4545454';
go

/* 6- Actualice los registros que tengan en el campo "nombre" el valor "Juan" por "Juan Jose" (ningún 
registro afectado porque ninguno cumple con la condición del "where") */
update agenda set nombre='Juan Jose' where nombre='Juan';
go

/*7 - Luego de cada actualización ejecute un select que muestre todos los registros de la tabla. */
select * from agenda
go

/* Problema 2 */
/* 1- Elimine la tabla si existe: */
if object_id('libros') is not null
	drop table libros;
go

/* 2- Créela con los siguientes campos: titulo (cadena de 30),autor(cadena de 20),editorial(cadena de 15) y precio(float): */
create table libros
(
titulo varchar(30),
autor varchar(20),
editorial varchar(15),
precio float
);
go

/* 3- Ingrese los siguientes registros: */
insert into libros (titulo, autor, editorial, precio) values ('El aleph','Borges','Emece',25.00);
insert into libros (titulo, autor, editorial, precio) values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
insert into libros (titulo, autor, editorial, precio) values ('Aprenda PHP','Mario Molina','Emece',45.50);
insert into libros (titulo, autor, editorial, precio) values ('Cervantes y el quijote','Borges','Emece',25);
insert into libros (titulo, autor, editorial, precio) values ('Matematica estas ahi','Paenza','Siglo XXI',15);
go

/* 4- Muestre todos los registros (5 registros): */
select * from libros;
go

/* 5- Modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza" (1 registro afectado) */
update libros set autor='Adrian Paenza' where autor='Paenza';
select * from libros;
go

/* 6- Nuevamente, modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza" (ningún 
registro afectado porque ninguno cumple la condición) */
update libros set autor='Adrian Paenza' where autor='Paenza';
select * from libros;
go

/* 7- Actualice el precio del libro de "Mario Molina" a 27 pesos (1 registro afectado): */
update libros set precio=27 where autor='Mario Molina';
select * from libros;
go

/* 8- Actualice el valor del campo "editorial" por "Emece S.A.", para todos los registros cuya editorial sea igual a "Emece" (3 registros afectados): */
update libros set editorial='Emece S.A.' where editorial='Emece';
select * from libros;
go

/* 9 - Luego de cada actualización ejecute un select que mustre todos los registros de la tabla. */ 
--NOTA: Realizado


/* CONCEPTO 10 - COMENTARIOS */
/* NOTA: Realizado */

/* CONCEPTO 11 - Valores null (is null) */
/* Problema 1 */ 

/* 1- Elimine la tabla, si existe: */
if object_id('medicamentos') is not null
   drop table medicamentos;
go

/* 2- Cree la tabla con la siguiente estructura: */
create table medicamentos(
codigo integer not null,
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer not null
);
go

/* 3- Visualice a estructura de la tabla "medicamentos" */
exec sp_columns medicamentos
go

/* 4- Ingrese algunos registros con valores "null" para los campos que lo admitan: */
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(1,'Sertal gotas',null,null,100); 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(2,'Sertal compuesto',null,8.90,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(3,'Buscapina','Roche',null,200);
go

/* 5- Vea todos los registros: */
select * from medicamentos
go

/* 6- Ingrese un registro con valor "0" para el precio y cadena vacía para el laboratorio: */
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(4,'Bayaspirina','',0,150);
go

/* 7- Ingrese un registro con valor "0" para el código y cantidad y cadena vacía para el nombre: */
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(0,'','Bayer',15.60,0);
go

/* 8- Muestre todos los registros: */
select * from medicamentos
go

/* 9- Intente ingresar un registro con valor nulo para un campo que no lo admite (aparece un mensaje de error): */
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(null,'Amoxidal jarabe','Bayer',25,120);
go

/* 10- Recupere los registros que contengan valor "null" en el campo "laboratorio", luego los que tengan una cadena vacía en el mismo campo. Note que el resultado es diferente. */
select * from medicamentos where laboratorio is null
select * from medicamentos where laboratorio='';
go

/* 11- Recupere los registros que contengan valor "null" en el campo "precio", luego los que tengan el 
valor 0 en el mismo campo. Note que el resultado es distinto. */
select * from medicamentos where precio is null
select * from medicamentos where precio=0;
go

/* 12- Recupere los registros cuyo laboratorio no contenga una cadena vacía, luego los que sean 
distintos de "null". */
select * from medicamentos where laboratorio <> '';
select * from medicamentos where laboratorio is not null;
go

/* 13- Recupere los registros cuyo precio sea distinto de 0, luego los que sean distintos de "null": */
select * from medicamentos where precio <> 0;
select * from medicamentos where precio is not null;
go


/* Problema 2 */
/* 1- Elimine la tabla si existe: */
if object_id('peliculas') is not null
	drop table peliculas;
go

/* 2- Créela con la siguiente estructura: */
create table peliculas(
codigo int not null,
titulo varchar(40) not null,
actor varchar(20),
duracion int
);
go

/* 3- Visualice la estructura de la tabla */
exec sp_columns peliculas;
go

/* 4- Ingrese los siguientes registros: */
insert into peliculas (codigo,titulo,actor,duracion) values(1,'Mision imposible','Tom Cruise',120);
insert into peliculas (codigo,titulo,actor,duracion) values(2,'Harry Potter y la piedra filosofal',null,180);
insert into peliculas (codigo,titulo,actor,duracion) values(3,'Harry Potter y la camara secreta','Daniel R.',null);
insert into peliculas (codigo,titulo,actor,duracion) values(0,'Mision imposible 2','',150);
insert into peliculas (codigo,titulo,actor,duracion) values(4,'','L. Di Caprio',220);
insert into peliculas (codigo,titulo,actor,duracion) values(5,'Mujer bonita','R. Gere-J. Roberts',0);
go

/* 5- Recupere todos los registros para ver cómo SQL Server los almacenó: */
select * from peliculas;
go

/* 6- Intente ingresar un registro con valor nulo para campos que no lo admiten (aparece un mensaje de error): */
insert into peliculas (codigo,titulo,actor,duracion) values(null,'Mujer bonita','R. Gere-J. Roberts',190);
go

/* 7- Muestre los registros con valor nulo en el campo "actor" y luego los que guardan una cadena vacía (note que la salida es distinta) (1 registro) */
select * from peliculas where actor is  null
select * from peliculas where actor = ''
go

/* 8- Modifique los registros que tengan valor de duración desconocido (nulo) por "120" (1 registro actualizado) */
update peliculas set duracion=120 where duracion is null;
go

/* 9- Coloque 'Desconocido' en el campo "actor" en los registros que tengan una cadena vacía en dicho campo (1 registro afectado) */
update peliculas set actor='Desconocido' where actor='';
go

/* 10- Muestre todos los registros. Note que el cambio anterior no afectó a los registros con valor nulo en el campo "actor". */
select * from peliculas;
go

/* 11- Elimine los registros cuyo título sea una cadena vacía (1 registro) */
delete from peliculas where titulo='';
select * from peliculas;
go



/* CONCEPTO 12 - Clave primaria */

/* Problema 1 */
/* 1- Elimine la tabla si existe: */
if object_id('libros') is not null
	drop table libros;
go

/* 2- Créela con los siguientes campos, estableciendo como clave primaria el campo "codigo": */
create table libros
(
codigo int not null,
titulo varchar(40) not null,
autor varchar(20),
editorial varchar(15),
primary key(codigo)
);
go

/* 3- Ingrese los siguientes registros: */
insert into libros (codigo,titulo,autor,editorial) values (1,'El aleph','Borges','Emece');
insert into libros (codigo,titulo,autor,editorial) values (2,'Martin Fierro','Jose Hernandez','Planeta');
insert into libros (codigo,titulo,autor,editorial) values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');
go

/* 4- Ingrese un registro con código repetido (aparece un mensaje de error) */
insert into libros (codigo,titulo,autor,editorial) values (2,'Martin Fierro','Jose Hernandez','Planeta');
go

/* 5- Intente ingresar el valor "null" en el campo "codigo" */
insert into libros (codigo,titulo,autor,editorial) values (null,'Martin Fierro','Jose Hernandez','Planeta');
go

/* 6- Intente actualizar el código del libro "Martin Fierro" a "1" (mensaje de error) */
update libros set codigo = 1 where titulo = 'Martin Fierro'
go


/* Problema 2 */
/* 1- Elimine la tabla "alumnos" si existe: */
if object_id('alumnos') is not null
	drop table alumnos;
go

/* 2- Cree la tabla con la siguiente estructura intentando establecer 2 campos como clave primaria, el campo "documento" y "legajo" (no lo permite): */
create table alumnos
(
legajo varchar(4) not null,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30),
primary key(documento),
primary key(legajo)
);
go

/* 3- Cree la tabla estableciendo como clave primaria el campo "documento": */
create table alumnos
(
legajo varchar(4) not null,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30),
primary key(documento)
);
go

/* 4- Verifique que el campo "documento" no admite valores nulos: */
exec sp_columns alumnos;
go

/* 5- Ingrese los siguientes registros: */
insert into alumnos (legajo,documento,nombre,domicilio) values('A233','22345345','Perez Mariana','Colon 234');
insert into alumnos (legajo,documento,nombre,domicilio) values('A567','23545345','Morales Marcos','Avellaneda 348');
go

/* 6- Intente ingresar un alumno con número de documento existente (no lo permite) */
insert into alumnos (legajo,documento,nombre,domicilio) values('A569','23545345','Marian','Avellaneda 356');
go

/* 7- Intente ingresar un alumno con documento nulo (no lo permite) */
insert into alumnos (legajo,documento,nombre,domicilio) values('A569',null,'Marian','Avellaneda 356');
go


/* CONCEPTO 13 - Campo con atributo Identity */

/* Problema 1 */
--1
if object_id('medicamentos') is not null
  drop table medicamentos;
go

--2
create table medicamentos
(
codigo int identity,
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer
);
go

--3
exec sp_columns medicamentos;
go

--4
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);
go

--5
select * from medicamentos;
go

--6
insert into medicamentos (codigo, nombre, laboratorio,precio,cantidad) values(15, 'Amoxidal 500','Bayer',15.60,100);
go

--7
update medicamentos set codigo = 1 where laboratorio = 'Bayer'
go

--8
delete from medicamentos where codigo = 3
go

--9
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxilina 500','Bayer',15.60,100);
go

--10
select * from medicamentos;
go

/* Problema 2 */
--1
if object_id('peliculas') is not null
  drop table peliculas;
go
go

--2
create table peliculas
(
codigo int identity,
titulo varchar(40),
actor varchar(20),
duracion int,
primary key(codigo)
);
go

--3
exec sp_columns peliculas;
go

--4
insert into peliculas (titulo,actor,duracion) values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas (titulo,actor,duracion) values('Mision imposible 2','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion) values('La vida es bella','zzz',220);
go

--5
select * from peliculas;
go

--6
update peliculas set codigo = 1 where actor = 'zzz'
go

--7
delete from peliculas where titulo = 'La vida es bella'
go

--8
insert into peliculas (titulo,actor,duracion) values('El es asi','x',220);
go

--9
select * from peliculas
go



/* CONCEPTO 14 - Otras caracteristicas de la identity */
/* Problema 1 */
--1
if object_id('medicamentos') is not null
  drop table medicamentos;
go
go

--2
create table medicamentos
(
codigo integer identity(10,1),
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer
);
go

--3
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);
go

--4
select *from medicamentos;
go

--5
insert into medicamentos (codigo, nombre, laboratorio,precio,cantidad) values(1, 'Dorixina Relax','Bayer',15.60,100);
go

--6
set identity_insert medicamentos on
go

--7
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxilina 500','Bayer',15.60,100);
go

--8
insert into medicamentos (codigo, nombre, laboratorio,precio,cantidad) values(13, 'Amoxilina 500','Bayer', 15.60, 100);
go

--9
select ident_seed('medicamentos');
go

--10
select ident_incr('medicamentos');
go

/* Problema 2 */
--1
if object_id('peliculas') is not null
	drop table peliculas;
go

--2
create table peliculas
(
codigo int identity (50,3),
titulo varchar(40),
actor varchar(20),
duracion int
);
go

--3
insert into peliculas (titulo,actor,duracion) values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la camara secreta','Daniel R.',190);
go

--4
select * from peliculas;
go

--5
set identity_insert peliculas on
go

--6
insert into peliculas (codigo, titulo,actor,duracion) values(4, 'Harry Potter y la camara secreta','Daniel R.',190);
go

--7
insert into peliculas (codigo, titulo,actor,duracion) values(5, 'Orgullo y Prejuicio','Joe Wright',210);
go

--8
select IDENT_SEED('peliculas')
go

--9
select IDENT_INCR('peliculas')
go

--10
insert into peliculas (titulo,actor,duracion) values('ATDMV','Arianna G',210);
go

--11
set identity_insert peliculas off
go

--12
insert into peliculas (titulo,actor,duracion) values('ATDMV','Arianna G',210);
select * from peliculas
go


/* CONCEPTO 15 - TRUNCATE TABLE */
/* Problema 1 */
--1
if object_id('alumnos') is not null
	drop table alumnos;
go
go

--2
create table alumnos(
legajo int identity,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30)
);
go

--3
insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');
go

--4
delete from alumnos where documento > 2
go

--5
insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');
select * from alumnos;
go

--6
truncate table alumnos 
go

--7
insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');
select * from alumnos;
go


/* Problema 2 */
--1
if object_id('articulos') is not null
	drop table articulos;
go

--2
create table articulos(
codigo integer identity,
nombre varchar(20),
descripcion varchar(30),
precio float
);
go

--3
insert into articulos (nombre, descripcion, precio) values ('impresora','Epson Stylus C45',400.80);
insert into articulos (nombre, descripcion, precio) values ('impresora','Epson Stylus C85',500);
go

--4
truncate table articulos
go

--5
insert into articulos (nombre, descripcion, precio) values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio) values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio) values ('teclado','espa�ol Biswal',90);
select * from articulos;
go

--6
delete from articulos
go

--7
insert into articulos (nombre, descripcion, precio) values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio) values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio) values ('teclado','espa�ol Biswal',90);
select * from articulos;
go


/* CONCEPTO 16 - Otros tipos de datos en SQL Server */
--NOTA: Realizado

/* CONCEPTO 17 -Tipo de dato (texto) */
/* Problema 1 */
--1
if object_id('autos') is not null
	drop table autos;
go
go

--2
create table autos
(
patente char(6),
marca varchar(20),
modelo char(4),
precio float,
primary key (patente)
);
go

--3
insert into autos(patente, marca, modelo, precio) values('ACD123','Fiat 128','1970',15000);
insert into autos(patente, marca, modelo, precio) values('ACG234','Renault 11','1990',40000);
insert into autos(patente, marca, modelo, precio) values('BCD333','Peugeot 505','1990',80000);
insert into autos(patente, marca, modelo, precio) values('GCD123','Renault Clio','1990',70000);
insert into autos(patente, marca, modelo, precio) values('BCC333','Renault Megane','1998',95000);
insert into autos(patente, marca, modelo, precio) values('BVF543','Fiat 128','1975',20000);
go

--4
select * from autos where modelo='1990';
go

/* Problema 2 */
--1
if object_id('clientes') is not null
	drop table clientes;
go
go

--2
create table clientes
(
documento char(8),
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
telefono varchar (11)
);
go

--3 Realizado

--4
insert into clientes(documento, apellido, nombre, domicilio, telefono) values('2233344','Perez','Juan','Sarmiento 980','4342345');
insert into clientes (documento,apellido,nombre,domicilio) values('2333344','Perez','Ana','Colon 234');
insert into clientes(documento, apellido, nombre, domicilio, telefono) values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
insert into clientes(documento, apellido, nombre, domicilio, telefono) values('2533344','Juarez','Ana','Urquiza 444','4789900');
go

--5
select * from clientes where apellido='Perez';
go


/* CONCEPTO 18 -Tipo de dato (numerico) */
/* Problema 1 */
--1
if object_id('cuentas') is not null
	drop table cuentas;
go
go

--2
create table cuentas
(
NumeroCuenta integer not null,
DocumentoPropietario char(8),
NombrePropietario varchar(30),
Saldo money,
primary key(NumeroCuenta)
);
go

--3
insert into cuentas(NumeroCuenta, DocumentoPropietario, NombrePropietario, Saldo) values('1234','25666777','Pedro Perez',500000.60);
insert into cuentas(NumeroCuenta, DocumentoPropietario, NombrePropietario, Saldo) values('2234','27888999','Juan Lopez',-250000);
insert into cuentas(NumeroCuenta, DocumentoPropietario, NombrePropietario, Saldo) values('3344','27888999','Juan Lopez',4000.50);
insert into cuentas(NumeroCuenta, DocumentoPropietario, NombrePropietario, Saldo) values('3346','32111222','Susana Molina',1000);
go

--4
select * from cuentas where saldo < 4000;
go

--5
select NumeroCuenta, Saldo from cuentas where NombrePropietario = 'Juan Lopez';
go

--6
select * from cuentas where saldo < 0;
go

--7
select * from cuentas where NumeroCuenta >= 3000;
go


/* Problema 2 */
--1
if object_id('empleados') is not null
	drop table empleados;
go

--2
create table empleados
(
nombre varchar(30),
documento char(8),
sexo char(1),
domicilio varchar(30),
sueldobasico decimal(7,2),
cantidadhijos tinyint
);
go

--3
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Ana Acosta','24555666','f','Colon 134',850,0);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);
go

--4
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Susana Molina','29000555','f','Salta 876',800.888,3);
go

--5
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Juan Acosta','23784555','M','Sucre 1086',5000000,2);
go

--6
select * from empleados where sueldobasico >= 900;
go

--7
select * from empleados where cantidadhijos > 0;
go


/* CONCEPTO 19 - Tipo de dato (fecha y hora) */
/* Problema 1 */
--1
if object_id('alumnos') is not null
	drop table alumnos;
go

--2
create table alumnos
(
apellido varchar(30),
nombre varchar(30),
documento char(8),
domicilio varchar(30),
fechaingreso datetime,
fechanacimiento datetime
);
go

--3
set dateformat 'dmy';
go

--4
insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');
go

--5
insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');
go

--6
insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);
go

--7
insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);
go

--8
select * from alumnos where fechaingreso < '1-1-91'
go

--9
select * from alumnos where fechanacimiento is null;
go

--10
insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);
go

--11
set dateformat 'mdy';
go

--12
insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);
go


/* CONCEPTO 20 -Ingresar algunos campos (insert into) */
/* Problema 1 */
--1
if object_id('cuentas') is not null
	drop table cuentas;
go
go

--2
create table cuentas(
numero int identity,
documento char(8) not null,
nombre varchar(30),
saldo money
);
go

--3
insert into cuentas values (1,'25666777','Juan Perez',2500.50);
go

--4
insert into cuentas values ('25666777','Juan Perez',2500.50);
go

--5
insert into cuentas values ('25666777','Juan Perez', null);
go

--6
insert into cuentas (numero,documento,nombre,saldo) values (5,'28999777','Luis Lopez',34000);
go

--7
insert into cuentas (numero,documento,nombre) values (3344,'28999777','Luis Lopez',34000);
go

--8
insert into cuentas (nombre, saldo) values ('Luis Lopez',34000);
go

--9
select * from libros;
go


/* CONCEPTO 21 - Valores por defecto (default) */
/* Problema 1 */
--1
if object_id('visitantes') is not null
	drop table visitantes;
go

--2
create table visitantes
(
nombre varchar(30),
edad tinyint,
sexo char(1) default 'f',
domicilio varchar(30),
ciudad varchar(20) default 'Cordoba',
telefono varchar(11),
mail varchar(30) default 'no tiene',
montocompra decimal (6,2)
);
go

--3
exec sp_columns visitantes
go

--4
insert into visitantes (nombre, domicilio, montocompra) values ('Susana Molina','Colon 123',59.80);
insert into visitantes (nombre, edad, ciudad, mail) values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
select * from visitantes;
go

--5
insert into visitantes default values;
go

--6
select * from visitantes;
go

/* Problema 2 */
--1
if object_id('prestamos') is not null
	drop table prestamos;
go

--2
create table prestamos
(
titulo varchar(40) not null,
documento char(8) not null,
fechaprestamo datetime not null,
fechadevolucion datetime,
devuelto char(1) default 'n'
);
go

--3
insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion) values ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');
insert into prestamos (titulo,documento,fechaprestamo) values ('Alicia en el pais de las maravillas','23456789','2006-12-16');
insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion) values ('El aleph','22543987','2006-12-16','2006-08-19');
insert into prestamos (titulo,documento,fechaprestamo,devuelto) values ('Manual de geografia 5 grado','25555666','2006-12-18','s');
go

--4
select * from prestamos;
go

--5
insert into prestamos values('Manual de historia','32555666','2006-10-25',default,default);
select * from prestamos;
go

--6
insert into prestamos default values;
go


/* CONCEPTO 22 - COLUMNAS CALCULADA (OPERADORES ARITMETICOS Y DE CONCATENACION) */
/* Problema 1 */
--1
if object_id ('articulos') is not null
	drop table articulos;
go

--2
create table articulos
(
codigo int identity,
nombre varchar(20),
descripcion varchar(30),
precio smallmoney,
cantidad tinyint default 0,
primary key (codigo)
);
go

--3
insert into articulos (nombre, descripcion, precio,cantidad) values ('impresora','Epson Stylus C45',400.80,20);
insert into articulos (nombre, descripcion, precio) values ('impresora','Epson Stylus C85',500);
insert into articulos (nombre, descripcion, precio) values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio,cantidad) values ('teclado','ingles Biswal',100,50);
go

--4
update articulos set precio = precio + (precio * 0.15);
go

--5
select * from articulos;
go

--6
select nombre+','+descripcion from articulos;
go

--7
update articulos set cantidad = cantidad - 5 where nombre = 'teclado';
select * from articulos;
go


/* CONCEPTO 23 - Alias */
/* Problema 1 */
--1
if object_id ('libros') is not null
	drop table libros;
go

--2
create table libros
(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
cantidad tinyint default 0,
primary key (codigo)
);
go

--3
insert into libros (titulo,autor,editorial,precio) values('El aleph','Borges','Emece',25);
insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad) values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);
go

--4
select titulo, autor,editorial,precio,cantidad, precio*cantidad as 'monto total' from libros;
go

--5
select titulo,autor,precio, precio*0.1 as descuento, precio-(precio*0.1) as 'precio final' from libros where editorial='Emece';
go

--6
select titulo+'-'+autor as "T�tulo y autor" from libros;
go


/* CONCEPTO 24 - Funciones */
--LISTO

/*  CONCEPTO 25 -Funciones para el manejo de cadenas */
--LISTO

/* CONCEPTO 27 -Funciones para el uso de fechas y horas */
/* Problema 1 */
--1
if object_id ('empleados') is not null
	drop table empleados;
go

--2
create table empleados
(
nombre varchar(30) not null,
apellido varchar(20) not null,
documento char(8),
fechanacimiento datetime,
fechaingreso datetime,
sueldo decimal(6,2),
primary key(documento)
);
go

--3
insert into empleados values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
insert into empleados values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
insert into empleados values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
insert into empleados values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
insert into empleados values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);
go

--4
select nombre+space(1)+upper(apellido) as nombre, stuff(documento,1,0,'DNI N� ') as documento, stuff(sueldo,1,0,'$ ') as sueldo from empleados;
--5
select documento, stuff(ceiling(sueldo),1,0,'$ ') from empleados;
--6
select nombre,apellido from empleados where datename(month,fechanacimiento)='october';
--7
select nombre,apellido from empleados where datepart(year,fechaingreso)=2000;  

/* CONCEPTO 28 -Ordenar registros (order by) */
/* Problema 1 */
--1
if object_id('visitas') is not null
	drop table visitas;
go

--2
create table visitas (
numero int identity,
nombre varchar(30) default 'Anonimo',
mail varchar(50),
pais varchar (20),
fecha datetime,
primary key(numero)
);
go

--3
insert into visitas (nombre,mail,pais,fecha) values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into visitas (nombre,mail,pais,fecha) values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
insert into visitas (nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into visitas (nombre,mail,pais,fecha) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into visitas (nombre,mail,pais,fecha) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into visitas (nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
insert into visitas (nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
go

--4
select * from visitas order by fecha desc;
--5
select nombre,pais,datename(month,fecha) from visitas order by pais,datename(month,fecha) desc;
--6
select nombre,mail, datename(month,fecha) mes, datename(day,fecha) dia, datename(hour,fecha) hora from visitas order by 3,4,5;
--7
select mail, pais from visitas where datename(month,fecha)='October' order by 2;

/* CONCEPTO 29 -Operadores logicos ( and - or - not) */
/* Problema 1 */
--1
if object_id('medicamentos') is not null
	drop table medicamentos;
go

--2
create table medicamentos
(
codigo int identity,
nombre varchar(20),
laboratorio varchar(20),
precio decimal(5,2),
cantidad tinyint,
primary key(codigo)
);
go

--3
insert into medicamentos values('Sertal','Roche',5.2,100);
insert into medicamentos values('Buscapina','Roche',4.10,200);
insert into medicamentos values('Amoxidal 500','Bayer',15.60,100);
insert into medicamentos values('Paracetamol 500','Bago',1.90,200);
insert into medicamentos values('Bayaspirina','Bayer',2.10,150); 
insert into medicamentos values('Amoxidal jarabe','Bayer',5.10,250); 
--4
select codigo, nombre from medicamentos where laboratorio = 'Roche' AND precio < 5
--5
select * from medicamentos where laboratorio='Roche' OR precio < 5;
--6
select * from medicamentos where laboratorio <> 'Bayer' AND cantidad = 100
--7
select * from medicamentos where laboratorio='Bayer' AND not cantidad=100;
--8
delete from medicamentos where laboratorio = 'Bayer' AND precio > 10
--9
update medicamentos set cantidad=200 where laboratorio='Roche' AND precio>5;
--10
delete from medicamentos where laboratorio='Bayer' OR precio < 3;
/* Problema 2 */
--1
if object_id('peliculas') is not null
	drop table peliculas;
go

--2
create table peliculas
(
codigo int identity,
titulo varchar(40) not null,
actor varchar(20),
duracion tinyint,
primary key (codigo)
);
go

--3
insert into peliculas values('Mision imposible','Tom Cruise',120);
insert into peliculas values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas values('Mision imposible 2','Tom Cruise',120);
insert into peliculas values('Mujer bonita','Richard Gere',120);
insert into peliculas values('Tootsie','D. Hoffman',90);
insert into peliculas values('Un oso rojo','Julio Chavez',100);
insert into peliculas values('Elsa y Fred','China Zorrilla',110);
go

--4
select * from peliculas where actor = 'Tom Cruise' OR actor = 'Richard Gere'
--5
select * from peliculas where actor = 'Tom Cruise' and duracion < 100;
--6
update peliculas set duracion=200 where actor='Daniel R.' and duracion=180;
--7
delete from peliculas where not actor = 'Tom Cruise' and duracion <= 100;

/* CONCEPTO 30 -Otros operadores relacionales (is null) */
/* Problema 1 */
--1
if object_id('peliculas') is not null
	drop table peliculas;
go

--2
create table peliculas
(
codigo int identity,
titulo varchar(40) not null,
actor varchar(20),
duracion tinyint,
primary key (codigo)
);
go

--3
insert into peliculas values('Mision imposible','Tom Cruise',120);
insert into peliculas values('Harry Potter y la piedra filosofal','Daniel R.',null);
insert into peliculas values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas values('Mision imposible 2','Tom Cruise',120);
insert into peliculas values('Mujer bonita',null,120);
insert into peliculas values('Tootsie','D. Hoffman',90);
insert into peliculas (titulo) values('Un oso rojo');
go

--4
select * from peliculas where actor is null
--5
update peliculas set duracion = 0 where duracion is null
--6
delete from peliculas where actor is null and duracion=0;
select * from peliculas

/* CONCEPTO 31 -Otros operadores relacionales (between) */
/* Problema 1 */
--1
if object_id('visitas') is not null
	drop table visitas
go

--2
create table visitas
(
numero int identity,
nombre varchar(30) default 'Anonimo',
mail varchar(50),
pais varchar(20),
fechayhora datetime,
primary key(numero)
)
--3
insert into visitas (nombre,mail,pais,fechayhora) values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into visitas (nombre,mail,pais,fechayhora) values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
insert into visitas (nombre,mail,pais,fechayhora) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into visitas (nombre,mail,pais,fechayhora) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into visitas (nombre,mail,pais,fechayhora) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into visitas (nombre,mail,pais,fechayhora) values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
insert into visitas (nombre,mail,pais,fechayhora) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
insert into visitas (nombre,mail,pais) values ('Federico1','federicogarcia@xaxamail.com','Argentina');
go

--4
select * from visitas where fechayhora between '2006-09-12' and '2006-10-11'
--5
select * from visitas where numero between 2 and 5

/* Problema 2 */
--1
if object_id('autos') is not null
	drop table autos
go

--2
create table autos
(
patente char(6),
marca varchar(20),
modelo char(4),
precio decimal(8,2),
primary key(patente)
);
go

--3
insert into autos values('ACD123','Fiat 128','1970',15000);
insert into autos values('ACG234','Renault 11','1980',40000);
insert into autos values('BCD333','Peugeot 505','1990',80000);
insert into autos values('GCD123','Renault Clio','1995',70000);
insert into autos values('BCC333','Renault Megane','1998',95000);
insert into autos values('BVF543','Fiat 128','1975',20000);
go

--4
select * from autos where modelo between '1970' and '1990'
--5
select * from autos where precio between 50000 and 100000

/* CONCEPTO 32 - Otros operadores relacionales (in) */
/* Problema 1 */
--1
if object_id('medicamentos') is not null
	drop table medicamentos;
go

--2
create table medicamentos
(
codigo int identity,
nombre varchar(20),
laboratorio varchar(20),
precio decimal(6,2),
cantidad tinyint,
fechavencimiento datetime not null,
primary key(codigo)
);
go

--3
insert into medicamentos values('Sertal','Roche',5.2,1,'2015-02-01');
insert into medicamentos values('Buscapina','Roche',4.10,3,'2016-03-01');
insert into medicamentos values('Amoxidal 500','Bayer',15.60,100,'2017-05-01');
insert into medicamentos values('Paracetamol 500','Bago',1.90,20,'2018-02-01');
insert into medicamentos values('Bayaspirina','Bayer',2.10,150,'2019-12-01'); 
insert into medicamentos values('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01'); 
--4
select nombre, precio from medicamentos where laboratorio in ('Bayer', 'Bago')
--5
select * from medicamentos where cantidad between 1 and 5;
select * from medicamentos where cantidad in (1,2,3,4,5);

/* CONCEPTO 33- Busqueda de patrones (like - not like) */
/* Problema 1 */
--1
if object_id('empleados') is not null
	drop table empleados;
go

--2
create table empleados
(
nombre varchar(30),
documento char(8),
domicilio varchar(30),
fechaingreso datetime,
seccion varchar(20),
sueldo decimal(6,2),
primary key(documento)
);
go

--3
insert into empleados values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
insert into empleados values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
insert into empleados values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
insert into empleados values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
insert into empleados values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
insert into empleados values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
insert into empleados values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);
go

--4
select * from empleados where nombre like '%Perez%'
--5
select * from empleados where domicilio like 'Co%8%' 
--6
select * from empleados where documento like '%[02468]'
--7
select * from empleados where documento not like '[13]%' and nombre not like '%ez'
--8
select nombre from empleados where nombre like '%[yj]%'
--9
select nombre,seccion from empleados where seccion like '[SG]_______';
--10
select nombre,seccion from empleados where seccion not like '[SG]%';
--11
select nombre,sueldo from empleados where sueldo not like '%.00';
--12
select * from empleados where fechaingreso like '%1990%';

/* CONCEPTO 34 - Contar registros (count) */
/* Problema 1 */
--1
if object_id('medicamentos') is not null
	drop table medicamentos;
go

--2
create table medicamentos
(
codigo int identity,
nombre varchar(20),
laboratorio varchar(20),
precio decimal(6,2),
cantidad tinyint,
fechavencimiento datetime not null,
numerolote int default null,
primary key(codigo)
);
go

--3
insert into medicamentos values('Sertal','Roche',5.2,1,'2015-02-01',null);
insert into medicamentos values('Buscapina','Roche',4.10,3,'2016-03-01',null);
insert into medicamentos values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
insert into medicamentos values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
insert into medicamentos values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
insert into medicamentos values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 
--4
select count(*) from medicamentos
--5
select count(*) from medicamentos where laboratorio is not null
--6
select count(*) from medicamentos where precio is not null and cantidad is not null
--7
select count(precio) from medicamentos where laboratorio like 'B%';
--8
select count(numerolote) from medicamentos;

/* CONCEPTO 36 - Funciones de agrupamiento (count - sum - min - max - avg) */
/* Problema 1 */
--1
if object_id('empleados') is not null
	drop table empleados;
go

--2
create table empleados
(
nombre varchar(30),
documento char(8),
domicilio varchar(30),
seccion varchar(20),
sueldo decimal(6,2),
cantidadhijos tinyint,
primary key(documento)
);
go

--3
insert into empleados values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
insert into empleados values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
insert into empleados values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
insert into empleados values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
insert into empleados values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
insert into empleados values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
insert into empleados values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
insert into empleados values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
insert into empleados values('Andres Costa','28444555',default,'Secretaria',null,null);
go

--4
select count(*) from empleados
--5
select count(*) from empleados where seccion = 'Secretaria'
--6
select min(sueldo) as 'Sueldo mas bajo', max(sueldo) as 'Sueldo mas alto' from empleados
--7
select max(cantidadhijos) from empleados where nombre like '%Perez%'
--8
select AVG(sueldo) from empleados
--9
select avg(sueldo) from empleados where seccion = 'Secretaria'
--10
select avg(cantidadhijos) from empleados where seccion = 'Sistemas'
/* CONCEPTO 37 - Agrupar registros (group by) */
/* Problema 1 */
--1
if object_id('visitantes') is not null
	drop table visitantes;
go

--2
create table visitantes
(
nombre varchar(30),
edad tinyint,
sexo char(1) default 'f',
domicilio varchar(30),
ciudad varchar(20) default 'Cordoba',
telefono varchar(11),
mail varchar(30) default 'no tiene',
montocompra decimal (6,2)
);
go

--3
insert into visitantes values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
insert into visitantes values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
insert into visitantes values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
insert into visitantes (nombre, edad,sexo,telefono, mail) values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
insert into visitantes (nombre, ciudad, montocompra) values ('Alejandra Gonzalez','La Falda',280.50);
insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra) values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
insert into visitantes values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
insert into visitantes values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);
go

--4
select count(*) from visitantes group by ciudad
--5
select ciudad, count (telefono) from visitantes group by ciudad
--6
select sexo, sum(montocompra) from visitantes group by sexo
--7
select sexo, ciudad, max(montocompra), min(montocompra) from visitantes group by sexo, ciudad
--8
select ciudad, avg(montocompra) from visitantes group by ciudad
--9
select ciudad, count(*) as 'cantidad con mail' from visitantes where mail is not null and mail<>'no tiene' group by ciudad;
--10
select ciudad, count(*) as 'cantidad con mail' from visitantes where mail is not null and mail<>'no tiene' group by all ciudad;
/* Problema 2 */
--1
if object_id('empleados') is not null
	drop table empleados;
go

--2
create table empleados
(
nombre varchar(30),
documento char(8),
domicilio varchar(30),
seccion varchar(20),
sueldo decimal(6,2),
cantidadhijos tinyint,
fechaingreso datetime,
primary key(documento)
);
go

--3
insert into empleados values('Juan Perez','22333444','Colon 123','Gerencia',5000,2,'1980-05-10');
insert into empleados values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0,'1980-10-12');
insert into empleados values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1,'1985-05-25');
insert into empleados values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3,'1990-06-25');
insert into empleados values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0,'1996-05-01');
insert into empleados values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1,'1996-05-01');
insert into empleados values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3,'1996-05-01');
insert into empleados values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4,'2000-09-01');
insert into empleados values('Andres Costa','28444555',default,'Secretaria',null,null,null);
go

--4
select seccion, count(*) from empleados group by seccion
--5
select seccion, avg(cantidadhijos) from empleados group by seccion
--6
select fechaingreso, count(*) from empleados group by fechaingreso
--7
select seccion, avg(sueldo) from empleados where cantidadhijos > 0 and cantidadhijos is not null group by seccion
--8
select seccion, avg(sueldo) as 'promedio de sueldo' from empleados where cantidadhijos>0 and cantidadhijos is not null group by all seccion;
/* CONCEPTO 38 -Seleccionar grupos (having) */
/* Problema 1 */
--1
if object_id('clientes') is not null
	drop table clientes;
go

--2
create table clientes
(
codigo int identity,
nombre varchar(30) not null,
domicilio varchar(30),
ciudad varchar(20),
provincia varchar (20),
telefono varchar(11),
primary key(codigo)
);
go

--3
insert into clientes values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
insert into clientes values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
insert into clientes values ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
insert into clientes values ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
insert into clientes values ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');
go

--4
select ciudad, provincia, count(*) from clientes group by ciudad, provincia
--5
select ciudad, provincia, count(*) from clientes group by ciudad, provincia having count(*) > 1
--6
select ciudad, count(*) from clientes where domicilio like '%San Martin%'  group by all ciudad having count(*) < 2 and ciudad <> 'Cordoba'
/* Problema 2 */
--1
if object_id('visitantes') is not null
	drop table visitantes;
go

--2
create table visitantes
(
nombre varchar(30),
edad tinyint,
sexo char(1),
domicilio varchar(30),
ciudad varchar(20),
telefono varchar(11),
montocompra decimal(6,2) not null
);
go

--3
insert into visitantes values ('Susana Molina',28,'f',null,'Cordoba',null,45.50); 
insert into visitantes values ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',22.40);
insert into visitantes values ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 
insert into visitantes values ('Teresa Garcia',33,'f',default,'Alta Gracia','03547123456',120);
insert into visitantes values ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
insert into visitantes values ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',95);
insert into visitantes values ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia',null,53.50);
insert into visitantes values ('Roxana Lopez',20,'f','null','Alta Gracia',null,240);
insert into visitantes values ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);
insert into visitantes values ('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);
go

--4
select ciudad, sexo, sum(montocompra) as 'Total' from visitantes group by ciudad, sexo having sum(montocompra) > 50
--5
select sum(montocompra) as 'Total de compras' from visitantes where montocompra > 50 and telefono is not null group by all ciudad, sexo having ciudad <> '%Cordoba%' order by ciudad
--6
select max(montocompra) as 'Monto mayor' from visitantes where sexo = 'f' and domicilio is not null group by ciudad having max(montocompra) > 50 
--7
select count(*) as cantidad, sum(montocompra) as total, avg(montocompra) as promedio from visitantes group by ciudad, sexo having avg(montocompra) > 50 order by total 

/* CONCEPTO 43 - Registros duplicados (distinct) */
/* Problema 1 */
--1
if object_id('clientes') is not null
	drop table clientes;
go

--2
create table clientes 
(
codigo int identity,
nombre varchar(30) not null,
domicilio varchar(30),
ciudad varchar(20),
provincia varchar (20),
primary key(codigo)
);
go

--3
insert into clientes values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
insert into clientes values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
insert into clientes values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
insert into clientes values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
insert into clientes values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');
go

---4
select distinct provincia from clientes 
--5
select count(distinct provincia) from clientes
--6
select distinct ciudad from clientes
--7
select count(distinct ciudad) from clientes
--8
select distinct ciudad from clientes where provincia not like '%Cordoba%'
--9
select provincia, count(distinct ciudad) from clientes group by provincia
/* Problema 2 */
--1
if object_id('inmuebles') is not null
	drop table inmuebles;
go

--2
create table inmuebles 
(
documento varchar(8) not null,
apellido varchar(30),
nombre varchar(30),
domicilio varchar(20),
barrio varchar(20),
ciudad varchar(20),
tipo char(1),--b=baldio, e: edificado
superficie decimal (8,2)
);
go

--3
insert into inmuebles values ('11000000','Perez','Alberto','San Martin 800','Centro','Cordoba','e',100);
insert into inmuebles values ('11000000','Perez','Alberto','Sarmiento 245','Gral. Paz','Cordoba','e',200);
insert into inmuebles values ('12222222','Lopez','Maria','San Martin 202','Centro','Cordoba','e',250);
insert into inmuebles values ('13333333','Garcia','Carlos','Paso 1234','Alberdi','Cordoba','b',200);
insert into inmuebles values ('13333333','Garcia','Carlos','Guemes 876','Alberdi','Cordoba','b',300);
insert into inmuebles values ('14444444','Perez','Mariana','Caseros 456','Flores','Cordoba','b',200);
insert into inmuebles values ('15555555','Lopez','Luis','San Martin 321','Centro','Carlos Paz','e',500);
insert into inmuebles values ('15555555','Lopez','Luis','Lopez y Planes 853','Flores','Carlos Paz','e',350);
insert into inmuebles values ('16666666','Perez','Alberto','Sucre 1877','Flores','Cordoba','e',150);
go

--4
select distinct apellido from inmuebles
--5
select distinct documento from inmuebles
--6
select count(distinct documento) from inmuebles where ciudad like '%Cordoba%'
--7
select count(ciudad) from inmuebles where domicilio like 'San Martin %';
--8
select distinct apellido,nombre from inmuebles;
--9
select documento,count(distinct barrio) as 'cantidad' from inmuebles group by documento;

/* CONCEPTO 44 - Clausura top */
/* Problema 1 */
--1
if object_id('empleados') is not null
	drop table empleados;
go

--2
create table empleados 
(
documento varchar(8) not null,
nombre varchar(30),
estadocivil char(1),--c=casado, s=soltero,v=viudo
seccion varchar(20)
);
go

--3
insert into empleados values ('22222222','Alberto Lopez','c','Sistemas');
insert into empleados values ('23333333','Beatriz Garcia','c','Administracion');
insert into empleados values ('24444444','Carlos Fuentes','s','Administracion');
insert into empleados values ('25555555','Daniel Garcia','s','Sistemas');
insert into empleados values ('26666666','Ester Juarez','c','Sistemas');
insert into empleados values ('27777777','Fabian Torres','s','Sistemas');
insert into empleados values ('28888888','Gabriela Lopez',null,'Sistemas');
insert into empleados values ('29999999','Hector Garcia',null,'Administracion');
go

--4
select top 5 * from empleados  
--5
select top 4 nombre, seccion from empleados order by seccion
--6
select top 4 with ties nombre, seccion from empleados order by seccion
--7
select top 4 nombre, estadocivil, seccion from empleados order by estadocivil, seccion
--8
select top 4 with ties nombre, estadocivil, seccion from empleados order by estadocivil, seccion

/* CONCEPTO 53 - Eliminar restricciones (alter table - drop) */
/* Problema 1 */
--1
if object_id('vehiculos') is not null
	drop table vehiculos;
go

--2
create table vehiculos
(
patente char(6) not null,
tipo char(1),--'a'=auto, 'm'=moto
horallegada datetime not null,
horasalida datetime
);
go

--3
alter table vehiculos
add constraint CK_vehiculos_tipo
check (tipo in ('a','m'));
go

--4
alter table vehiculos
add constraint DF_vehiculos_tipo
default 'a'
for tipo;
--5
alter table vehiculos
add constraint CK_vehiculos_patente_patron
check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');
go

--6
alter table vehiculos
add constraint PK_vehiculos_patentellegada
primary key(patente,horallegada);
go

--7
insert into vehiculos values('SDR456','a','2005/10/10 10:10',null);
go

--8
insert into vehiculos values('SDR456','m','2005/10/10 10:10',null);
go

--9
insert into vehiculos values('SDR456','m','2005/10/10 12:10',null);
go

--10
insert into vehiculos values('SDR111','m','2005/10/10 10:10',null);
go

--11
exec sp_helpconstraint vehiculos;
--12
alter table vehiculos
drop DF_vehiculos_tipo;
--13
exec sp_helpconstraint vehiculos;
--14
alter table vehiculos
drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;
--15
exec sp_helpconstraint vehiculos;

/* CONCEPTO 65 - Trabajar con varias tablas */
--Nota: Realizado

/* CONCEPTO 66 - Combinacion interna (inner join) */
/* Problema 1 */
--1
if (object_id('clientes')) is not null
	drop table clientes;
if (object_id('provincias')) is not null
	drop table provincias;
go

--2
create table clientes 
(
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(20),
codigoprovincia tinyint not null,
primary key(codigo)
);

create table provincias
(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);
go

--3
insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');

insert into clientes values ('Lopez Marcos','Colon 111','C�rdoba',1); 
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values ('Torres Fabiola','Alem 777','Ibera',3);
go

--4
select cliente.nombre,domicilio,ciudad,provincia.nombre
from clientes as cliente
join provincias as provincia
on cliente.codigoprovincia = provincia.codigo;
--5
select cliente.nombre,domicilio,ciudad,provincia.nombre
from clientes as cliente
join provincias as provincia
on cliente.codigoprovincia = provincia.codigo
order by provincia.nombre;
--6
select cliente.nombre, domicilio, ciudad 
from clientes as cliente
join provincias as provincia
on cliente.codigoprovincia = provincia.codigo
where provincia.nombre = 'Santa Fe'

/* Problema 2 */
--1
if (object_id('inscriptos')) is not null
	drop table inscriptos;
if (object_id('inasistencias')) is not null
	drop table inasistencias;

create table inscriptos
(
nombre varchar(30),
documento char(8),
deporte varchar(15),
matricula char(1), --'s'=paga 'n'=impaga
primary key(documento,deporte)
);

create table inasistencias
(
documento char(8),
deporte varchar(15),
fecha datetime
);
go
go

--2
insert into inscriptos values('Juan Perez','22222222','tenis','s');
insert into inscriptos values('Maria Lopez','23333333','tenis','s');
insert into inscriptos values('Agustin Juarez','24444444','tenis','n');
insert into inscriptos values('Marta Garcia','25555555','natacion','s');
insert into inscriptos values('Juan Perez','22222222','natacion','s');
insert into inscriptos values('Maria Lopez','23333333','natacion','n');

insert into inasistencias values('22222222','tenis','2006-12-01');
insert into inasistencias values('22222222','tenis','2006-12-08');
insert into inasistencias values('23333333','tenis','2006-12-01');
insert into inasistencias values('24444444','tenis','2006-12-08');
insert into inasistencias values('22222222','natacion','2006-12-02');
insert into inasistencias values('23333333','natacion','2006-12-02');
go

--3
select nombre, insc.deporte, ina.fecha
from inscriptos as insc
join inasistencias as ina
on insc.documento = ina.documento and
insc.deporte = ina.deporte
order by nombre, insc.deporte
--4
select nombre,insc.deporte, ina.fecha
from inscriptos as insc
join inasistencias as ina
on insc.documento=ina.documento and
insc.deporte=ina.deporte
where insc.documento='22222222';
--5
select nombre,insc.deporte, ina.fecha
from inscriptos as insc
join inasistencias as ina
on insc.documento=ina.documento and
insc.deporte=ina.deporte
where insc.matricula='s';

/* CONCEPTO 67- Combinaci�n externa izquierda (left join) */
/* Problema 1 */
--1
if (object_id('clientes')) is not null
	drop table clientes;
if (object_id('provincias')) is not null
	drop table provincias;

create table clientes 
(
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(20),
codigoprovincia tinyint not null,
primary key(codigo)
);

create table provincias
(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);
go
go

--2
insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');

insert into clientes values ('Lopez Marcos','Colon 111','C�rdoba',1);
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);
go

--3
select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo;
--4
select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
left join clientes as c
on codigoprovincia = p.codigo;
--5
select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.codigo is not null;
--6
select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.codigo is null
order by c.nombre;
--7
select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.nombre='Cordoba';

/* CONCEPTO 68 - Combinaci�n externa derecha (right join) */
/* Problema 1 */
--1
if (object_id('clientes')) is not null
	drop table clientes;
if (object_id('provincias')) is not null
	drop table provincias;

create table clientes 
(
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(20),
codigoprovincia tinyint not null,
primary key(codigo)
);

create table provincias
(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);
go
go

--2
insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');

insert into clientes values ('Lopez Marcos','Colon 111','C�rdoba',1);
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);
go

--3
select c.codigo, c.nombre, c.domicilio, c.codigoprovincia
from provincias as p
right join clientes as c
on codigoprovincia = p.codigo
--4
select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo;
--5
select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
right join clientes as c
on codigoprovincia = p.codigo
where p.codigo is not null;
--6
select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
right join clientes as c
on codigoprovincia = p.codigo
where p.codigo is null
order by ciudad;

/* CONCEPTO 69 -Combinacion externa completa (full join) */
/* Problema 1 */
--1
if (object_id('deportes')) is not null
	drop table deportes;
if (object_id('inscriptos')) is not null
	drop table inscriptos;
create table deportes
(
codigo tinyint identity,
nombre varchar(30),
profesor varchar(30),
primary key (codigo)
);
create table inscriptos
(
documento char(8),
codigodeporte tinyint not null,
matricula char(1) --'s'=paga 'n'=impaga
);
go
go

--2
insert into deportes values('tenis','Marcelo Roca');
insert into deportes values('natacion','Marta Torres');
insert into deportes values('basquet','Luis Garcia');
insert into deportes values('futbol','Marcelo Roca');
 
insert into inscriptos values('22222222',3,'s');
insert into inscriptos values('23333333',3,'s');
insert into inscriptos values('24444444',3,'n');
insert into inscriptos values('22222222',2,'s');
insert into inscriptos values('23333333',2,'s');
insert into inscriptos values('22222222',4,'n'); 
insert into inscriptos values('22222222',5,'n'); 

--3
select i.documento,d.nombre,i.matricula
from inscriptos as i
join deportes as d
on codigodeporte=codigo;
--4
select documento,d.nombre,matricula
from inscriptos as i
left join deportes as d
on codigodeporte=codigo;
--5
select documento,d.nombre,matricula
from deportes as d
right join inscriptos as i
on codigodeporte=codigo;
--6
select nombre
from deportes as d
left join inscriptos as i
on codigodeporte = codigo
where codigodeporte is null
--7
select documento
from inscriptos as i
left join deportes as d
on codigodeporte = codigo
where codigo is null
--8
select documento,nombre,profesor,matricula
from inscriptos as i
full join deportes as d
on codigodeporte=codigo; 

/* CONCEPTO 70 -Combinaciones cruzadas (cross join) */
/* Problema 1 */
--1
if object_id('mujeres') is not null
	drop table mujeres;
if object_id('varones') is not null
	drop table varones;

create table mujeres
(
nombre varchar(30),
domicilio varchar(30),
edad int
);
create table varones
(
nombre varchar(30),
domicilio varchar(30),
edad int
);
go
go

--2
insert into mujeres values('Maria Lopez','Colon 123',45);
insert into mujeres values('Liliana Garcia','Sucre 456',35);
insert into mujeres values('Susana Lopez','Avellaneda 98',41);

insert into varones values('Juan Torres','Sarmiento 755',44);
insert into varones values('Marcelo Oliva','San Martin 874',56);
insert into varones values('Federico Pereyra','Colon 234',38);
insert into varones values('Juan Garcia','Peru 333',50);
go

--3
select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v;
--4
select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v
where m.edad>40 and v.edad>40;
--5
select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v
where m.edad-v.edad between -10 and 10;
/* Problema 2 */
--1
if object_id('guardias') is not null
	drop table guardias;
if object_id('tareas') is not null
	drop table tareas;
go

--2
create table guardias
(
documento char(8),
nombre varchar(30),
sexo char(1), /* 'f' o 'm' */
domicilio varchar(30),
primary key (documento)
);

create table tareas
(
codigo tinyint identity,
domicilio varchar(30),
descripcion varchar(30),
horario char(2), /* 'AM' o 'PM'*/
primary key (codigo)
);
go

--3
insert into guardias values('22333444','Juan Perez','m','Colon 123');
insert into guardias values('24333444','Alberto Torres','m','San Martin 567');
insert into guardias values('25333444','Luis Ferreyra','m','Chacabuco 235');
insert into guardias values('23333444','Lorena Viale','f','Sarmiento 988');
insert into guardias values('26333444','Irma Gonzalez','f','Mariano Moreno 111');

insert into tareas values('Colon 1111','vigilancia exterior','AM');
insert into tareas values('Urquiza 234','vigilancia exterior','PM');
insert into tareas values('Peru 345','vigilancia interior','AM');
insert into tareas values('Avellaneda 890','vigilancia interior','PM');
go

--4
select nombre,t.domicilio,descripcion
from guardias
cross join tareas as t;
--5
select nombre,t.domicilio,descripcion
from guardias as g
cross join tareas as t
where (g.sexo='f' and t.descripcion='vigilancia interior') or
(g.sexo='m' and t.descripcion='vigilancia exterior');

/* CONCEPTO 73 - Combinacion de mas de dos tablas */
/* Problema 1 */
if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;
 if object_id('inscriptos') is not null
  drop table inscriptos;

 create table socios
 (
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  anio char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,anio)
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');

 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');

 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 insert into inscriptos values ('26666666',0,'2006','s');

 select s.nombre,d.nombre,anio
  from deportes as d
  right join inscriptos as i
  on codigodeporte=d.codigo
  left join socios as s
  on i.documento=s.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  join inscriptos as i
  on codigodeporte=d.codigo
  join socios as s
  on s.documento=i.documento
  where s.documento='22222222';
/* CONCEPTO 74 - Combinaciones con update y delete */
--Nota: Realizado

/* CONCEPTO 75 - Clave foranea */
--Nota: Realizado

/* CONCEPTO 82 - Union */
/* Problema 1 */
if object_id('clientes') is not null
  drop table clientes;
 if object_id('proveedores') is not null
  drop table proveedores;
 if object_id('empleados') is not null
  drop table empleados;

create table proveedores
(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
create table clientes
(
codigo int identity,
Nombre varchar (30),
domicilio varchar(30),
primary key(codigo)
);
create table empleados
(
documento char(8) not null,
nombre varchar(20),
apellido varchar(20),
domicilio varchar(30),
primary key(documento)
);

insert into proveedores values('Bebida cola','Colon 123');
insert into proveedores values('Carnes Unica','Caseros 222');
insert into proveedores values('Lacteos Blanca','San Martin 987');
insert into clientes values('Supermercado Lopez','Avellaneda 34');
insert into clientes values('Almacen Anita','Colon 987');
insert into clientes values('Garcia Juan','Sucre 345');
insert into empleados values('23333333','Federico','Lopez','Colon 987');
insert into empleados values('28888888','Ana','Marquez','Sucre 333');
insert into empleados values('30111111','Luis','Perez','Caseros 956');

select nombre, domicilio from proveedores
union
select nombre, domicilio from clientes
union
select (apellido+' '+nombre), domicilio from empleados;

select nombre, domicilio, 'proveedor' as categoria from proveedores
union
select nombre, domicilio, 'cliente' from clientes
union
select (apellido+' '+nombre), domicilio , 'empleado' from empleados
order by categoria;

/* CONCEPTO 83 - Agregar y eliminar campos ( alter table - add - drop) */
/* Problema 1 */
if object_id('empleados') is not null
  drop table empleados;

create table empleados
(
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
fechaingreso datetime
);

insert into empleados(apellido,nombre) values ('Rodriguez','Pablo');

alter table empleados
add sueldo decimal(5,2);

exec sp_columns empleados;

alter table empleados
add codigo int identity;

alter table empleados
add documento char(8) not null;

alter table empleados
add documento char(8) not null default '00000000';

exec sp_columns empleados;

alter table empleados
drop column sueldo;

exec sp_columns empleados;

alter table empleados
drop column documento;

alter table empleados
drop column codigo,fechaingreso;

exec sp_columns empleados;

/* CONCEPTO 84 -Alterar campos (alter table - alter) */
/* Problema 1 */
if object_id('empleados') is not null
  drop table empleados;

create table empleados
(
legajo int not null,
documento char(7) not null,
nombre varchar(10),
domicilio varchar(30),
ciudad varchar(20) default 'Buenos Aires',
sueldo decimal(6,2),
cantidadhijos tinyint default 0,
primary key(legajo)
);

alter table empleados
alter column nombre varchar(30);

exec sp_columns empleados;

alter table empleados
alter column sueldo decimal(6,2) not null;

alter table empleados
alter column documento char(8) not null;

alter table empleados
alter column legajo tinyint not null;

insert into empleados values(1,'22222222','Juan Perez','Colon 123','Cordoba',500,3);
insert into empleados values(2,'30000000',null,'Sucre 456','Cordoba',600,2);

alter table empleados
alter column nombre varchar(30) not null;

delete from empleados where nombre is null;
alter table empleados
alter column nombre varchar(30) not null;

alter table empleados
alter column ciudad varchar(10);

insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

alter table empleados
alter column ciudad varchar(15);

insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

alter table empleados
alter column legajo int identity;

/* CONCEPTO 86 - Campos calculados */
/* Problema 1 */
 if object_id('articulos') is not null
  drop table articulos;

create table articulos
(
  codigo int identity,
  descripcion varchar(30),
  precio decimal(5,2) not null,
  cantidad smallint not null default 0,
  montototal as precio *cantidad
 );

insert into articulos values('birome',1.5,100,150);

insert into articulos values('birome',1.5,100);
insert into articulos values('cuaderno 12 hojas',4.8,150);
insert into articulos values('lapices x 12',5,200);

select * from articulos;

update articulos set precio=2 where descripcion='birome';
select * from articulos;

update articulos set cantidad=200 where descripcion='birome';
select * from articulos;

update articulos set montototal=300 where descripcion='birome';

/* CONCEPTO 91 - Subconsultas */
--Nota: Realizado

/* CONCEPTO 92 -Subconsultas como expresion */
/* Problema 1 */
 if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos
 (
  documento char(8),
  nombre varchar(30),
  nota decimal(4,2),
  primary key(documento),
  constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),
 );

 insert into alumnos values('30111111','Ana Algarbe',5.1);
 insert into alumnos values('30222222','Bernardo Bustamante',3.2);
 insert into alumnos values('30333333','Carolina Conte',4.5);
 insert into alumnos values('30444444','Diana Dominguez',9.7);
 insert into alumnos values('30555555','Fabian Fuentes',8.5);
 insert into alumnos values('30666666','Gaston Gonzalez',9.70);

 select alumnos.*
  from alumnos
  where nota=
   (select max(nota) from alumnos);

 select documento ,nombre, nota
  from alumnos
  where nota=
   (select nombre,max(nota) from alumnos);

 select alumnos.*,
 (select avg(nota) from alumnos)-nota as diferencia
  from alumnos
  where nota<
   (select avg(nota) from alumnos);

 update alumnos set nota=4
  where nota=
   (select min(nota) from alumnos);

 delete from alumnos
 where nota<
   (select avg(nota) from alumnos);

/* CONCEPTO 93 -Subconsultas con in */
/* Problema 1 */
if (object_id('ciudades')) is not null
   drop table ciudades;
  if (object_id('clientes')) is not null
   drop table clientes;

create table ciudades
(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
);

create table clientes 
(
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  codigociudad tinyint not null,
  primary key(codigo),
  constraint FK_clientes_ciudad
   foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade,
);

insert into ciudades (nombre) values('Cordoba');
insert into ciudades (nombre) values('Cruz del Eje');
insert into ciudades (nombre) values('Carlos Paz');
insert into ciudades (nombre) values('La Falda');
insert into ciudades (nombre) values('Villa Maria');

insert into clientes values ('Lopez Marcos','Colon 111',1);
insert into clientes values ('Lopez Hector','San Martin 222',1);
insert into clientes values ('Perez Ana','San Martin 333',2);
insert into clientes values ('Garcia Juan','Rivadavia 444',3);
insert into clientes values ('Perez Luis','Sarmiento 555',3);
insert into clientes values ('Gomez Ines','San Martin 666',4);
insert into clientes values ('Torres Fabiola','Alem 777',5);
insert into clientes values ('Garcia Luis','Sucre 888',5);

select nombre
from ciudades
where codigo in
(select codigociudad
from clientes
where domicilio like 'San Martin %');

 select distinct ci.nombre
  from ciudades as ci
  join clientes as cl
  on codigociudad=ci.codigo
  where domicilio like 'San Martin%';

 select nombre
 from ciudades
 where codigo not in
 (select codigociudad
 from clientes
 where nombre like 'G%');

 select codigociudad
  from clientes
  where nombre like 'G%';

/* CONCEPTO 94 -Subconsultas any - some - all */
/* Problema 1 */
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

create table socios
(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
create table inscriptos 
(
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
);

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select numero,nombre,deporte
  from socios as s
  join inscriptos as i
  on numerosocio=numero;

 select nombre
  from socios
  join inscriptos as i
  on numero=numerosocio
  where deporte='natacion' and 
  numero= any
  (select numerosocio
  from inscriptos as i
  where deporte='tenis');

 select deporte
  from inscriptos as i
  where numerosocio=1 and
  deporte= any
  (select deporte
  from inscriptos as i
  where numerosocio=2);

 select i1.deporte
  from inscriptos as i1
  join inscriptos as i2
  on i1.deporte=i2.deporte
  where i1.numerosocio=1 and
  i2.numerosocio=2;

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>any
  (select cuotas
  from inscriptos
  where numerosocio=1);

 select deporte
  from inscriptos as i
  where numerosocio=2 and
  cuotas>all
  (select cuotas
  from inscriptos
  where numerosocio=1);

 delete from inscriptos
  where numerosocio=any
  (select numerosocio 
   from inscriptos
   where cuotas=0);

/* CONCEPTO 95 -Subconsultas correlacionadas */
/* Problema 1 */
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

create table socios
(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
);
 
create table inscriptos 
(
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
);

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre,domicilio,
 (select count(*)
 from inscriptos as i
 where s.numero=i.numerosocio) as 'deportes'
 from socios as s;

 select nombre,
  (select (count(*)*10)
    from inscriptos as i
    where s.numero=i.numerosocio) as total,
  (select sum(i.cuotas)
    from inscriptos as i
    where s.numero=i.numerosocio) as pagas
 from socios as s;

 select nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  from socios as s
  join inscriptos as i
  on numero=numerosocio
  group by nombre;

/* CONCEPTO 96 -Exists y No Exists */
/* Problema 1 */
if object_id('inscriptos') is not null
  drop table inscriptos;
if object_id('socios') is not null
  drop table socios;

create table socios
(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero) 
 );
 
create table inscriptos 
(
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
);

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre
	from socios as s
	where exists
	(select *from inscriptos as i
     where s.numero=i.numerosocio
     and i.deporte='natacion');

 select nombre
	  from socios as s
	  where not exists
	  (select *from inscriptos as i
		 where s.numero=i.numerosocio
		 and i.deporte='natacion');

 select s.*
	  from socios as s
	  where exists
	   (select *from inscriptos as i
		 where s.numero=i.numerosocio
		 and i.cuotas=10);

/* CONCEPTO 98 - Subconsulta en lugar de una tabla */
/* Problema 1 */
if object_id('inscriptos') is not null
  drop table inscriptos;
if object_id('socios') is not null
  drop table socios;
if object_id('deportes') is not null
  drop table deportes;

create table socios
(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
);
create table deportes
(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
);
create table inscriptos
(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  a�o char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,a�o),
  constraint FK_inscriptos_socio
   foreign key (documento)
   references socios(documento)
   on update cascade
   on delete cascade
);

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');
 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');
 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 select i.documento,i.codigodeporte,d.nombre as deporte, a�o, matricula, d.profesor
 from deportes as d
 join inscriptos as i
 on d.codigo=i.codigodeporte;

 select s.nombre,td.deporte,td.profesor,td.a�o,td.matricula
  from socios as s
  join (select i.documento,i.codigodeporte,d.nombre as deporte, a�o, matricula, d.profesor
	from deportes as d
	join inscriptos as i
	on d.codigo=i.codigodeporte) as td
  on td.documento=s.documento;

/* CONCEPTO 99 -Subconsulta (update - delete) */
/* Problema 1 */
if object_id('inscriptos') is not null
  drop table inscriptos;
if object_id('socios') is not null
  drop table socios;

create table socios
(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
);
 
create table inscriptos 
(
  numerosocio int not null,
  deporte varchar(20) not null,
  matricula char(1),-- 'n' o 's'
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
);

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis','s');
 insert into inscriptos values(1,'basquet','s');
 insert into inscriptos values(1,'natacion','s');
 insert into inscriptos values(2,'tenis','s');
 insert into inscriptos values(2,'natacion','s');
 insert into inscriptos values(2,'basquet','n');
 insert into inscriptos values(2,'futbol','n');
 insert into inscriptos values(3,'tenis','s');
 insert into inscriptos values(3,'basquet','s');
 insert into inscriptos values(3,'natacion','n');
 insert into inscriptos values(4,'basquet','n');

 update inscriptos set matricula='s'
  where numerosocio=
   (select numero
     from socios
     where documento='25555555');

 delete from inscriptos
  where numerosocio in
   (select numero
    from socios as s
    join inscriptos
    on numerosocio=numero
    where matricula='n');

/* CONCEPTO 100 -Subconsulta (insert) */
/* Problema 1 */
if object_id('facturas') is not null
  drop table facturas;
if object_id('clientes') is not null
  drop table clientes;

create table clientes
(
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(codigo)
);

create table facturas
(
  numero int not null,
  fecha datetime,
  codigocliente int not null,
  total decimal(6,2),
  primary key(numero),
  constraint FK_facturas_cliente
   foreign key (codigocliente)
   references clientes(codigo)
   on update cascade
);

 insert into clientes values('Juan Lopez','Colon 123');
 insert into clientes values('Luis Torres','Sucre 987');
 insert into clientes values('Ana Garcia','Sarmiento 576');
 insert into clientes values('Susana Molina','San Martin 555');

 insert into facturas values(1200,'2007-01-15',1,300);
 insert into facturas values(1201,'2007-01-15',2,550);
 insert into facturas values(1202,'2007-01-15',3,150);
 insert into facturas values(1300,'2007-01-20',1,350);
 insert into facturas values(1310,'2007-01-22',3,100);

if object_id ('clientespref') is not null
  drop table clientespref;
create table clientespref
(
  nombre varchar(30),
  domicilio varchar(30)
);

 insert into clientespref
  select nombre,domicilio
   from clientes 
   where codigo in 
    (select codigocliente
     from clientes as c
     join facturas as f
     on codigocliente=codigo
     group by codigocliente
     having sum(total)>500);

 select * from clientespref;

/* CONCEPTO 101 - Crear tabla a partir de otra (select - into) */
/* Problema 1 */
if object_id('empleados')is not null
  drop table empleados;
if object_id('sucursales')is not null
  drop table sucursales;

create table sucursales
( 
  codigo int identity,
  ciudad varchar(30) not null,
  primary key(codigo)
); 

create table empleados
( 
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  codigosucursal int,
  primary key(documento),
  constraint FK_empleados_sucursal
   foreign key (codigosucursal)
   references sucursales(codigo)
   on update cascade
); 

 insert into sucursales values('Cordoba');
 insert into sucursales values('Villa Maria');
 insert into sucursales values('Carlos Paz');
 insert into sucursales values('Cruz del Eje');

 insert into empleados values('22222222','Ana Acosta','Avellaneda 111','Secretaria',500,1);
 insert into empleados values('23333333','Carlos Caseros','Colon 222','Sistemas',800,1);
 insert into empleados values('24444444','Diana Dominguez','Dinamarca 333','Secretaria',550,2);
 insert into empleados values('25555555','Fabiola Fuentes','Francia 444','Sistemas',750,2);
 insert into empleados values('26666666','Gabriela Gonzalez','Guemes 555','Secretaria',580,3);
 insert into empleados values('27777777','Juan Juarez','Jujuy 777','Secretaria',500,4);
 insert into empleados values('28888888','Luis Lopez','Lules 888','Sistemas',780,4);
 insert into empleados values('29999999','Maria Morales','Marina 999','Contaduria',670,4);

 select documento,nombre,domicilio,seccion,sueldo,ciudad
  from empleados
  join sucursales on codigosucursal=codigo;

if object_id('secciones') is not null
  drop table secciones;

 select distinct seccion as nombre
  into secciones
  from empleados;

 select *from secciones;

if object_id('sueldosxseccion') is not null
  drop table sueldosxseccion;

 select seccion, sum(sueldo) as total
  into sueldosxseccion
  from empleados
  group by seccion;

 select *from sueldosxseccion;

if object_id('maximossueldos') is not null
  drop table maximossueldos;

  select top 3 *
  into maximossueldos
  from empleados
  order by sueldo;

  select *from maximossueldos;

if object_id('sucursalCordoba') is not null
  drop table sucursalCordoba;

  select nombre,ciudad
  into sucursalCordoba
  from empleados
  join sucursales
  on codigosucursal=codigo
  where ciudad='Cordoba';

  select *from sucursalCordoba;
/* CONCEPTO 102 - GO */ 
-- NOTA: Realizado

/* CONCEPTO 103 - Vistas */
/* Problema 1 */
if object_id('inscriptos') is not null  
  drop table inscriptos;
if object_id('socios') is not null  
  drop table socios;
if object_id('profesores') is not null  
  drop table profesores; 
if object_id('cursos') is not null  
  drop table cursos;

create table socios
(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_socios_documento
   primary key (documento)
);

create table profesores
(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_profesores_documento
   primary key (documento)
);

 create table cursos
 (
  numero tinyint identity,
  deporte varchar(20),
  dia varchar(15),
   constraint CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
  documentoprofesor char(8),
  constraint PK_cursos_numero
   primary key (numero),
);

create table inscriptos
(
  documentosocio char(8) not null,
  numero tinyint not null,
  matricula char(1),
  constraint CK_inscriptos_matricula check (matricula in('s','n')),
  constraint PK_inscriptos_documento_numero
   primary key (documentosocio,numero)
);

 insert into socios values('30000000','Fabian Fuentes','Caseros 987');
 insert into socios values('31111111','Gaston Garcia','Guemes 65');
 insert into socios values('32222222','Hector Huerta','Sucre 534');
 insert into socios values('33333333','Ines Irala','Bulnes 345');

 insert into profesores values('22222222','Ana Acosta','Avellaneda 231');
 insert into profesores values('23333333','Carlos Caseres','Colon 245');
 insert into profesores values('24444444','Daniel Duarte','Sarmiento 987');
 insert into profesores values('25555555','Esteban Lopez','Sucre 1204');

 insert into cursos values('tenis','lunes','22222222');
 insert into cursos values('tenis','martes','22222222');
 insert into cursos values('natacion','miercoles','22222222');
 insert into cursos values('natacion','jueves','23333333');
 insert into cursos values('natacion','viernes','23333333');
 insert into cursos values('futbol','sabado','24444444');
 insert into cursos values('futbol','lunes','24444444');
 insert into cursos values('basquet','martes','24444444');

 insert into inscriptos values('30000000',1,'s');
 insert into inscriptos values('30000000',3,'n');
 insert into inscriptos values('30000000',6,null);
 insert into inscriptos values('31111111',1,'s');
 insert into inscriptos values('31111111',4,'s');
 insert into inscriptos values('32222222',8,'s');

 if object_id('vista_club') is not null 
	drop view vista_club;

 create view vista_club as
  select s.nombre as socio,s.documento as docsocio,s.domicilio as domsocio,c.deporte,dia,
   p.nombre as profesor, matricula
   from socios as s
   full join inscriptos as i
   on s.documento=i.documentosocio
   full join cursos as c
   on i.numero=c.numero
   full join profesores as p
   on c.documentoprofesor=p.documento;

 select *from vista_club;

 select deporte,dia,count(socio) as cantidad
  from vista_club
  where deporte is not null
  group by deporte,dia
  order by cantidad;

 select deporte,dia from vista_club
  where socio is null and deporte is not null;

 select socio from vista_club
  where deporte is null and socio is not null;

 select profesor from vista_club where deporte is null and profesor is not null;

 select socio, docsocio from vista_club where deporte is not null and matricula <> 's';

 select distinct profesor,dia
  from vista_club where profesor is not null;

 select distinct profesor,dia
  from vista_club where profesor is not null
  order by dia;

 select socio from vista_club
  where deporte='tenis' and dia='lunes';

 if object_id('vista_inscriptos') is not null
  drop view vista_inscriptos;

 create view vista_inscriptos as
  select deporte,dia,
   (select count(*)
    from inscriptos as i
    where i.numero=c.numero) as cantidad
  from cursos as c;

 select *from vista_inscriptos;

-- 104 - Vistas (informacion)

--LISTO

--110 - Lenguaje de control de flujo (case)
/* Problema 1 */
if object_id('empleados') is not null
  drop table empleados;

create table empleados
(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  fechaingreso datetime,
  cantidadhijos tinyint,
  sueldo decimal(5,2),
  primary key(documento)
);

insert into empleados values ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550);
insert into empleados values ('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650);
insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510);
insert into empleados values ('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700);
insert into empleados values ('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400);
insert into empleados values ('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420);
insert into empleados values ('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350);
insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390);
insert into empleados values ('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);

 select sexo, count(*) as cantidad, obsequio=
  case 
	when sexo='f' then 'rosas'
   else 'corbata'
  end
  from empleados
  where datepart(month,fechanacimiento)=5
  group by sexo;

select nombre,datepart(year,fechaingreso) as a�oingreso,
  datepart(year,getdate())-datepart(year,fechaingreso) as A�osdeServicio, placa=
   case (datepart(year,getdate())-datepart(year,fechaingreso)) %10
		when 0 then 'Si'  --si la cantidad de a�os es divisible por 10
   else 'No'
   end
  from empleados
  where datepart(month,fechaingreso)=4;

select nombre,sueldo,cantidadhijos,porhijo=
  case 
	when sueldo<=500 then 200
  else 100
  end,
 salariofamilar=
  case
	when sueldo<=500 then 200*cantidadhijos
  else 100*cantidadhijos
  end,
 sueldototal=
  case
	when sueldo<=500 then sueldo+(200*cantidadhijos)
  else sueldo+(100*cantidadhijos)
  end
  from empleados
  order by sueldototal;