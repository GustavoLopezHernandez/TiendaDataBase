﻿--Ejercicios de algebra relacional

--1)selecciòn 
select * from Departamento;
select * from Servicio;
select * from Empleado;
select * from EmpleadoServicio;
select * from Poblacion;

--Enunciado de algebra relacional
--σ codigoDep =“Servicios” 
--or codigoDep =“Servicios Escolares”
--(Departamento)

--Sentencia SQL
select codigoDep from Departamento 
where nombre='Servicios' 
or nombre='Servicios Escolares'

--2) producto cartesiano
--Enunciado de algebra relacional
--R<--Departamento X Servicio 
--Sentencia SQL
select * from Departamento, Servicio;

--3) Union 
--Enunciado de algebra relacional
--Departamento ∪ Servicio
--Sentencia SQL
select * from Departamento 
union 
select * from Servicio;

--4)Funcion de agregacion
--Sentencia SQL
SELECT COUNT(DISTINCT lugares) 
as total_lugares
FROM Departamento;

--5) intersecciòn 
--Enunciado de algebra relacional
--Departamento ∩ Servicio
--Sentencia SQL
select * from Departamento 
intersect  
select * from Servicio;

--6) proyecciòn  
--Enunciado de algebra relacional
--Π cedula, nombre (σ codigoDep= "1" )(Empleado)
--Sentencia SQL
select cedula, nombre from Empleado 
where codigoDep='1'

--7)Completa los siguientes ejercicios
--Realiza la uniòn de la tabla empleado y departamento
select * from Empleado
union 
select * from Departamento;

--Realiza la intersecciòn de la tabla empleado y poblaciòn
select * from Empleado
intersect  
select * from Poblacion;

--Realiza la uniòn de la tabla empleado y departamento
select * from Empleado
union 
select * from Departamento;