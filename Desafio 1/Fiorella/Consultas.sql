

---Los 3 productos más vendidos del país
select top(3) name Producto,
(Case when Ventas> 0 then Ventas else 0 end) Cantidad 
from
(
  select sum(Rosas) Ventas, Rosas value, 'Rosas' name
  from [dbo].[tbl_ventas]
  Group by Rosas
  union all
    select sum(Claveles) Ventas, Claveles value, 'Claveles' name
  from [dbo].[tbl_ventas]
  Group by Claveles
  union all
    select sum(Macetas) Macetas, Macetas value, 'Macetas' name
  from [dbo].[tbl_ventas]
  Group by Macetas
  union all
    select sum(Tierra) Ventas, Tierra value, 'Tierra' name
  from [dbo].[tbl_ventas]
  Group by Tierra
  union all
    select sum(Girasoles) Ventas, Girasoles value, 'Girasoles' name
  from [dbo].[tbl_ventas]
  Group by Girasoles
  union all
    select sum(Hortensias) Ventas, Hortensias value, 'Hortensias' name
  from [dbo].[tbl_ventas]
  Group by Hortensias
  union all
    select sum(Globos) Ventas, Globos value, 'Globos' name
  from [dbo].[tbl_ventas]
  Group by Globos
  union all
    select sum(Tarjetas) Ventas, Tarjetas value, 'Tarjetas' name
  from [dbo].[tbl_ventas]
  Group by Tarjetas
  union all
    select sum(fOrquídeas) Ventas, fOrquídeas value, 'fOrquideas' name
  from [dbo].[tbl_ventas]
  Group by fOrquídeas
  union all
    select sum(Carmesí) Ventas, Carmesí value, 'Carmesí' name
  from [dbo].[tbl_ventas]
  Group by Carmesí
  union all
    select sum(Lirios) Ventas, Lirios value, 'Lirios' name
  from [dbo].[tbl_ventas]
  Group by Lirios
  union all
    select sum(Aurora) Ventas, Aurora value, 'Aurora' name
  from [dbo].[tbl_ventas]
  Group by Aurora
  union all
    select sum(Tulipanes) Ventas, Tulipanes value, 'Tulipanes' name
  from [dbo].[tbl_ventas]
  Group by Tulipanes
  union all
    select sum(Listón) Ventas, Listón value, 'Liston' name
  from [dbo].[tbl_ventas]
  Group by Listón
) src
WHERE VENTAS != 0
group by name,Ventas
ORDER BY ventas desc

---Combinaciones de productos mas vendidos del País
select 	
	sum(iif(Listón = 1 and Globos = 1,1,0)) Liston_Globo,
	sum(iif(Globos = 1 and Rosas = 1,1,0)) Rosas_Globos,
	sum(iif(Rosas = 1 and Listón = 1,1,0)) Rosas_Liston
from [dbo].[tbl_ventas]


--Los 3 productos más vendidos de San Miguel
select top(3) name Producto,
(Case when Ventas> 0 then Ventas else 0 end) Cantidad 
from
(
  select sum(Rosas) Ventas, Rosas value, 'Rosas' name
  from [dbo].[tbl_ventas]
  WHERE departamento = 'San Miguel'
  Group by Rosas
  union all
    select sum(Claveles) Ventas, Claveles value, 'Claveles' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Claveles
  union all
    select sum(Macetas) Macetas, Macetas value, 'Macetas' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Macetas
  union all
    select sum(Tierra) Ventas, Tierra value, 'Tierra' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Tierra
  union all
    select sum(Girasoles) Ventas, Girasoles value, 'Girasoles' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Girasoles
  union all
    select sum(Hortensias) Ventas, Hortensias value, 'Hortensias' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Hortensias
  union all
    select sum(Globos) Ventas, Globos value, 'Globos' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Globos
  union all
    select sum(Tarjetas) Ventas, Tarjetas value, 'Tarjetas' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Tarjetas
  union all
    select sum(fOrquídeas) Ventas, fOrquídeas value, 'fOrquideas' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by fOrquídeas
  union all
    select sum(Carmesí) Ventas, Carmesí value, 'Carmesí' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Carmesí
  union all
    select sum(Lirios) Ventas, Lirios value, 'Lirios' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Lirios
  union all
    select sum(Aurora) Ventas, Aurora value, 'Aurora' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Aurora
  union all
    select sum(Tulipanes) Ventas, Tulipanes value, 'Tulipanes' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Tulipanes
  union all
    select sum(Listón) Ventas, Listón value, 'Liston' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Miguel'
  Group by Listón
) src
WHERE VENTAS != 0
group by name,Ventas
ORDER BY ventas desc

--Combinaciones de los 3 productos más vendididos en San Miguel
select 	
	sum(iif(Aurora = 1 and Lirios = 1,1,0)) Aurora_Lirios,
	sum(iif(Carmesí = 1 and Aurora = 1,1,0)) Carmesí_Aurora,
	sum(iif(Lirios = 1 and Carmesí = 1,1,0)) Lirios_Carmesí
