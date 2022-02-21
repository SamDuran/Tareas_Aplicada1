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

-- 25 -Funciones para el manejo de cadenas
--LISTO