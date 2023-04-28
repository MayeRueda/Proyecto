create database Tienda_x;

create table Distribuidores(
 Nombre_Distribuidor char (20) not null,
 Nit_Distribuidor int not null,
 primary key (Nit_Distribuidor)
 );

 create table Empleados ( 
 cc_Empleado int not null,
 Nom_Empleado char (20) not null,
 Salario_Empleado double not null,
 Horario char (20) not null,
 Cargo char (20) not null,
 primary key (cc_empleado)
 );

  create table clientes (
 CC_Cliente int not null,
 Nom_Cliente char (20) not null,
 primary key (CC_Cliente)
 );

 create table Pedidos ( 
 Cod_Pedido int not null,
 Nit_Distribuidor int not null,
 Can_Total int not null,
 Costo_Neto int not null,
 primary key (Cod_Pedido),
 foreign key (Nit_Distribuidor) references Distribuidores(Nit_Distribuidor)
 );


 create table Productos(
 Cod_Producto int not null,
 Nom_Producto char (20) not null,
 Cod_Pedido int not null,
 primary key (Cod_Producto),
 foreign key (Cod_Pedido) references Pedidos(Cod_Pedido)
 );

 create table Comprar (
 Cod_Compra int not null,
 cc_Empleado int not null,
 Cod_Producto int not null,
 CC_Cliente int not null,
 Fecha char (20) not null,
 Pago double not null,
 D_Establecimiento char (20) not null,
 Metodo_Pago char (20) not null,
 primary key (Cod_Compra),
 foreign key (CC_Cliente) references clientes(CC_Cliente),
 foreign key (cc_Empleado) references Empleados (cc_Empleado),
 foreign key (Cod_Producto) references Productos(Cod_Producto)
 );

 create table Detalles ( 
 Cod_Identificacion int  not null,
 Cod_Producto int  not null,
 Cod_Compra int not null,
 Precio double not null,
 Pago double not null,
 primary key (Cod_Identificacion),
 foreign key (Cod_Compra) references Comprar(Cod_Compra),
 foreign key (Cod_Producto) references Productos(Cod_Producto)
 );

create table Devoluciones (
 Cod_Devolucion int not null,
 Cod_Identificacion int not null,
 Unidades int not null,
 primary key (Cod_Devolucion),
 foreign key (Cod_Identificacion) references Detalles(Cod_Identificacion)
 );

 create table Pedidos_Productos(
 Cod int not null,
 Cod_Pedido int not null,
 Cod_Producto int not null,
 primary key (Cod),
 foreign key (Cod_Pedido) references Pedidos(Cod_Pedido),
 foreign key (Cod_Producto) references Productos(Cod_Producto)
 );

insert into DIstribuidores values('Distribuidores Elite',901458655);
insert into DIstribuidores values('Distribucion S.A',264458098);
insert into DIstribuidores values('Distri Alimentos',654768123);
insert into DIstribuidores values('Vicarleg',123776867);
insert into DIstribuidores values('Fresco Campo',097678456);


insert into Empleados values(52064122,'Wilmer Pelaez',1000000,'8:00am-5:00pm','gerente');
insert into Empleados values(31032415,'Dilan Perdigon',1000000,'8:00am-5:00pm','cajero');
insert into Empleados values(10762411,'Vicente Fernandez',1000000,'8:00am-5:00pm','cajero');
insert into Empleados values(10624111,'Santiago Rodriguez',1000000,'8:00am-5:00pm','cajero');


insert into clientes values(109845602,'Jose Armando');
insert into clientes values(241328934, 'Ana Maria');
insert into clientes values(321095672,'Daniel Hernandez');
insert into clientes values(103456934, 'Sebastian Pelaez');
insert into clientes values(999384859, 'Karol Yesal');
insert into clientes values(113131222,'Kendal Rodriguez');
insert into clientes values(947857583,'Juan Pablo');
insert into clientes values(994784367, 'Andres Jose');
insert into clientes values(091029399,'Steven Savaleta');
insert into clientes values(546288191,'Maria Daniela ');
insert into clientes values(936455459,"Rubén Aponte");
insert into clientes values(251188752,"Ricardo Contreras");
insert into clientes values(250509215,"Iván	Valdivia");
insert into clientes values(451392260,"Josep Correa");
insert into clientes values(645942348,"Pedro Limón");
insert into clientes values(466625215,"Laura Malave");
insert into clientes values(639081091,"Andrea Mota");
insert into clientes values(307442870,"Anni	Aparicio");
insert into clientes values(884565356,"Laura Miranda");
insert into clientes values(579078041,"Anni	Delarosa");
insert into clientes values(523984686,"Cliente");