from [dbo].[tbl_ventas]
WHERE departamento = 'San Miguel'


--Los 3 productos más vendidos de San Salvador
select top(3) name Producto,
(Case when Ventas> 0 then Ventas else 0 end) Cantidad 
from
(
  select sum(Rosas) Ventas, Rosas value, 'Rosas' name
  from [dbo].[tbl_ventas]
  WHERE departamento = 'San Salvador'
  Group by Rosas
  union all
    select sum(Claveles) Ventas, Claveles value, 'Claveles' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Claveles
  union all
    select sum(Macetas) Macetas, Macetas value, 'Macetas' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Macetas
  union all
    select sum(Tierra) Ventas, Tierra value, 'Tierra' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Tierra
  union all
    select sum(Girasoles) Ventas, Girasoles value, 'Girasoles' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Girasoles
  union all
    select sum(Hortensias) Ventas, Hortensias value, 'Hortensias' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Hortensias
  union all
    select sum(Globos) Ventas, Globos value, 'Globos' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Globos
  union all
    select sum(Tarjetas) Ventas, Tarjetas value, 'Tarjetas' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Tarjetas
  union all
    select sum(fOrquídeas) Ventas, fOrquídeas value, 'fOrquideas' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by fOrquídeas
  union all
    select sum(Carmesí) Ventas, Carmesí value, 'Carmesí' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Carmesí
  union all
    select sum(Lirios) Ventas, Lirios value, 'Lirios' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Lirios
  union all
    select sum(Aurora) Ventas, Aurora value, 'Aurora' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Aurora
  union all
    select sum(Tulipanes) Ventas, Tulipanes value, 'Tulipanes' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Tulipanes
  union all
    select sum(Listón) Ventas, Listón value, 'Liston' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'San Salvador'
  Group by Listón
) src
WHERE VENTAS != 0
group by name,Ventas
ORDER BY ventas desc

--Combinaciones de los 3 productos más vendididos en San Salvador
select 	
	sum(iif(Listón = 1 and Rosas = 1,1,0)) Liston_Rosas,
	sum(iif(Rosas = 1 and Globos = 1,1,0)) Rosas_Globos,
	sum(iif(Globos = 1 and Listón = 1,1,0)) Globos_Liston
from [dbo].[tbl_ventas]
WHERE departamento = 'San Salvador'


--Los 3 productos más vendidos de Santa Ana
select top(3) name Producto,
(Case when Ventas> 0 then Ventas else 0 end) Cantidad 
from
(
  select sum(Rosas) Ventas, Rosas value, 'Rosas' name
  from [dbo].[tbl_ventas]
  WHERE departamento = 'Santa Ana'
  Group by Rosas
  union all
    select sum(Claveles) Ventas, Claveles value, 'Claveles' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Claveles
  union all
    select sum(Macetas) Macetas, Macetas value, 'Macetas' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Macetas
  union all
    select sum(Tierra) Ventas, Tierra value, 'Tierra' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Tierra
  union all
    select sum(Girasoles) Ventas, Girasoles value, 'Girasoles' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Girasoles
  union all
    select sum(Hortensias) Ventas, Hortensias value, 'Hortensias' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Hortensias
  union all
    select sum(Globos) Ventas, Globos value, 'Globos' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Globos
  union all
    select sum(Tarjetas) Ventas, Tarjetas value, 'Tarjetas' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Tarjetas
  union all
    select sum(fOrquídeas) Ventas, fOrquídeas value, 'fOrquideas' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by fOrquídeas
  union all
    select sum(Carmesí) Ventas, Carmesí value, 'Carmesí' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Carmesí
  union all
    select sum(Lirios) Ventas, Lirios value, 'Lirios' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Lirios
  union all
    select sum(Aurora) Ventas, Aurora value, 'Aurora' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Aurora
  union all
    select sum(Tulipanes) Ventas, Tulipanes value, 'Tulipanes' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Tulipanes
  union all
    select sum(Listón) Ventas, Listón value, 'Liston' name
  from [dbo].[tbl_ventas]
   WHERE departamento = 'Santa Ana'
  Group by Listón
) src
WHERE VENTAS != 0
group by name,Ventas
ORDER BY ventas desc

--Combinaciones de los 3 productos más vendididos en Santa Ana
select 	
	sum(iif(Lirios = 1 and Girasoles = 1,1,0)) Lirios_Girasoles,
	sum(iif(Girasoles = 1 and Aurora = 1,1,0)) Girasoles_Aurora,
	sum(iif(Aurora = 1 and Lirios = 1,1,0)) Aurora_Lirios
from [dbo].[tbl_ventas]
WHERE departamento = 'Santa Ana'
