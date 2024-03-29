/*

Trabaje con la tabla "libros" de una librer�a.
1- Elimine la tabla si existe:
 if object_id ('libros') is not null
  drop table libros;

2- Cree la tabla:
 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  primary key (codigo)
 );

3- Ingrese algunos registros:
 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

4- Muestre todos los campos de los libros y un campo extra, con el encabezado "monto total" en la 
que calcule el monto total en dinero de cada libro (precio por cantidad)

5- Muestre el t�tulo, autor y precio de todos los libros de editorial "Emece" y agregue dos columnas 
extra en las cuales muestre el descuento de cada libro, con el encabezado "descuento" y el precio 
con un 10% de descuento con el encabezado "precio final".

6- Muestre una columna con el t�tulo y el autor concatenados con el encabezado "T�tulo y autor"

*/

-- 1
IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

-- 2
CREATE TABLE libros(
	codigo		INT IDENTITY,
	titulo		VARCHAR(40) NOT NULL,
	autor		VARCHAR(20) DEFAULT 'Desconocido',
	editorial	VARCHAR(20),
	precio		DECIMAL(6, 2),
	cantidad	TINYINT DEFAULT 0,
	PRIMARY KEY (codigo)
);

-- 3
insert into libros (titulo,autor,editorial,precio)
values('El aleph','Borges','Emece',25);
insert into libros
values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

-- 4
SELECT titulo, autor, editorial, precio, cantidad,
precio * cantidad AS 'Monto total'
FROM libros;

-- 5
SELECT titulo, autor, precio,
precio * 0.1 as 'descuento',
precio - (precio * 0.1) AS 'descuento total'
FROM LIBROS
WHERE editorial = 'Emece';

-- 6
SELECT titulo + ' - ' + autor AS 'Titulo y Autor'
FROM libros;