insert into Pedidos values(4235435,901458655,200,200000);
insert into Pedidos values(4564556,654768123,100,100000);
insert into Pedidos values(1443525,264458098,145,150000);
insert into Pedidos values(7986756,097678456,430,280000);
insert into Pedidos values(3457567,123776867,135,160000);
insert into Pedidos values(7653542,097678456,125,125000);
insert into Pedidos values(9067644,901458655,75,200000);
insert into Pedidos values(1356343,123776867,345,280000);
insert into Pedidos values(7285734,654768123,65,500000);
insert into Pedidos values(8452398,264458098,75,300000);
insert into Pedidos values(	5544545,097678456,125,200000);
insert into Pedidos values(	7640615,123776867,385,230000);
insert into Pedidos values(	8042350,901458655,225,150000);
insert into Pedidos values(	1820660,654768123,125,300000);
insert into Pedidos values(	4173869,264458098,135,500000);



insert into Productos values(47546671,'Bon bon bun',7986756);
insert into Productos values(54646768,'Helado artesanal',1443525);
insert into Productos values(46746754,'Litro de cloro',3457567);				
insert into Productos values(32423245,'Jabon rey',4564556);
insert into Productos values(25564545,'Paquete de papas',7653542);
insert into Productos values(57578456,'Jugo Hit 250 ml',1356343);
insert into Productos values(36589743,'Coca Cola 500 ml',8452398);
insert into Productos values(78554779,'Ponque rammo',9067644);
insert into Productos values(12345651,'Chocoramo',4235435);
insert into Productos values(23556857,'Cargador tipo C',7285734);
insert into Productos values(15697773,'Takis',5544545);
insert into Productos values(11417639,'Helados Vampiro',7640615);
insert into Productos values(10272054,'Escobas',8042350);
insert into Productos values(99571379,'Leche 1 litro',1820660);
insert into Productos values(79812668,'Cocacola 1 litro',4173869);



insert into Comprar values(874676575,52064122,47546671,109845602,'25/5/2022',25000,'Cll25 #6-73','Efectivo');
insert into Comprar values(657846517,31032415,54646768,241328934,'25/5/2022',35000,'Cll25 #6-73','Nequi');
insert into Comprar values(235425445,10762411,46746754,321095672,'25/5/2022',10000,'Cll25 #6-73','Efectivo');														
insert into Comprar values(132444734,10624111,32423245,103456934,'25/5/2022',1000,'Cll25 #6-73','Nequi');			
insert into Comprar values(967568667,52064122,25564545,999384859,'25/5/2022',2000,'Cll25 #6-73','Efectivo');
insert into Comprar values(234568356,31032415,57578456,113131222,'25/5/2022',5000,'Cll25 #6-73','Nequi');
insert into Comprar values(455685521,10762411,36589743,947857583,'25/5/2022',7000,'Cll25 #6-73','Efectivo');
insert into Comprar values(234668632,10624111,78554779,994784367,'25/5/2022',4000,'Cll25 #6-73','Efectivo');
insert into Comprar values(436862145,52064122,12345651,091029399,'25/5/2022',17000,'Cll25 #6-73','Nequi');
insert into Comprar values(132531251,31032415,23556857,546288191,'25/5/2022',12000,'Cll25 #6-73','Efectivo');
insert into Comprar values(813992299,10762411,15697773,936455459,"25/5/2022",2350,"Cll25 #6-73",'Efectivo');
insert into Comprar values(745986015,10624111,11417639,251188752,"25/5/2022",25918,"Cll25 #6-73",'Nequi');
insert into Comprar values(271151678,52064122,10272054,250509215,"25/5/2022",22115,"Cll25 #6-73",'Efectivo');
insert into Comprar values(623145219,31032415,99571379,451392260,"25/5/2022",4953,"Cll25 #6-73",'Efectivo');
insert into Comprar values(567606995,10762411,79812668,645942348,"25/5/2022",4283,"Cll25 #6-73",'Nequi');
insert into Comprar values(617603590,10624111,15697773,466625215,"25/5/2022",6015,"Cll25 #6-73",'Efectivo');
insert into Comprar values(815713044,52064122,11417639,639081091,"25/5/2022",28347,"Cll25 #6-73",'Efectivo');
insert into Comprar values(644870305,31032415,10272054,307442870,"25/5/2022",11050,"Cll25 #6-73",'Nequi');
insert into Comprar values(665809741,10762411,99571379,884565356,"25/5/2022",11169,"Cll25 #6-73",'Efectivo');
insert into Comprar values(966128947,10624111,79812668,579078041,"25/5/2022",27292,"Cll25 #6-73",'Nequi');
insert into Comprar values(781215047,52064122,15697773,523984686,"25/5/2022",25440,"Cll25 #6-73",'Efectivo');



