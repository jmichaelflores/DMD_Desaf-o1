IF NOT EXISTS (SELECT * FROM sys.databases WHERE name='db_spa_diego')
BEGIN
CREATE DATABASE db_spa_diego;
END

use db_spa_diego 
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='tbl_clientes' and xtype='U')

begin
create table tbl_clientes
(
	id varchar(50),
	sexo int,
	ingresos float,
	promVisit float,
	edad int
	,sauna int
	,masaje int
	,hidro int
	,yoga int
	,tipoCliente varchar(50)

)
end

