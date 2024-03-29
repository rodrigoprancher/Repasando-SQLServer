/*

Un banco tiene registrados las cuentas corrientes de sus clientes en una tabla llamada "cuentas".
1- Elimine la tabla "cuentas" si existe:
 if object_id('cuentas') is not null
  drop table cuentas;

2- Cree la tabla :
 create table cuentas(
  numero int identity,
  documento char(8) not null,
  nombre varchar(30),
  saldo money
 );

3- Ingrese un registro con valores para todos sus campos, inclusive el campo identity, omitiendo la 
lista de campos (error, no se debe ingresar para el campo identity):
 insert into cuentas
  values (1,'25666777','Juan Perez',2500.50);

4- Ingrese un registro con valores para todos sus campos omitiendo la lista de campos (excepto el 
campo "identity"):
 insert into cuentas
  values ('25666777','Juan Perez',2500.50);

5- Ingrese un registro omitiendo alg�n campo que admitan valores nulos.

6- Intente ingresar un registro con valor para el campo "numero" (error):
 insert into cuentas (numero,documento,nombre,saldo)
  values (5,'28999777','Luis Lopez',34000);

7- Intente ingresar un registro listando 3 campos y colocando 4 valores (error)

8- Intente ingresar un registro sin valor para el campo "documento" (error)

9- Vea los registros ingresados:
 select * from libros;

*/

-- 1
IF OBJECT_ID('cuentas') IS NOT NULL
	DROP TABLE cuentas;

-- 2
CREATE TABLE cuentas(
	numero		INT IDENTITY,
	documento	CHAR(8) NOT NULL,
	nombre		VARCHAR(30),
	saldo		MONEY
);

-- 3
insert into cuentas
values (1,'25666777','Juan Perez',2500.50);

-- 4
insert into cuentas
values ('25666777','Juan Perez',2500.50);

-- 5
insert into cuentas(documento, nombre)
values ('25666779','Lucas Gomez');

-- 6
insert into cuentas (numero,documento,nombre,saldo)
values (5,'28999777','Luis Lopez',34000);

-- 7
insert into cuentas (numero,documento,nombre)
values (3344,'28999777','Luis Lopez',34000);

-- 8
insert into cuentas(nombre, saldo)
values ('Luis Lopez',34000);

-- 9
SELECT * FROM cuentas;