insert into Detalles values (13442,47546671,874676575,700,25000);
insert into Detalles values (97650,54646768,657846517,5000,35000);
insert into Detalles values (12643,46746754,235425445,2000,10000);
insert into Detalles values (67865,32423245,132444734,1000,1000);	
insert into Detalles values (37644,25564545,967568667,2000,2000);
insert into Detalles values (12443,57578456,234568356,2500,5000);
insert into Detalles values (24545,36589743,455685521,3500,7000);
insert into Detalles values (32445,78554779,234668632,4000,4000);
insert into Detalles values (31234,12345651,436862145,650,17000);
insert into Detalles values (32133,23556857,132531251,11500,12000);
insert into Detalles values(14776,15697773,813992299,2350,2350);
insert into Detalles values(80586,11417639,745986015,2000,25918);
insert into Detalles values(25108,10272054,271151678,10000,22115);
insert into Detalles values(24468,99571379,623145219,4700,4953);
insert into Detalles values(89289,79812668,567606995,4250,4283);
insert into Detalles values(21818,15697773,617603590,2350,6015);
insert into Detalles values(21871,11417639,815713044,2000,28347);
insert into Detalles values(75850,10272054,644870305,10000,11050);
insert into Detalles values(99830,99571379,665809741,4700,11169);
insert into Detalles values(66446,79812668,966128947,4250,27292);
insert into Detalles values(38206,15697773,781215047,2350,25440);



insert into devoluciones values (210210124,13442,1);
insert into devoluciones values (548184124,97650,1);
insert into devoluciones values (846321534,12643,1);
insert into devoluciones values (986153223,67865,1);
insert into devoluciones values (456545621,37644,1);
insert into devoluciones values (774569884,12443,1);
insert into devoluciones values (555112200,24545,1);
insert into devoluciones values (000123016,32445,1);
insert into devoluciones values (452365855,31234,1);
insert into devoluciones values (774566322,32133,1);


insert into pedidos_productos values(2133,4235435,12345651);
insert into pedidos_productos values(5464,4564556,32423245);
insert into pedidos_productos values(7685,1443525,54646768);
insert into pedidos_productos values(1897,7986756,47546671);
insert into pedidos_productos values(9045,3457567,46746754);
insert into pedidos_productos values(7854,7653542,25564545);
insert into pedidos_productos values(1238,9067644,78554779);
insert into pedidos_productos values(4321,1356343,57578456);
insert into pedidos_productos values(4764,7285734,23556857);
insert into pedidos_productos values(1001,8452398,36589743);
insert into pedidos_productos values(6052,5544545,15697773);
insert into pedidos_productos values(8013,7640615,11417639);
insert into pedidos_productos values(4335,8042350,10272054);
insert into pedidos_productos values(5240,1820660,99571379);
insert into pedidos_productos values(8277,4173869,79812668);

