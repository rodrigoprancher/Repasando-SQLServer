/*

Una facultad almacena los datos de sus alumnos en una tabla denominada "alumnos".
1- Elimine la tabla, si existe:
 if object_id('alumnos') is not null
  drop table alumnos;

2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
 create table alumnos(
  apellido varchar(30),
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso datetime,
  fechanacimiento datetime
 );

3- Setee el formato para entrada de datos de tipo fecha para que acepte valores "d�a-mes-a�o": 
 set dateformat 'dmy';

4- Ingrese un alumno empleando distintos separadores para las fechas:
 insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

5- Ingrese otro alumno empleando solamente un d�gito para d�a y mes y 2 para el a�o:
 insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

6- Ingrese un alumnos empleando 2 d�gitos para el a�o de la fecha de ingreso y "null" en 
"fechanacimiento":
 insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

7- Intente ingresar un alumno con fecha de ingreso correspondiente a "15 de marzo de 1990" pero en 
orden incorrecto "03-15-90":
 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);
aparece un mensaje de error porque lo lee con el formato d�a, mes y a�o y no reconoce el mes 15.

8- Muestre todos los alumnos que ingresaron antes del '1-1-91'.
1 registro.

9- Muestre todos los alumnos que tienen "null" en "fechanacimiento":
 select *from alumnos where fechanacimiento is null;
1 registro.

10- Intente ingresar una fecha de ingreso omitiendo los separadores:
 insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);
No lo acepta.

11- Setee el formato de entrada de fechas para que acepte valores "mes-dia-a�o".

12- Ingrese el registro del punto 7.

*/

-- 1
IF OBJECT_ID('alumnos') IS NOT NULL
	DROP TABLE alumnos;

-- 2
CREATE TABLE alumnos(
	apellido		VARCHAR(30),
	nombre			VARCHAR(30),
	documento		CHAR(8),
	domicilio		VARCHAR(30),
	fechaingreso	DATETIME,
	fechanacimiento DATETIME
);

-- 3
SET DATEFORMAT 'dmy';

-- 4
insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

-- 5
insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','3-3-91','15/02/1972');

-- 6
insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

-- 7
insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

-- 8
SELECT * FROM alumnos
WHERE fechaingreso < '1/1/91'

-- 9
SELECT * FROM alumnos
WHERE fechanacimiento IS NULL;

-- 10
insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

-- 11
SET DATEFORMAT 'mdy'

-- 12
insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

SELECT * FROM alumnos;