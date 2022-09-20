IF NOT EXISTS (SELECT * FROM sys.databases WHERE name='db_fiorella')
BEGIN
CREATE DATABASE db_fiorella;
END

use db_fiorella 

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='tbl_ventas' and xtype='U')


begin
create table tbl_ventas
(
	id varchar(50),
	pais varchar(50),
	departamento varchar(50),
	Rosas int,
	Claveles int,
	Macetas int,
	Tierra int
	,Girasoles int
	,Hortensias int
	,Globos int
	,Tarjetas int
	,fOrquídeas int
	,Carmesí int
	,Lirios int
	,Aurora int
	,Tulipanes int
	,Listón int
)
end