--  Update  clientes--
update clientes set Nom_cliente="" where CC_cliente="";
--  Update comprar--
update comprar set cc_empleado="", Cod_Producto="",CC_Cliente="",Fecha="",Pago="",D_Establecimiento="",Metodo_Pago=""  where Cod_Compra="";
--  Update  detalles--
update detalles set Cod_Producto="", Cod_Compra="", Precio="", Pago="" where Cod_Identificacion="";
--  Update devoluciones--
update devoluciones set Cod_Identificacion="",Unidades="" where Cod_Devolucion="";
--  Update  distribuidores--
update distribuidores set Nombre_Distribuidor="" where Nit_Distribuidor="";
--  Update empleados--
update empleados set Nom_Empleado="",Salario_Empleado="",Horario="",Cargo="" where cc_Empleado="";
--  Update  pedidos--
update pedidos set Nit_Distribuidor="", Can_Total="", Costo_Neto="" where Cod_Pedido="";
--  Update pedidos_productos--
update pedidos_productos set Cod_Pedido="",Cod_Producto="" where Cod="";
--  Update productos--
update productos set Nom_Producto="arroz",Cod_Pedido="" where Cod_Producto="";


--  delete  clientes--
delete from clientes where CC_cliente="";
--  delete comprar--
delete from comprar ¿ where Cod_Compra="";
--  delete  detalles--
delete from detalles ¿ where Cod_Identificacion="";
--  delete devoluciones--
delete from devoluciones¿ where Cod_Devolucion="";
--  delete  distribuidores--
delete from distribuidores where Nit_Distribuidor="";
--  delete empleados--
delete from empleados  where cc_Empleado="";
--  delete  pedidos--
delete from pedidos  where Cod_Pedido="";
--  delete pedidos_productos--
delete from pedidos_productos  where Cod="";
--  delete productos--
delete from productos  where Cod_Producto="";

-- consultas
-- 1.    Seleccione el nombre ,cedula de los clientes que han pagado mas de 5000.-- 
select CC_Cliente,Nom_Cliente from clientes,Detalles where Pago>5000 group by cc_cliente; 
-- 2.    Cuantas devoluciones estan registradas en el sistema
select count(*)from devoluciones ; 
-- 3.    que empleados se encuentran en el cargo de cajero junto con horarios 
select Nom_Empleado,horario,cargo from empleados where cargo="cajero"; 
 -- 4.	cuantos gerentes tiene la tienda
 select count(*)from empleados where cargo="gerente"; 
-- 5.	mostar la cedula,nombre y  el salario que gana un empleado en el cargo de cajero. 
SELECT cc_Empleado,Nom_Empleado,Salario_Empleado FROM Empleados where Cargo="cajero"; 
-- 6.	mostrar el pago y su metodo en las compras de forma ordenada. 
select Pago,Metodo_Pago  from comprar order by Pago,Metodo_Pago;   
-- 7.Selecciona el promedio de los costos de los pedidos. 
select count(Costo_neto) from pedidos;
-- 8. la tienda desea saber los pedidos que se hacen que sean  menor o igual a 100000 y que el sistema muestre la cantidad. 
select Cod_pedido,Nit_Distribuidor, Can_total from pedidos where Costo_Neto<=100000; 
-- 9. se desea saber el codigo del pedido con su respectivo distribuidor para lograr tener un listado de pedidos que sean menor a 100 
select cod_pedido,nombre_distribuidor,can_total from pedidos,distribuidores where can_total<100; 
-- 10.   Muestre el código y el nombre del Distribuidor que tenga un mayor Costo Neto 
select Cod_Pedido,Nombre_Distribuidor,max(Costo_Neto) from Pedidos,distribuidores; 

-- subconsultas
-- 1. El administrador requiere saber el nombre de los clientes que han realizado compras menores a 7000 
select Nom_cliente from clientes where cc_cliente in (select cc_cliente from comprar where pago<7000); 
-- 2. Se requiere saber el nombre del distribuidor que realiza con exactitud el pedido número 7986756 
select Nombre_distribuidor from distribuidores where Nit_Distribuidor in (select Nit_Distribuidor from pedidos where cod_pedido="7986756"); 
-- 3.	se necesita saber el nombre del empleado que allan vendido el producto 15697773.  
select nom_empleado from Empleados where cc_empleado in (select cc_empleado from comprar where Cod_Producto=15697773 );   
-- 4.	seleccione el codigo y nombre de los productos vendidos.  
select Cod_Producto,Nom_Producto from productos where Cod_Producto in (select Cod_producto from comprar where comprar.cod_producto=productos.cod_producto); 
 