--Create database DBTest
use DBTest

-- drop table Productos 
-- drop table Proveedor 
create table Proveedor
(
IdProveedor int identity (1,1) primary key,
Nombre nvarchar (100),
Descripcion nvarchar (100)
)

create table Productos 
(
Idproducto int identity (1,1) primary key,
Nombre nvarchar (100),
DescProd nvarchar (100),
Marca nvarchar (100),
Precio float,
Stock int,
IdProveedor int 
FOREIGN KEY (IdProveedor) REFERENCES Proveedor (IdProveedor)
)



insert into Proveedor
values
('Pepsi CO','Company'),
('Mars inc.','Chocolates'),
('Panadería','Artesanal')


insert into Productos 
values
('Gaseosa','3 litros','Pepsi',60,24,1),
('Chocolate','Tableta 100 gramos','Sneaker',50,36,2),
('Pan','460 gr','La Fuente',40,18,3)


