create database TiendaDB	
use TiendaDB;

use master;
drop database TiendaDB;

create table Proveedor 
(Id_Proveedor INT IDENTITY PRIMARY KEY,
Nombre_Proveedor VARCHAR(25) NOT NULL,
Telefono VARCHAR(10) NULL);

create table Empleado   
(Id_Empleado INT IDENTITY PRIMARY KEY,
Nombre VARCHAR(25) NOT NULL,
Hora_Entrada TIME NOT NULL,
Hora_Salida TIME NOT NULL);

create table Producto(
Id_Producto VARCHAR(15) PRIMARY KEY,
Nombre VARCHAR(25) NOT NULL, 
Fecha_caducidad DATE NULL,
Cantidad INT NOT NULL,
Precio_Venta SMALLMONEY NOT NULL,
Id_Proveedor INT,
foreign key (Id_Proveedor)
references Proveedor (Id_Proveedor));

create table Compra_Producto 
(Id_Compra INT IDENTITY PRIMARY KEY,
Fecha_Compra DATE NOT NULL,
Total_Compra SMALLMONEY NOT NULL,
Id_Empleado INT,
Id_Producto VARCHAR(15),
foreign key (Id_Empleado)
references Empleado (Id_Empleado),
foreign key (Id_Producto)
references Producto (Id_Producto));

create table Venta 
(Id_Venta INT IDENTITY PRIMARY KEY,
Fecha_venta DATE NOT NULL,
Total_venta SMALLMONEY NOT NULL,
Id_Empleado INT,
Id_Producto VARCHAR(15),
foreign key (Id_Empleado)
references Empleado (Id_Empleado),
foreign key (Id_Producto)
references Producto (Id_Producto));

--modificar
ALTER TABLE Empleado
ALTER COLUMN Nombre varchar (20);

ALTER TABLE Proveedor
ALTER COLUMN Nombre_Proveedor varchar (30);

ALTER TABLE Producto
ALTER COLUMN Nombre varchar (35);

--DML Insert
INSERT INTO Proveedor
(Nombre_Proveedor, Telefono)
values('Jose Perez Martinez', '2441004059');
INSERT INTO Proveedor
(Nombre_Proveedor, Telefono)
values('Maria Fuentes Ortiz', '2441010322');
INSERT INTO Proveedor
(Nombre_Proveedor, Telefono)
values('Carlos Jimenez Carranza', '2441228765');
INSERT INTO Proveedor
(Nombre_Proveedor, Telefono)
values('Arnulfo Torres Hernandez', '2226542301');
INSERT INTO Proveedor
(Nombre_Proveedor, Telefono)
values('Monica Ramos Sanches ', '2447642396');
Select * from Proveedor

INSERT INTO Empleado 
(Nombre, Hora_entrada, Hora_salida)
values('Berenice Sosa Sosa', '08:00:00.0000000', '22:00:00.0000000');
INSERT INTO Empleado 
(Nombre, Hora_entrada, Hora_salida)
values('Fatima Sosa Sosa', '08:00:00.0000000', '22:00:00.0000000');
INSERT INTO Empleado 
(Nombre, Hora_entrada, Hora_salida)
values('Stephany Sosa Sosa', '08:00:00.0000000', '22:00:00.0000000');
INSERT INTO Empleado 
(Nombre, Hora_entrada, Hora_salida)
values('Patricia Sosa Cruz', '08:00:00.0000000', '22:00:00.0000000');
INSERT INTO Empleado 
(Nombre, Hora_entrada, Hora_salida)
values('Ricardo Sosa Sosa', '08:00:00.0000000', '22:00:00.0000000');
Select * from Empleado

--Producto Mayonesa

drop table Compra_Producto;
drop table Venta;

INSERT INTO Producto
(Id_Producto, Nombre, Fecha_caducidad, Cantidad, Precio_Venta, Id_Proveedor)
values('7501003340115', 'Mayonesa 105g', '2023-11-27', 6, $17.50, 1);
Select * from Producto

INSERT INTO Compra_Producto
(Fecha_Compra, Total_Compra, Id_Empleado, Id_Producto)
values('2022-04-10', $105, 1, '7501003340115');
select * from Compra_Producto

INSERT INTO Venta
(Fecha_venta, Total_venta, Id_Empleado, Id_Producto)
values (GETDATE(), $17.50, 1, '7501003340115');
select * from Venta



--Producto Cheetos
INSERT INTO Producto
(Id_Producto, Nombre, Fecha_caducidad, Cantidad, Precio_Venta, Id_Proveedor)
values('7501011143586', 'Cheetos 58g', '2022-09-04', 11, $11.00, 2);
Select * from Producto

INSERT INTO Compra_Producto
(Fecha_Compra, Total_Compra, Id_Empleado, Id_Producto)
values('2022-04-10', $132.00, 1, '7501011143586');
select * from Compra_Producto

INSERT INTO Venta
(Fecha_venta, Total_venta, Id_Empleado, Id_Producto)
values (GETDATE(), $55.00, 1, '7501011143586');
select * from Venta

--Producto Marlboro
INSERT INTO Producto
(Id_Producto, Nombre, Fecha_caducidad, Cantidad, Precio_Venta, Id_Proveedor)
values('75074753', 'Marlboro Men 22u', '', 3, $85.00, 5);
Select * from Producto

INSERT INTO Compra_Producto
(Fecha_Compra, Total_Compra, Id_Empleado, Id_Producto)
values('2022-05-10', $255.00, 5, '75074753');
select * from Compra_Producto

INSERT INTO Venta
(Fecha_venta, Total_venta, Id_Empleado, Id_Producto)
values (GETDATE(), $85.00, 1, '75074753');
select * from Venta

--Producto Cerillos la central
INSERT INTO Producto
(Id_Producto, Nombre, Fecha_caducidad, Cantidad, Precio_Venta, Id_Proveedor)
values('75036553', 'Cerillos la central 50u', '', 15, $3.00, 6);
Select * from Producto

INSERT INTO Compra_Producto
(Fecha_Compra, Total_Compra, Id_Empleado, Id_Producto)
values('2022-05-02', $45.00, 2, '75036553');
select * from Compra_Producto

INSERT INTO Venta
(Fecha_venta, Total_venta, Id_Empleado, Id_Producto)
values (GETDATE(), $6.00, 2, '75036553');
select * from Venta

--Producto Agua Ciel
INSERT INTO Producto
(Id_Producto, Nombre, Fecha_caducidad, Cantidad, Precio_Venta, Id_Proveedor)
values('7501055343355', 'Agua Ciel 1.5', '2023-04-19', 12, $13.00, 7);
Select * from Producto

INSERT INTO Compra_Producto
(Fecha_Compra, Total_Compra, Id_Empleado, Id_Producto)
values('2022-04-30', $156.00, 4, '7501055343355');
select * from Compra_Producto

INSERT INTO Venta
(Fecha_venta, Total_venta, Id_Empleado, Id_Producto)
values (GETDATE(), $39.00, 4, '7501055343355');
select * from Venta
Select * from Producto
select * from Compra_Producto

en el presente proyecto se describe el desarrollo de una aplicacion movil y de escritori para el control de una tienda enfocado en el manejo de caducidades de productos
un requisito de la aplicacion es la gestion

hacer un analisis de una base de datos 
realizar una aplicacion utilizando bases e ddatos
disenar base datos
disenar app
disenar escritorio

funcionalidad
agregar
eliminar
editar
seleccionar
