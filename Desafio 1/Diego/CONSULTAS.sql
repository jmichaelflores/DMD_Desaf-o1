/****** Script for SelectTopNRows command from SSMS  ******/

--Segmentacion por sexo e ingreso promedio
SELECT (Case 
	when sexo = 0 then 'FEMENINO' 
	else 'MASCULINO'
END) Sexo,
count(*) Clientes,
ROUND(AVG(INGRESOS),2) Ingreso_Promedio
  FROM [db_spa_diego].[dbo].[tbl_clientes]
  group by sexo

--Segmentacion de sexo por cantidad de servicios solicitados por sexo
SELECT 
Sexo,
clientes,
sauna, 
masaje, 
hidro, 
yoga,
sauna+masaje+hidro+yoga Total_Servicios
FROM (SELECT (Case 
	when sexo = 0 then 'FEMENINO' 
	else 'MASCULINO'
END) Sexo,
count(*) Clientes,
SUM(sauna) sauna, SUM(masaje) masaje, SUM(hidro) hidro, SUM(yoga) yoga
  FROM [db_spa_diego].[dbo].[tbl_clientes]
  group by Sexo) T

---Segmentacion tipo de cliente por cantidad de ingresos
SELECT id, 
(Case 
	when sexo = 0 then 'F' 
	else 'M'
END) Sexo, 
ingresos,
promVisit,
edad,  
(Case 
	when ingresos between 1 and 1000 then 'A' --NORMAL
	when ingresos between 1001 and 2000 then 'E' -- ESPECIAL
	when ingresos > 2000 then 'P' --PREFERENCIAL
END) TipoCliente
  FROM [db_spa_diego].[dbo].[tbl_clientes]
  group by id, sexo, ingresos,promVisit,edad


--- Segmentacion tipo de cliente por cantidad de servicios solicitados
SELECT id, 
(Case 
	when sexo = 0 then 'F' 
	else 'M'
END) Sexo, 
ingresos,
promVisit,
edad, 
(Case 
	when sauna+masaje+hidro+yoga between 0 and 1 then 'A' --NORMAL
	when sauna+masaje+hidro+yoga between 2 and 3 then 'E' -- ESPECIAL
	when sauna+masaje+hidro+yoga > 3 then 'P' --PREFERENCIAL
END) TipoCliente
  FROM [db_spa_diego].[dbo].[tbl_clientes]
  group by id, sexo, ingresos,promVisit,edad, sauna+masaje+hidro+yoga


--Clientes que solicitaron 1 o mas servicios
SELECT id, 
(Case 
	when sexo = 0 then 'F' 
	else 'M'
END) Sexo, 
ingresos,
promVisit,
edad,
sauna+masaje+hidro+yoga as Servicios_Solicitados
  FROM [db_spa_diego].[dbo].[tbl_clientes]
  group by id, sexo, ingresos,promVisit,edad,sauna+masaje+hidro+yoga
  having sauna+masaje+hidro+yoga > 1

--Segmentacion por edad
SELECT id, (Case 
	when sexo = 0 then 'F' 
	else 'M'
END) Sexo, ingresos,promVisit,edad, 
(Case 
	when edad between 0 and 17 then 'MENOR' --MENOR
	when edad between 18 and 65 then 'JOVENES' -- JOVENES
	when edad between 66 and 79 then 'EDAD MEDIA' --EDAD MEDIA
	when edad > 79 then 'ANCIANOS' --ANCIANOS
END) Clasificacion_Edad,
sauna+masaje+hidro+yoga Servicios
  FROM [db_spa_diego].[dbo].[tbl_clientes]
  group by id, sexo, ingresos,promVisit,edad, sauna+masaje+hidro+yoga


  



