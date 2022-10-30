/*CREAR BASE DE DATOS*/

create database FT_LOGISTICA;

use FT_LOGISTICA;

/*CREAR TABLAS*/

create table CLIENTE (
	cliente_id int not null primary key,
    razon_social varchar(100) not null,
    nave_ocupada varchar (50) not null,
    estado varchar(50)
    );
    
create table MAESTRO_PRODUCTO (
	producto_id varchar(50) not null primary key,
    descripcion_producto varchar(150) not null,
    cliente_id int not null
);
create table MAESTRO_PRODUCTO_2 (
	producto_id varchar(50) not null primary key,
    descripcion_producto varchar(150) not null,
    cliente_id int not null,
    largo_cm int not null,
    ancho_cm int not null,
    alto_cm int not null
);
create table POSICIONES_OCUPADAS (
	cliente_id int not null primary key,
    fecha date not null,
    qty_posiciones int not null
);

create table PEDIDOS (
	pedido_id varchar(50) not null primary key,
    razon_social varchar(100) not null,
    producto_id varchar(50) not null,
    descripcion_producto varchar(150) not null,
    qty_confirmada int,
    posicion_producto varchar(50),
    pickeador varchar(50)
);

create table TIEMPO_PREPARACION_PEDIDOS (
	pedido_id varchar(50) not null primary key,
    cliente_id int not null,
    fecha_entrada datetime,
    fecha_procesado datetime,
    fecha_fin_picking datetime,
    fecha_empaquetado datetime,
    fecha_egresado datetime
);    

create table INGRESOS_PRODUCTO (
 documento_id int not null primary key,
 cliente_id int not null,
 fecha date not null,
 producto_id varchar(100) not null,
 descripcion_producto varchar(150) not null,
 qty_recibida int not null, 
 foreign key (producto_id) references maestro_producto(producto_id)
 );

/*INSERTAR DATOS EN LAS TABLAS*/
 
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (0,'GLOBAL WHEEL','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (1,'MONTPELLIER','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (2,'BROTHER ARGENTINA REP','REP','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (5,'CARCARE','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (6,'SYSTEM NET','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (7,'SISCOM DE ARGENTINA SA','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (8,'GRIFERÍA COBRA','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (11,'WUPF','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (13,'AERODOC','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (18,'BOLDT','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (19,'MAPFRE','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (20,'GRUPO RUNNER SA','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (23,'NEORED - PROVAR','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (26,'NOVA TEC ARG','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (28,'ARROW ARGENTINA','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (31,'FIRST DATA','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (36,'PLUMARI','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (37,'POSNET','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (39,'TOPIC - JAUKE','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (44,'EXPERIENCIAS CERVECERAS','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (45,'LEMON TREE','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (46,'ONECLICK','HV','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (47,'BEYOND','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (48,'CBA NOTEBOOKS','HV','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (49,'EXOSOUND','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (51,'100 GRADOS','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (53,'FAST TRACK','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (54,'ALIC SA','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (55,'LEGION EXTRANJERA','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (56,'AEROBOX','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (57,'LEGION MAYORISTA','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (58,'ONECLICK MELI','HV','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (59,'IO_IMPORTO','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (60,'FLLATAM','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (61,'ATUCASA','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (62,'BRIMMER','HV','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (63,'LUMPINI','HV','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (64,'W DIGITAL SAU','HV','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (65,'MONT POLO','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (66,'GRAY WOLFY','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (67,'PRONTO DISTRIB','AG','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (68,'SIGN STORE','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (69,'DIXON','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (70,'NOTEBOOKS.AR','HV','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (71,'APACHE SOLUTIONS','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (73,'BESTWORK','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (74,'GARMIN','HV','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (75,'ALISHOP','HV','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (76,'INSUMOS PLUMARI','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (77,'PUNTOPARTES','HV','ACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (78,'VITICULTURA PURA','AG','INACTIVO');
INSERT INTO CLIENTE (`cliente_id`,`razon_social`,`nave_ocupada`,`estado`) VALUES (79,'BROTHER ARGENTINA','AG','ACTIVO');

INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (0,'2021-12-01',1);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (1,'2021-12-01',347);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (5,'2021-12-01',9);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (6,'2021-12-01',13);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (7,'2021-12-01',662);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (8,'2021-12-01',96);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (18,'2021-12-01',79);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (19,'2021-12-01',81);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (20,'2021-12-01',39);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (23,'2021-12-01',68);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (26,'2021-12-01',13);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (28,'2021-12-01',41);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (31,'2021-12-01',207);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (36,'2021-12-01',1913);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (37,'2021-12-01',349);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (39,'2021-12-01',40);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (44,'2021-12-01',722);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (45,'2021-12-01',24);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (46,'2021-12-01',234);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (47,'2021-12-01',15);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (48,'2021-12-01',4);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (49,'2021-12-01',198);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (53,'2021-12-01',35);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (54,'2021-12-01',1425);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (55,'2021-12-01',103);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (56,'2021-12-01',28);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (57,'2021-12-01',60);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (58,'2021-12-01',272);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (59,'2021-12-01',15);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (60,'2021-12-01',37);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (61,'2021-12-01',2);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (62,'2021-12-01',5);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (63,'2021-12-01',20);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (64,'2021-12-01',6);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (65,'2021-12-01',105);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (66,'2021-12-01',26);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (67,'2021-12-01',135);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (68,'2021-12-01',15);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (69,'2021-12-01',87);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (70,'2021-12-01',23);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (74,'2021-12-01',391);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (75,'2021-12-01',34);
INSERT INTO POSICIONES_OCUPADAS (`cliente_id`,`fecha`,`qty_posiciones`) VALUES (76,'2021-12-01',259);



INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('1460',54,'2021-12-15 09:40:13','2021-12-15 15:16:32','2021-12-15 16:23:48','2021-12-15 17:16:44','2021-12-15 19:26:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('1461',54,'2021-12-15 09:40:17','2021-12-15 15:16:47','2021-12-15 16:25:27','2021-12-15 18:19:25','2021-12-15 19:26:37');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('1462',54,'2021-12-14 08:25:16','2021-12-14 08:49:23','2021-12-14 09:54:40','2021-12-14 16:03:52','2021-12-14 18:16:57');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('1463',54,'2021-12-22 11:22:09','2021-12-22 11:36:57','2021-12-22 14:04:33','2021-12-22 16:09:55','2021-12-22 16:46:39');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('1464',54,'2021-12-22 11:22:10','2021-12-22 11:37:25','2021-12-22 14:06:05','2021-12-22 16:20:13','2021-12-22 16:46:40');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('1465',54,'2021-12-22 11:22:10','2021-12-22 11:37:26','2021-12-22 14:31:47','2021-12-22 17:16:27','2021-12-22 17:54:28');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('1466',54,'2021-12-22 11:22:14','2021-12-22 11:37:47','2021-12-22 14:34:52','2021-12-22 16:35:19','2021-12-22 16:46:41');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('1467',54,'2021-12-22 11:22:15','2021-12-22 11:37:48','2021-12-22 14:08:18','2021-12-22 16:35:40','2021-12-22 16:46:41');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87126',46,'2021-12-01 16:50:30','2021-12-01 17:05:26','2021-12-01 17:23:12','2021-12-01 17:48:34','2021-12-01 18:38:09');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87272',46,'2021-12-02 15:39:57','2021-12-02 16:21:30','2021-12-02 16:48:05','2021-12-02 16:57:50','2021-12-02 17:20:56');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87660',46,'2021-12-01 16:50:29','2021-12-01 17:05:31','2021-12-01 17:14:58','2021-12-01 17:44:35','2021-12-01 18:38:11');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87680',46,'2021-12-01 16:50:29','2021-12-01 17:05:32','2021-12-01 17:16:34','2021-12-01 17:44:19','2021-12-01 18:38:11');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87685',46,'2021-12-01 16:50:29','2021-12-01 17:05:33','2021-12-01 17:20:18','2021-12-01 17:49:47','2021-12-01 18:38:11');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87692',46,'2021-12-01 16:50:30','2021-12-01 17:05:34','2021-12-01 17:18:02','2021-12-01 17:43:28','2021-12-01 18:38:10');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87698',46,'2021-12-01 16:50:30','2021-12-01 17:05:35','2021-12-01 17:18:29','2021-12-01 17:44:05','2021-12-01 18:38:10');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87701',46,'2021-12-01 16:50:30','2021-12-01 17:05:36','2021-12-01 17:21:20','2021-12-01 17:42:39','2021-12-01 18:38:07');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87704',46,'2021-12-01 16:50:31','2021-12-01 17:07:12','2021-12-01 17:27:39','2021-12-01 17:46:34','2021-12-01 18:38:08');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87707',46,'2021-12-01 16:50:33','2021-12-01 17:10:05','2021-12-01 17:30:45','2021-12-01 17:50:35','2021-12-01 18:38:09');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87709',46,'2021-12-01 16:50:31','2021-12-01 17:07:13','2021-12-01 17:24:41','2021-12-01 17:43:48','2021-12-01 18:38:08');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87714',46,'2021-12-01 16:50:31','2021-12-01 17:07:14','2021-12-01 17:26:28','2021-12-01 17:45:02','2021-12-01 18:38:12');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87716',46,'2021-12-01 16:50:32','2021-12-01 17:07:15','2021-12-01 17:26:44','2021-12-01 17:43:11','2021-12-01 18:38:16');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87720',46,'2021-12-01 16:50:32','2021-12-01 17:07:16','2021-12-01 17:27:04','2021-12-01 17:42:54','2021-12-01 18:38:15');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87728',46,'2021-12-01 16:50:32','2021-12-01 17:07:17','2021-12-01 17:28:13','2021-12-01 17:50:52','2021-12-01 18:38:16');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87729',46,'2021-12-02 15:39:55','2021-12-02 16:13:28','2021-12-02 16:32:43','2021-12-02 17:05:51','2021-12-02 17:20:57');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87739',46,'2021-12-01 16:50:32','2021-12-01 17:07:19','2021-12-01 17:29:00','2021-12-01 17:45:41','2021-12-01 18:38:17');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87745',46,'2021-12-01 16:50:33','2021-12-01 17:07:20','2021-12-01 17:30:04','2021-12-01 17:55:07','2021-12-01 18:38:17');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87750',46,'2021-12-01 16:50:33','2021-12-01 17:07:21','2021-12-01 17:29:55','2021-12-01 17:42:00','2021-12-01 18:38:15');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87776',46,'2021-12-01 16:50:34','2021-12-01 17:10:06','2021-12-01 17:31:26','2021-12-01 17:42:19','2021-12-01 18:38:13');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87777',46,'2021-12-01 16:50:33','2021-12-01 17:10:07','2021-12-01 17:33:28','2021-12-01 17:55:21','2021-12-01 18:38:12');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87784',46,'2021-12-01 16:50:34','2021-12-01 17:10:07','2021-12-01 17:31:53','2021-12-01 17:49:30','2021-12-01 18:38:13');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87795',46,'2021-12-02 15:39:55','2021-12-02 16:13:31','2021-12-02 16:31:57','2021-12-02 17:08:31','2021-12-02 17:21:42');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87819',46,'2021-12-02 15:39:55','2021-12-02 16:13:33','2021-12-02 16:32:24','2021-12-02 17:06:38','2021-12-02 17:20:57');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87829',46,'2021-12-02 15:39:55','2021-12-02 16:13:34','2021-12-02 16:32:59','2021-12-02 17:03:52','2021-12-02 17:20:57');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87832',46,'2021-12-02 15:39:56','2021-12-02 16:13:37','2021-12-02 16:33:27','2021-12-02 17:07:34','2021-12-02 17:21:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87833',46,'2021-12-02 15:39:56','2021-12-02 16:13:39','2021-12-02 16:44:41','2021-12-02 17:01:49','2021-12-02 17:21:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87837',46,'2021-12-02 15:39:57','2021-12-02 16:21:32','2021-12-02 16:48:26','2021-12-02 17:07:01','2021-12-02 17:23:50');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87852',46,'2021-12-02 15:39:56','2021-12-02 16:13:41','2021-12-02 16:45:03','2021-12-02 17:05:37','2021-12-02 17:21:44');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87863',46,'2021-12-02 15:39:56','2021-12-02 16:13:42','2021-12-02 16:45:18','2021-12-02 17:03:34','2021-12-02 17:21:45');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87867',46,'2021-12-02 15:39:57','2021-12-02 16:21:33','2021-12-02 16:46:02','2021-12-02 16:59:35','2021-12-02 17:21:45');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87868',46,'2021-12-02 15:39:57','2021-12-02 16:21:35','2021-12-02 16:46:36','2021-12-02 17:04:37','2021-12-02 17:21:46');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87925',46,'2021-12-02 15:39:58','2021-12-02 16:21:37','2021-12-02 16:48:53','2021-12-02 17:02:55','2021-12-02 17:21:46');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87928',46,'2021-12-02 15:39:58','2021-12-02 16:21:38','2021-12-02 16:49:20','2021-12-02 17:02:39','2021-12-02 17:21:47');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87929',46,'2021-12-02 15:39:58','2021-12-02 16:21:39','2021-12-02 16:49:56','2021-12-02 17:01:09','2021-12-02 17:21:47');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87930',46,'2021-12-02 15:39:58','2021-12-02 16:22:25','2021-12-02 16:50:36','2021-12-02 17:05:09','2021-12-02 17:23:51');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87958',46,'2021-12-02 15:39:59','2021-12-02 16:22:27','2021-12-02 16:50:59','2021-12-02 17:02:06','2021-12-02 17:21:47');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87975',46,'2021-12-02 15:39:59','2021-12-02 16:22:29','2021-12-02 16:51:17','2021-12-02 17:04:12','2021-12-02 17:21:48');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87978',46,'2021-12-03 15:31:05','2021-12-03 16:14:24','2021-12-03 17:48:27','2021-12-03 18:18:57','2021-12-03 18:43:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87979',46,'2021-12-02 15:39:59','2021-12-02 16:22:30','2021-12-02 16:53:28','2021-12-02 16:56:17','2021-12-02 17:21:48');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87981',46,'2021-12-02 15:39:59','2021-12-02 16:22:33','2021-12-02 16:55:01','2021-12-02 17:13:10','2021-12-02 17:21:49');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87983',46,'2021-12-02 15:40:01','2021-12-02 16:23:38','2021-12-02 16:59:27','2021-12-02 17:10:56','2021-12-02 17:21:49');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87985',46,'2021-12-02 15:39:59','2021-12-02 16:22:35','2021-12-02 16:55:35','2021-12-02 17:11:45','2021-12-02 17:21:50');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('87991',46,'2021-12-02 15:40:00','2021-12-02 16:22:37','2021-12-02 16:55:58','2021-12-02 17:12:35','2021-12-02 17:21:50');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88016',46,'2021-12-02 15:40:00','2021-12-02 16:22:38','2021-12-02 16:56:14','2021-12-02 17:11:14','2021-12-02 17:23:51');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88030',46,'2021-12-02 15:40:00','2021-12-02 16:23:40','2021-12-02 16:56:32','2021-12-02 17:12:13','2021-12-02 17:21:51');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88031',46,'2021-12-02 15:40:00','2021-12-02 16:23:41','2021-12-02 16:57:06','2021-12-02 17:10:31','2021-12-02 17:21:51');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88082',46,'2021-12-02 15:40:01','2021-12-02 16:23:43','2021-12-02 17:00:40','2021-12-02 17:09:30','2021-12-02 17:21:52');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88083',46,'2021-12-02 15:40:01','2021-12-02 16:23:44','2021-12-02 17:00:57','2021-12-02 17:08:53','2021-12-02 17:21:52');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88149',46,'2021-12-03 15:31:07','2021-12-03 17:33:06','2021-12-03 17:53:20','2021-12-03 18:12:03','2021-12-03 18:12:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88170',46,'2021-12-03 15:31:04','2021-12-03 16:14:25','2021-12-03 17:45:05','2021-12-03 18:13:53','2021-12-03 18:43:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88176',46,'2021-12-03 15:31:05','2021-12-03 16:14:27','2021-12-03 17:45:48','2021-12-03 18:13:09','2021-12-03 18:13:16');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88178',46,'2021-12-03 15:31:05','2021-12-03 16:14:29','2021-12-03 17:45:22','2021-12-03 18:22:12','2021-12-03 18:43:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88201',46,'2021-12-03 15:31:06','2021-12-03 16:14:30','2021-12-03 17:51:36','2021-12-03 18:15:43','2021-12-03 18:42:58');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88202',46,'2021-12-03 15:31:06','2021-12-03 16:14:31','2021-12-03 17:49:39','2021-12-03 18:12:52','2021-12-03 18:13:12');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88204',46,'2021-12-03 15:31:06','2021-12-03 16:14:32','2021-12-03 17:50:51','2021-12-03 18:19:50','2021-12-03 18:42:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88237',46,'2021-12-03 15:31:07','2021-12-03 17:33:08','2021-12-03 17:52:25','2021-12-03 18:18:23','2021-12-03 18:42:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88239',46,'2021-12-03 15:31:07','2021-12-03 17:33:09','2021-12-03 17:53:00','2021-12-03 18:13:33','2021-12-03 18:43:02');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88244',46,'2021-12-03 15:31:07','2021-12-03 17:33:10','2021-12-03 17:53:55','2021-12-03 18:10:35','2021-12-03 18:12:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88255',46,'2021-12-03 15:31:08','2021-12-03 17:33:12','2021-12-03 17:54:44','2021-12-03 18:23:01','2021-12-03 18:43:02');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88260',46,'2021-12-03 15:31:10','2021-12-03 17:24:54','2021-12-03 17:59:04','2021-12-03 18:22:37','2021-12-03 18:43:02');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88274',46,'2021-12-03 15:31:08','2021-12-03 17:33:14','2021-12-03 17:56:31','2021-12-03 18:21:40','2021-12-03 18:43:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88291',46,'2021-12-03 15:31:09','2021-12-03 17:33:15','2021-12-03 17:57:01','2021-12-03 18:11:45','2021-12-03 18:13:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88297',46,'2021-12-03 15:31:09','2021-12-03 17:33:17','2021-12-03 17:57:30','2021-12-03 18:11:26','2021-12-03 18:13:13');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88304',46,'2021-12-03 15:31:09','2021-12-03 17:24:55','2021-12-03 17:58:04','2021-12-03 18:20:30','2021-12-03 18:43:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88323',46,'2021-12-03 15:31:11','2021-12-03 17:24:57','2021-12-03 18:03:45','2021-12-03 18:06:26','2021-12-03 18:12:30');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88325',46,'2021-12-03 15:31:10','2021-12-03 17:24:59','2021-12-03 17:58:24','2021-12-03 18:08:45','2021-12-03 18:13:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88344',46,'2021-12-03 15:31:10','2021-12-03 17:25:00','2021-12-03 17:58:41','2021-12-03 18:07:02','2021-12-03 18:12:30');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88349',46,'2021-12-03 15:31:10','2021-12-03 17:25:01','2021-12-03 17:59:29','2021-12-03 18:08:28','2021-12-03 18:13:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88366',46,'2021-12-03 15:31:11','2021-12-03 17:25:03','2021-12-03 17:59:44','2021-12-03 18:11:01','2021-12-03 18:13:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88375',46,'2021-12-03 15:31:11','2021-12-03 17:33:18','2021-12-03 18:00:01','2021-12-03 18:09:12','2021-12-03 18:13:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88377',46,'2021-12-06 15:42:50','2021-12-06 17:33:43','2021-12-06 18:18:07','2021-12-06 18:48:08','2021-12-06 18:59:33');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88386',46,'2021-12-03 15:31:11','2021-12-03 17:25:04','2021-12-03 18:00:22','2021-12-03 18:06:43','2021-12-03 18:13:02');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88410',46,'2021-12-09 16:39:15','2021-12-09 17:06:42','2021-12-09 18:41:43','2021-12-09 18:53:29','2021-12-09 19:24:13');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88465',46,'2021-12-06 15:42:51','2021-12-06 17:33:47','2021-12-06 18:19:08','2021-12-06 18:44:21','2021-12-06 18:59:34');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88467',46,'2021-12-06 15:42:51','2021-12-06 17:33:48','2021-12-06 18:19:53','2021-12-06 18:53:07','2021-12-06 18:59:35');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88469',46,'2021-12-06 15:42:51','2021-12-06 17:33:51','2021-12-06 18:20:32','2021-12-06 18:44:06','2021-12-06 18:59:35');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88474',46,'2021-12-06 15:42:51','2021-12-06 17:33:52','2021-12-06 18:21:22','2021-12-06 18:50:33','2021-12-06 18:59:33');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88480',46,'2021-12-06 15:42:52','2021-12-06 17:33:52','2021-12-06 18:22:53','2021-12-06 18:55:41','2021-12-06 18:59:31');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88487',46,'2021-12-06 15:42:52','2021-12-06 17:33:56','2021-12-06 18:23:40','2021-12-06 18:48:34','2021-12-06 18:59:30');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88549',46,'2021-12-06 15:42:53','2021-12-06 17:40:12','2021-12-06 18:24:02','2021-12-06 18:50:18','2021-12-06 18:59:31');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88551',46,'2021-12-06 15:42:53','2021-12-06 17:40:13','2021-12-06 18:27:15','2021-12-06 18:48:51','2021-12-06 18:59:32');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88559',46,'2021-12-06 15:42:54','2021-12-06 17:40:14','2021-12-06 18:28:48','2021-12-06 18:52:41','2021-12-06 18:59:32');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88567',46,'2021-12-06 15:42:53','2021-12-06 17:40:15','2021-12-06 18:28:12','2021-12-06 18:54:49','2021-12-06 18:59:36');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88570',46,'2021-12-06 15:42:54','2021-12-06 17:40:17','2021-12-06 18:29:15','2021-12-06 18:52:26','2021-12-06 18:59:40');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('88575',46,'2021-12-06 15:42:54','2021-12-06 17:40:18','2021-12-06 18:29:39','2021-12-06 18:46:15','2021-12-06 18:59:39');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89066',46,'2021-12-06 15:42:55','2021-12-06 17:40:19','2021-12-06 18:30:06','2021-12-06 18:44:35','2021-12-06 18:59:40');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89073',46,'2021-12-06 15:42:55','2021-12-06 17:40:19','2021-12-06 18:30:32','2021-12-06 18:51:43','2021-12-06 18:59:38');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89083',46,'2021-12-06 15:42:55','2021-12-06 17:41:36','2021-12-06 18:30:53','2021-12-06 18:53:54','2021-12-06 18:59:37');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89092',46,'2021-12-06 15:42:56','2021-12-06 17:41:37','2021-12-06 18:31:46','2021-12-06 18:50:05','2021-12-06 18:59:36');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89096',46,'2021-12-06 15:42:56','2021-12-06 17:41:38','2021-12-06 18:32:41','2021-12-06 18:52:09','2021-12-06 18:59:37');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89104',46,'2021-12-06 15:42:56','2021-12-06 17:41:39','2021-12-06 18:33:11','2021-12-06 18:50:53','2021-12-06 18:59:38');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89105',46,'2021-12-06 15:42:57','2021-12-06 17:41:39','2021-12-06 18:33:36','2021-12-06 18:49:51','2021-12-06 18:59:38');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89151',46,'2021-12-07 16:31:03','2021-12-07 16:59:24','2021-12-07 17:43:19','2021-12-07 18:10:16','2021-12-07 18:46:41');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89224',46,'2021-12-09 16:39:16','2021-12-09 17:09:14','2021-12-09 18:43:04','2021-12-09 18:58:43','2021-12-09 19:24:14');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89241',46,'2021-12-07 16:31:04','2021-12-07 16:59:25','2021-12-07 17:43:53','2021-12-07 18:09:01','2021-12-07 18:46:41');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89242',46,'2021-12-07 16:31:05','2021-12-07 16:59:26','2021-12-07 17:44:53','2021-12-07 18:10:02','2021-12-07 18:46:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89398',46,'2021-12-07 16:31:05','2021-12-07 16:59:27','2021-12-07 17:45:36','2021-12-07 18:09:36','2021-12-07 18:46:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89413',46,'2021-12-07 16:31:05','2021-12-07 16:59:28','2021-12-07 17:53:43','2021-12-07 18:09:13','2021-12-07 18:46:42');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89497',46,'2021-12-09 16:39:17','2021-12-09 17:06:46','2021-12-09 18:44:21','2021-12-09 19:05:07','2021-12-09 19:24:14');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89506',46,'2021-12-09 16:39:15','2021-12-09 17:06:47','2021-12-09 18:41:20','2021-12-09 19:04:33','2021-12-09 19:24:15');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89537',46,'2021-12-09 16:39:15','2021-12-09 17:09:15','2021-12-09 18:42:22','2021-12-09 18:59:01','2021-12-09 19:24:15');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89580',46,'2021-12-09 16:39:16','2021-12-09 17:10:12','2021-12-09 18:43:44','2021-12-09 18:53:12','2021-12-09 19:25:49');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89685',46,'2021-12-09 16:39:16','2021-12-09 17:09:16','2021-12-09 18:44:05','2021-12-09 18:51:17','2021-12-09 19:24:15');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89740',46,'2021-12-09 16:39:17','2021-12-09 17:06:48','2021-12-09 18:46:04','2021-12-09 18:51:50','2021-12-09 19:24:16');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89754',46,'2021-12-09 16:39:17','2021-12-09 17:06:49','2021-12-09 18:46:43','2021-12-09 18:52:31','2021-12-09 19:24:17');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89766',46,'2021-12-09 16:39:18','2021-12-09 17:06:52','2021-12-09 18:48:46','2021-12-09 19:36:08','2021-12-09 19:37:56');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89767',46,'2021-12-09 16:39:18','2021-12-09 17:06:53','2021-12-09 18:51:26','2021-12-09 19:35:03','2021-12-09 19:37:57');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89778',46,'2021-12-09 16:39:18','2021-12-09 17:06:53','2021-12-09 18:52:27','2021-12-09 19:37:39','2021-12-09 19:37:57');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89781',46,'2021-12-09 16:39:19','2021-12-09 17:09:17','2021-12-09 18:53:27','2021-12-09 19:34:10','2021-12-09 19:37:58');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89793',46,'2021-12-09 16:39:19','2021-12-09 17:09:18','2021-12-09 18:53:59','2021-12-09 19:38:30','2021-12-09 19:40:49');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89802',46,'2021-12-09 16:39:19','2021-12-09 17:09:19','2021-12-09 18:54:51','2021-12-09 19:34:49','2021-12-09 19:37:58');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89804',46,'2021-12-09 16:39:19','2021-12-09 17:09:20','2021-12-09 18:56:05','2021-12-09 19:09:27','2021-12-09 19:24:17');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89809',46,'2021-12-13 17:00:54','2021-12-13 17:04:27','2021-12-13 18:32:07','2021-12-13 19:54:51','2021-12-13 20:01:47');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89814',46,'2021-12-09 16:39:20','2021-12-09 17:09:21','2021-12-09 18:56:32','2021-12-09 19:34:31','2021-12-09 19:37:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89816',46,'2021-12-13 11:06:15','2021-12-13 11:06:57','2021-12-13 18:01:48','2021-12-13 19:25:09','2021-12-13 20:01:48');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89819',46,'2021-12-09 16:39:20','2021-12-09 17:09:21','2021-12-09 18:57:43','2021-12-09 19:35:29','2021-12-09 19:38:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89823',46,'2021-12-09 16:39:20','2021-12-09 17:10:13','2021-12-09 18:58:18','2021-12-09 19:35:46','2021-12-09 19:38:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89830',46,'2021-12-09 16:39:20','2021-12-09 17:10:13','2021-12-09 18:58:48','2021-12-09 19:08:39','2021-12-09 19:26:54');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89957',46,'2021-12-09 16:39:20','2021-12-09 17:10:14','2021-12-09 18:59:30','2021-12-09 19:12:03','2021-12-09 19:24:18');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89979',46,'2021-12-09 16:39:21','2021-12-09 17:10:15','2021-12-09 19:00:01','2021-12-09 19:08:20','2021-12-09 19:24:19');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('89982',46,'2021-12-09 16:39:21','2021-12-09 17:10:15','2021-12-09 19:00:42','2021-12-09 19:08:00','2021-12-09 19:24:19');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90001',46,'2021-12-09 16:39:21','2021-12-09 17:10:16','2021-12-09 19:01:18','2021-12-09 19:38:13','2021-12-09 19:40:49');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90005',46,'2021-12-09 16:39:22','2021-12-09 17:10:16','2021-12-09 19:02:59','2021-12-09 19:37:16','2021-12-09 19:38:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90008',46,'2021-12-09 16:39:22','2021-12-09 17:10:18','2021-12-09 19:03:51','2021-12-09 19:07:41','2021-12-09 19:24:20');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90025',46,'2021-12-13 17:00:49','2021-12-13 17:01:22','2021-12-13 18:11:38','2021-12-13 19:09:16','2021-12-13 19:20:41');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90048',46,'2021-12-10 15:27:38','2021-12-10 17:13:09','2021-12-10 17:38:42','2021-12-10 18:43:33','2021-12-10 19:00:42');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90063',46,'2021-12-10 15:27:39','2021-12-10 17:13:12','2021-12-10 17:39:59','2021-12-10 18:43:46','2021-12-10 19:00:42');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90070',46,'2021-12-10 15:27:39','2021-12-10 17:13:13','2021-12-10 17:47:45','2021-12-10 18:41:53','2021-12-10 19:00:42');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90074',46,'2021-12-10 15:27:39','2021-12-10 17:13:14','2021-12-10 17:49:06','2021-12-10 18:51:25','2021-12-10 19:00:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90081',46,'2021-12-10 15:27:40','2021-12-10 17:13:16','2021-12-10 17:50:48','2021-12-10 19:17:42','2021-12-10 19:19:32');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90083',46,'2021-12-10 15:27:39','2021-12-10 17:13:16','2021-12-10 17:49:43','2021-12-10 18:41:39','2021-12-10 19:00:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90097',46,'2021-12-10 15:27:40','2021-12-10 17:13:19','2021-12-10 17:51:20','2021-12-10 18:44:39','2021-12-10 19:00:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90102',46,'2021-12-10 15:27:40','2021-12-10 17:33:43','2021-12-10 17:51:52','2021-12-10 18:52:39','2021-12-10 19:00:44');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90104',46,'2021-12-13 17:37:49','2021-12-13 17:39:50','2021-12-13 18:03:50','2021-12-13 19:18:07','2021-12-13 19:20:42');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90106',46,'2021-12-10 15:27:41','2021-12-10 17:33:44','2021-12-10 17:52:41','2021-12-10 18:51:50','2021-12-10 19:00:44');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90110',46,'2021-12-10 15:27:41','2021-12-10 17:33:45','2021-12-10 17:53:21','2021-12-10 18:42:56','2021-12-10 19:00:45');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90114',46,'2021-12-10 15:27:41','2021-12-10 17:33:45','2021-12-10 17:54:35','2021-12-10 18:53:57','2021-12-10 19:00:45');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90115',46,'2021-12-10 15:27:41','2021-12-10 17:33:48','2021-12-10 17:55:22','2021-12-10 18:52:17','2021-12-10 19:00:46');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90116',46,'2021-12-10 15:27:42','2021-12-10 17:33:48','2021-12-10 17:55:53','2021-12-10 18:44:55','2021-12-10 19:00:46');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90118',46,'2021-12-10 15:27:42','2021-12-10 17:33:49','2021-12-10 17:56:20','2021-12-10 18:44:21','2021-12-10 19:00:46');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90121',46,'2021-12-10 15:27:42','2021-12-10 17:33:49','2021-12-10 17:57:19','2021-12-10 18:53:44','2021-12-10 19:00:47');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90150',46,'2021-12-13 17:00:48','2021-12-13 17:01:23','2021-12-13 18:05:58','2021-12-13 19:16:23','2021-12-13 19:20:40');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90151',46,'2021-12-13 17:00:49','2021-12-13 17:01:25','2021-12-13 18:07:31','2021-12-13 19:10:33','2021-12-13 19:20:41');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90152',46,'2021-12-13 17:00:49','2021-12-13 17:01:29','2021-12-13 18:08:21','2021-12-13 19:09:32','2021-12-13 19:20:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90155',46,'2021-12-13 17:00:49','2021-12-13 17:01:32','2021-12-13 18:12:31','2021-12-13 19:07:38','2021-12-13 19:20:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90165',46,'2021-12-13 17:00:50','2021-12-13 17:01:36','2021-12-13 18:13:31','2021-12-13 19:10:09','2021-12-13 19:20:42');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90169',46,'2021-12-13 17:00:50','2021-12-13 17:02:42','2021-12-13 18:14:29','2021-12-13 19:08:51','2021-12-13 19:20:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90189',46,'2021-12-13 17:00:50','2021-12-13 17:02:44','2021-12-13 18:15:09','2021-12-13 19:08:01','2021-12-13 19:20:35');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90194',46,'2021-12-13 17:00:50','2021-12-13 17:02:46','2021-12-13 18:15:55','2021-12-13 19:14:04','2021-12-13 19:20:36');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90202',46,'2021-12-13 17:00:51','2021-12-13 17:02:49','2021-12-13 18:16:43','2021-12-13 19:09:55','2021-12-13 19:20:36');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90212',46,'2021-12-13 17:00:51','2021-12-13 17:02:50','2021-12-13 18:17:31','2021-12-13 19:13:43','2021-12-13 19:20:35');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90213',46,'2021-12-13 17:00:51','2021-12-13 17:02:50','2021-12-13 18:18:21','2021-12-13 19:12:56','2021-12-13 19:20:34');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90216',46,'2021-12-13 17:00:52','2021-12-13 17:02:51','2021-12-13 18:19:18','2021-12-13 19:15:16','2021-12-13 19:20:34');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90219',46,'2021-12-13 17:00:52','2021-12-13 17:02:52','2021-12-13 18:20:16','2021-12-13 19:12:34','2021-12-13 19:20:35');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90223',46,'2021-12-13 17:00:52','2021-12-13 17:02:52','2021-12-13 18:22:48','2021-12-13 19:18:56','2021-12-13 19:20:37');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90265',46,'2021-12-13 17:00:52','2021-12-13 17:04:28','2021-12-13 18:23:41','2021-12-13 19:11:45','2021-12-13 19:20:39');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90269',46,'2021-12-13 17:00:53','2021-12-13 17:04:28','2021-12-13 18:25:27','2021-12-13 19:16:09','2021-12-13 19:20:40');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90270',46,'2021-12-13 17:00:53','2021-12-13 17:04:29','2021-12-13 18:26:43','2021-12-13 19:18:33','2021-12-13 19:20:40');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90273',46,'2021-12-13 17:00:53','2021-12-13 17:04:29','2021-12-13 18:27:44','2021-12-13 19:19:31','2021-12-13 19:20:38');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90287',46,'2021-12-13 17:00:53','2021-12-13 17:04:30','2021-12-13 18:30:07','2021-12-13 19:12:01','2021-12-13 19:20:37');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90290',46,'2021-12-13 17:00:55','2021-12-13 17:05:04','2021-12-13 18:33:00','2021-12-13 19:11:26','2021-12-13 19:20:38');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90300',46,'2021-12-13 17:00:56','2021-12-13 17:05:04','2021-12-13 18:34:55','2021-12-13 19:10:55','2021-12-13 19:20:38');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90306',46,'2021-12-14 15:26:40','2021-12-14 16:56:35','2021-12-14 18:14:18','2021-12-14 18:53:22','2021-12-14 18:55:43');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90322',46,'2021-12-14 15:26:40','2021-12-14 16:56:36','2021-12-14 18:12:52','2021-12-14 18:56:03','2021-12-14 18:59:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90330',46,'2021-12-14 15:26:39','2021-12-14 16:56:37','2021-12-14 18:10:45','2021-12-14 19:13:03','2021-12-15 10:22:33');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90337',46,'2021-12-14 15:26:39','2021-12-14 16:56:38','2021-12-14 18:11:39','2021-12-14 18:52:54','2021-12-14 18:55:44');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90343',46,'2021-12-14 15:26:39','2021-12-14 16:56:39','2021-12-14 18:12:30','2021-12-14 18:54:20','2021-12-14 18:59:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90352',46,'2021-12-14 15:26:40','2021-12-14 16:56:43','2021-12-14 18:13:40','2021-12-14 18:54:06','2021-12-14 19:00:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90365',46,'2021-12-14 15:26:42','2021-12-14 16:56:43','2021-12-14 18:17:59','2021-12-14 18:57:46','2021-12-14 19:00:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90368',46,'2021-12-14 15:26:42','2021-12-14 16:56:45','2021-12-14 18:18:24','2021-12-14 18:53:45','2021-12-14 18:55:44');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90380',46,'2021-12-16 16:53:56','2021-12-16 17:13:25','2021-12-16 18:55:25','2021-12-16 19:18:20','2021-12-16 19:28:54');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90401',46,'2021-12-15 16:24:55','2021-12-15 17:08:55','2021-12-15 17:43:01','2021-12-15 18:22:29','2021-12-15 18:54:50');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90402',46,'2021-12-15 16:24:55','2021-12-15 17:08:57','2021-12-15 17:41:51','2021-12-15 18:24:31','2021-12-15 18:54:50');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90453',46,'2021-12-15 16:24:55','2021-12-15 17:08:58','2021-12-15 17:44:20','2021-12-15 18:21:16','2021-12-15 18:54:52');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90463',46,'2021-12-15 16:24:56','2021-12-15 17:09:00','2021-12-15 17:47:11','2021-12-15 18:26:44','2021-12-15 18:54:51');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90499',46,'2021-12-15 16:24:56','2021-12-15 17:09:02','2021-12-15 17:48:08','2021-12-15 18:27:50','2021-12-15 18:54:49');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90587',46,'2021-12-15 16:24:56','2021-12-15 17:12:02','2021-12-15 17:49:32','2021-12-15 18:28:40','2021-12-15 18:54:48');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90591',46,'2021-12-15 16:24:56','2021-12-15 17:12:04','2021-12-15 17:50:42','2021-12-15 18:24:11','2021-12-15 18:54:49');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90594',46,'2021-12-15 16:24:56','2021-12-15 17:12:05','2021-12-15 17:54:34','2021-12-15 18:22:05','2021-12-15 18:54:49');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90596',46,'2021-12-15 16:24:57','2021-12-15 17:12:06','2021-12-15 17:55:19','2021-12-15 18:28:17','2021-12-15 18:54:52');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90598',46,'2021-12-15 16:24:57','2021-12-15 17:12:07','2021-12-15 17:59:05','2021-12-15 18:27:31','2021-12-15 18:54:56');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90603',46,'2021-12-15 16:24:57','2021-12-15 17:12:08','2021-12-15 18:00:21','2021-12-15 18:30:02','2021-12-15 18:54:57');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90604',46,'2021-12-15 16:25:01','2021-12-15 17:17:54','2021-12-15 18:17:40','2021-12-15 18:20:36','2021-12-15 18:54:55');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90605',46,'2021-12-15 16:24:57','2021-12-15 17:12:09','2021-12-15 18:01:15','2021-12-15 18:27:11','2021-12-15 18:54:56');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90652',46,'2021-12-15 16:24:57','2021-12-15 17:16:17','2021-12-15 18:01:56','2021-12-15 18:23:06','2021-12-15 18:54:57');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90655',46,'2021-12-15 16:24:57','2021-12-15 17:16:18','2021-12-15 18:02:43','2021-12-15 18:22:46','2021-12-15 18:54:58');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90668',46,'2021-12-15 16:24:58','2021-12-15 17:16:19','2021-12-15 18:03:24','2021-12-15 18:29:38','2021-12-15 18:54:58');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90709',46,'2021-12-15 16:24:58','2021-12-15 17:16:20','2021-12-15 18:04:06','2021-12-15 18:23:47','2021-12-15 18:54:53');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90729',46,'2021-12-15 16:24:58','2021-12-15 17:16:20','2021-12-15 18:05:02','2021-12-15 18:23:24','2021-12-15 18:54:53');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90750',46,'2021-12-15 16:24:58','2021-12-15 17:16:21','2021-12-15 18:05:39','2021-12-15 18:25:47','2021-12-15 18:54:53');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90756',46,'2021-12-15 16:24:58','2021-12-15 17:17:54','2021-12-15 18:09:01','2021-12-15 18:29:15','2021-12-15 18:54:55');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90758',46,'2021-12-15 16:24:58','2021-12-15 17:16:22','2021-12-15 18:07:18','2021-12-15 18:14:46','2021-12-15 18:54:54');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90764',46,'2021-12-15 16:25:02','2021-12-15 17:17:55','2021-12-15 18:21:16','2021-12-15 18:21:42','2021-12-15 18:54:54');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90767',46,'2021-12-16 16:53:57','2021-12-16 17:14:11','2021-12-16 19:04:45','2021-12-16 19:22:40','2021-12-16 19:28:54');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90769',46,'2021-12-15 16:25:02','2021-12-15 17:17:57','2021-12-15 18:22:08','2021-12-15 18:24:53','2021-12-15 18:54:54');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90785',46,'2021-12-16 16:53:56','2021-12-16 17:13:26','2021-12-16 19:02:13','2021-12-16 19:21:01','2021-12-16 19:28:53');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90787',46,'2021-12-16 16:53:57','2021-12-16 17:13:27','2021-12-16 19:01:21','2021-12-16 19:19:16','2021-12-16 19:28:51');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90797',46,'2021-12-16 16:53:58','2021-12-16 17:14:12','2021-12-16 19:09:19','2021-12-16 19:14:22','2021-12-16 19:17:30');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90798',46,'2021-12-16 16:53:57','2021-12-16 17:13:28','2021-12-16 19:03:02','2021-12-16 19:20:12','2021-12-16 19:28:50');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90800',46,'2021-12-16 16:53:57','2021-12-16 17:14:13','2021-12-16 19:04:35','2021-12-16 19:22:28','2021-12-16 19:28:50');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90801',46,'2021-12-16 16:53:57','2021-12-16 17:13:30','2021-12-16 19:03:47','2021-12-16 19:18:47','2021-12-16 19:28:51');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90810',46,'2021-12-16 16:53:58','2021-12-16 17:14:13','2021-12-16 19:15:48','2021-12-16 19:17:57','2021-12-16 19:28:52');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('90812',46,'2021-12-16 16:53:57','2021-12-16 17:14:14','2021-12-16 19:04:02','2021-12-16 19:22:08','2021-12-16 19:28:52');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91064',46,'2021-12-16 16:53:59','2021-12-16 17:14:58','2021-12-16 19:18:58','2021-12-16 19:29:33','2021-12-16 19:31:13');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91067',46,'2021-12-16 16:53:59','2021-12-16 17:14:59','2021-12-17 17:56:24','2021-12-17 19:01:58','2021-12-17 19:04:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91105',46,'2021-12-16 16:53:59','2021-12-16 17:15:00','2021-12-16 19:26:25','2021-12-16 19:29:49','2021-12-16 19:31:13');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91114',46,'2021-12-16 16:54:00','2021-12-16 17:15:03','2021-12-16 19:29:40','2021-12-16 19:31:01','2021-12-16 19:33:37');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91123',46,'2021-12-16 16:54:00','2021-12-16 17:15:04','2021-12-16 19:27:26','2021-12-16 19:28:12','2021-12-16 19:28:52');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91133',46,'2021-12-16 16:54:00','2021-12-16 17:15:04','2021-12-16 19:28:55','2021-12-16 19:30:46','2021-12-16 19:33:37');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91146',46,'2021-12-17 17:02:47','2021-12-17 17:03:13','2021-12-17 17:57:49','2021-12-17 18:54:14','2021-12-17 19:04:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91155',46,'2021-12-17 17:02:48','2021-12-17 17:03:17','2021-12-17 17:58:14','2021-12-17 18:53:03','2021-12-17 19:04:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91196',46,'2021-12-17 17:02:48','2021-12-17 17:03:21','2021-12-17 18:00:19','2021-12-17 18:58:28','2021-12-17 19:04:02');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91198',46,'2021-12-17 17:02:48','2021-12-17 17:03:22','2021-12-17 17:59:05','2021-12-17 18:52:43','2021-12-17 19:04:02');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91225',46,'2021-12-17 17:02:48','2021-12-17 17:03:23','2021-12-17 17:59:35','2021-12-17 18:51:20','2021-12-17 19:03:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91233',46,'2021-12-17 17:02:48','2021-12-17 17:03:24','2021-12-17 17:59:56','2021-12-17 18:53:57','2021-12-17 19:03:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91254',46,'2021-12-17 17:02:48','2021-12-17 17:03:24','2021-12-17 18:01:04','2021-12-17 18:52:26','2021-12-17 18:57:27');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91259',46,'2021-12-17 17:02:48','2021-12-17 17:03:26','2021-12-17 18:01:29','2021-12-17 18:55:58','2021-12-17 19:04:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91261',46,'2021-12-17 17:02:49','2021-12-17 17:03:47','2021-12-17 18:05:00','2021-12-17 18:52:12','2021-12-17 18:57:27');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91262',46,'2021-12-17 17:02:49','2021-12-17 17:03:48','2021-12-17 18:02:49','2021-12-17 18:59:33','2021-12-17 19:04:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91276',46,'2021-12-17 17:02:51','2021-12-17 17:04:36','2021-12-17 18:16:57','2021-12-17 18:46:05','2021-12-17 18:56:17');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91277',46,'2021-12-17 17:02:49','2021-12-17 17:03:49','2021-12-17 18:04:16','2021-12-17 18:54:54','2021-12-17 19:04:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91278',46,'2021-12-17 17:02:49','2021-12-17 17:03:49','2021-12-17 18:05:49','2021-12-17 18:48:25','2021-12-17 18:56:15');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91282',46,'2021-12-20 15:48:00','2021-12-20 19:32:02','2021-12-20 21:18:26','2021-12-20 21:46:08','2021-12-20 21:49:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91284',46,'2021-12-17 17:02:49','2021-12-17 17:03:51','2021-12-17 18:06:03','2021-12-17 18:54:40','2021-12-17 19:04:05');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91285',46,'2021-12-17 17:02:49','2021-12-17 17:03:52','2021-12-17 18:06:37','2021-12-17 18:53:26','2021-12-17 19:04:04');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91291',46,'2021-12-17 17:02:49','2021-12-17 17:03:52','2021-12-17 18:07:46','2021-12-17 19:07:52','2021-12-17 19:14:50');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91295',46,'2021-12-17 17:02:50','2021-12-17 17:04:37','2021-12-17 18:07:56','2021-12-17 18:50:55','2021-12-17 19:04:05');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91298',46,'2021-12-17 17:02:50','2021-12-17 17:04:38','2021-12-17 18:08:31','2021-12-17 18:57:57','2021-12-17 19:04:06');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91305',46,'2021-12-17 17:02:50','2021-12-17 17:04:07','2021-12-17 18:08:17','2021-12-17 18:53:43','2021-12-17 19:04:06');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91333',46,'2021-12-17 17:02:50','2021-12-17 17:04:07','2021-12-17 18:13:00','2021-12-17 18:58:51','2021-12-17 19:04:03');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91340',46,'2021-12-17 17:02:50','2021-12-17 17:04:09','2021-12-17 18:10:37','2021-12-17 18:55:47','2021-12-17 19:04:03');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91341',46,'2021-12-17 17:02:51','2021-12-17 17:04:09','2021-12-17 18:11:35','2021-12-17 18:55:27','2021-12-17 19:04:03');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91351',46,'2021-12-17 17:02:51','2021-12-17 17:04:10','2021-12-17 18:14:26','2021-12-17 19:04:49','2021-12-17 19:14:50');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91352',46,'2021-12-17 17:02:51','2021-12-17 17:04:13','2021-12-17 18:15:16','2021-12-17 19:09:01','2021-12-18 12:28:52');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91374',46,'2021-12-17 17:02:52','2021-12-17 17:04:52','2021-12-17 18:17:04','2021-12-17 18:47:11','2021-12-17 18:56:14');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91375',46,'2021-12-17 17:02:51','2021-12-17 17:04:38','2021-12-17 18:16:13','2021-12-17 18:49:19','2021-12-17 18:56:16');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91390',46,'2021-12-17 17:02:52','2021-12-17 17:04:53','2021-12-17 18:17:59','2021-12-17 18:44:53','2021-12-17 18:56:15');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91397',46,'2021-12-17 17:02:52','2021-12-17 17:04:54','2021-12-17 18:18:13','2021-12-17 18:46:37','2021-12-17 18:56:22');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91407',46,'2021-12-17 17:02:52','2021-12-17 17:04:39','2021-12-17 18:18:33','2021-12-17 18:46:22','2021-12-17 18:56:22');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91408',46,'2021-12-17 17:02:52','2021-12-17 17:04:13','2021-12-17 18:19:35','2021-12-17 18:57:22','2021-12-17 19:04:04');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91410',46,'2021-12-23 16:00:36','2021-12-23 16:11:35','2021-12-23 18:09:56','2021-12-23 18:24:14','2021-12-23 18:55:44');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91415',46,'2021-12-17 17:02:52','2021-12-17 17:04:39','2021-12-17 18:19:41','2021-12-17 18:49:49','2021-12-17 18:56:22');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91433',46,'2021-12-17 17:02:52','2021-12-17 17:04:40','2021-12-17 18:20:14','2021-12-17 18:43:45','2021-12-17 18:56:23');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91442',46,'2021-12-17 17:02:53','2021-12-17 17:04:41','2021-12-17 18:20:19','2021-12-17 18:56:20','2021-12-17 19:04:04');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91491',46,'2021-12-20 15:48:07','2021-12-20 19:30:15','2021-12-20 21:42:22','2021-12-20 22:13:02','2021-12-20 22:26:17');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91505',46,'2021-12-20 15:48:02','2021-12-20 19:32:03','2021-12-20 21:22:09','2021-12-20 21:52:17','2021-12-20 22:26:19');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91512',46,'2021-12-20 15:48:08','2021-12-20 19:30:17','2021-12-20 21:44:19','2021-12-20 22:12:27','2021-12-20 22:26:20');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91517',46,'2021-12-20 15:48:07','2021-12-20 19:30:18','2021-12-20 21:42:51','2021-12-20 22:12:43','2021-12-20 22:26:20');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91527',46,'2021-12-20 15:48:02','2021-12-20 19:32:07','2021-12-20 21:22:46','2021-12-20 21:46:36','2021-12-20 21:49:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91541',46,'2021-12-20 15:48:05','2021-12-20 19:33:04','2021-12-20 21:36:02','2021-12-20 21:45:14','2021-12-20 21:49:59');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91562',46,'2021-12-20 15:48:03','2021-12-20 19:32:07','2021-12-20 21:33:30','2021-12-20 21:49:56','2021-12-20 22:26:21');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91563',46,'2021-12-20 15:48:01','2021-12-20 19:32:08','2021-12-20 21:20:51','2021-12-20 21:51:33','2021-12-20 22:26:21');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91567',46,'2021-12-20 15:48:02','2021-12-20 19:32:10','2021-12-20 21:23:28','2021-12-20 21:43:42','2021-12-20 21:50:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91576',46,'2021-12-20 15:48:03','2021-12-20 19:32:11','2021-12-20 21:32:40','2021-12-20 21:55:46','2021-12-20 22:26:22');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91581',46,'2021-12-20 15:48:05','2021-12-20 19:33:04','2021-12-20 21:37:16','2021-12-20 21:43:55','2021-12-20 21:50:00');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91598',46,'2021-12-20 15:48:03','2021-12-20 19:32:14','2021-12-20 21:29:18','2021-12-20 21:45:35','2021-12-20 21:50:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91609',46,'2021-12-22 15:36:49','2021-12-22 16:26:14','2021-12-22 16:53:56','2021-12-22 18:30:29','2021-12-22 18:37:40');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91613',46,'2021-12-20 15:48:04','2021-12-20 19:33:06','2021-12-20 21:33:47','2021-12-20 21:47:43','2021-12-20 21:50:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91614',46,'2021-12-20 15:48:04','2021-12-20 19:33:08','2021-12-20 21:35:18','2021-12-20 21:53:55','2021-12-20 22:26:23');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91645',46,'2021-12-20 15:48:05','2021-12-20 19:33:11','2021-12-20 21:36:53','2021-12-20 21:47:24','2021-12-20 21:50:01');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91647',46,'2021-12-20 15:48:06','2021-12-20 19:33:12','2021-12-20 21:37:38','2021-12-20 22:17:16','2021-12-20 22:26:23');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91654',46,'2021-12-20 15:48:06','2021-12-20 19:33:14','2021-12-20 21:38:39','2021-12-20 21:51:02','2021-12-20 22:26:23');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91655',46,'2021-12-20 15:48:06','2021-12-20 19:30:19','2021-12-20 21:40:46','2021-12-20 21:49:36','2021-12-20 21:50:02');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91665',46,'2021-12-20 15:48:06','2021-12-20 19:30:21','2021-12-20 21:41:20','2021-12-20 21:49:14','2021-12-20 21:50:03');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91667',46,'2021-12-20 15:48:07','2021-12-20 19:33:15','2021-12-20 21:41:55','2021-12-20 21:48:32','2021-12-20 21:50:03');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91672',46,'2021-12-20 15:48:08','2021-12-20 19:30:22','2021-12-20 21:43:21','2021-12-20 22:11:53','2021-12-20 22:26:24');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91674',46,'2021-12-20 15:48:08','2021-12-20 19:30:23','2021-12-20 21:43:55','2021-12-20 22:13:48','2021-12-20 22:26:24');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91686',46,'2021-12-21 17:37:49','2021-12-21 18:18:23','2021-12-21 19:11:38','2021-12-21 19:54:12','2021-12-21 19:56:14');
INSERT INTO TIEMPO_PREPARACION_PEDIDOS (`pedido_id`,`cliente_id`,`fecha_entrada`,`fecha_procesado`,`fecha_fin_picking`,`fecha_empaquetado`,`fecha_egresado`) VALUES ('91690',46,'2021-12-21 17:37:50','2021-12-21 18:18:24','2021-12-21 19:13:36','2021-12-21 19:51:38','2021-12-21 19:56:15');

INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('010-02064-00','INSTINCT  GRAPPHITE',74);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('010-02120-30','010-02120-30 - FORERUNNER 245 MUSIC GPS WI-FI EU/PAC BLACK/RE',74);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('010-02156-00','FORERUNNER 45 GPS SMALL NA WHITE',74);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('010-02156-05','FORERUNNER 45 GPS LARGE NA BLACK',74);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('010-02173-12','010-02173-12 - VENU GPS WI-FI BLACK/SLATE WW',74);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('010-02173-32','VENU GPS WI-FI BLACK/GOLD WW',74);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('010-02200-00','APPROACH S62 BLACK',74);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('010-02247-01','010-02247-01 - GARMIN SWIM 2 GPS NA WHITESTONE',74);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10004','COLLAR PARA PERRO XXS/XS STAR WARS CHEWBACCA',69);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10014','CORREA PERRO S STAR WARS CHEWBACCA',69);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10015','CORREA PERRO M STAR WARS CHEWBACCA',69);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10025','ARNES PARA PERRO S/M STAR WARS CHEWBACCA',69);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1003-33A','1003-33A - COLORACI?N SEMIPERMANENTE FUNKY COLORS ESTEREOCOLOR EXH.X 12 UN X 47GRS-AZUL',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1003-66V','1003-66V - COLORACI?N SEMIPERMANENTE FUNKY COLORS ESTEREOCOLOR EXH.X 12 UN X 47GRS- VIOLETA',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1003-77F','1003-77F - COLORACI?N SEMIPERMANENTE FUNKY COLORS ESTEREOCOLOR EXH.X 12 UN X 47GRS- FUCSIA',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10084','MORDEDOR PARA PERRO AVENGERS HULK',69);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10235','010235 - PROTECTOR SOLAR FPS50 X 200',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10245','010245 - PROTECTOR SOLAR FPS50 X 130',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10255','010255 - PROTECTOR SOLAR FPS 50',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10260701','010260701 - BOMBA PREMIUM 20/410 TRAT WHIT',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1027','1027 - SHAMPOO SILVER BONMETIQUE PROFESSIONNEL X 15 ML EXH. X 34 POUCHES',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10295','010295 - PROT. SOLAR FPS 50 FAMILY *400 G',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('103003159','FUNDA CON TECLADO ZAGG MESSENGER FOLIO PARA IPAD MINI 5',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10307','010307 - GEL EXTRA-REF.POST SOLAR 200ML',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10327','010327 - GEL POST SOL EXTRA REFX100',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('105','105 - CRISA - CAVANA- VASO HB 414 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10510','010510 - ACEITE BRONCEADOR FPS6',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10706','010706 - RESALTADOR DE BRONCEADO *130',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10805','010805 - PROTECTOR SOLAR FPS70 RAYITO X 170ML',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10812','010812 - SPRAY SOLAR FPS 30 AERO *250ML',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('10813','010813 - SPRAY SOLAR AERO FPS 50 *250ML',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('109906908','109906908 - L?PIZ ZAGG  - BLACK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1101','1101 - SHOCK REPARADOR INTENSIVO CON KERATINA ESTEREOCOLOR EXH. X 10 UNID. X 50 GRS',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1103','1103 - SHAMPOO SILVER BONMETIQUE PROFESSIONNEL X 350ML',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1109','1109 - POLVO DECOLORANTE BONMETIQUE -',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1124','1124 - PROTECTOR TERMICO BONMETIQUE PROFESSIONNEL X 120 ML.',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1128','1128 - SHAMPOO MATIZADOR BLACK BONMETIQUE PROFESSIONNEL X 900 ML',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1156','1156 - SHOCK ORO 24K ESTEREOCOLOR',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1203','1203 - MASCARA SILVER BONMETIQUE PROFESSIONEL X 300ML',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1206','1206 - ACTIVADOR DE RULOS BONMETIQUE PROFESSIONNEL X 300 ML. V2',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1305','1305 - OLEO DE ARGAN ESTEREOCOLOR EXH. X 40 UN DE 4 ML',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('15238','15238 - LIBBEY - GIBRALTAR - VASO BEVERAGE 355 M',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('15242','15242 - LIBBEY - GIBRALTAR - VASO ROCKS 266 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('15713','15713 - LIBBEY - ENDEAVOR - VASO BEVERAGE 355 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('15714','15714 - LIBBEY - ENDEAVOR - VASO BEVERAGE 414 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1604','1604 - PILSNER 473 ML.',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('163PC01D75','163PC01D75',28);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('1650','1650 - LIBBEY - CHICAGO - VASO CORDIAL 74ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('16790','SOMMIER BOX PRINCESS 190 X 140 CM CANNON',47);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('17540','BOX SOÑAR 190 X 140 CANNON (613000190140) 17540',47);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('182-10','182-10 - TC GEL HD BONMETIQUE PROFESSIONNEL 10 ACLARANTE X 100 GRS.',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('182-1100','182-1100 - TC GEL HD BONMETIQUE PROFESSIONNEL GRIS PLATA X 100 GRS.',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('182-647','182-647 - TC GEL HD BONMETIQUE PROFESSIONNEL 6.47 CHOCOLATE X 100 GRS.',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('182-81','182-81 - TC GEL HD BONMETIQUE PROFESSIONNEL 8.1 RUBIO CLARO CENIZA X 100 GRS.',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('182-82','182-82 - TC GEL HD BONMETIQUE PROFESSIONNEL 8.2 RUBIO CLARO GLACE X 100 GRS.',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('191','CAJA MI-GGI - PAQUETE X 25 UN',31);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('200105722','200105722 - \"VIDRIO TEMPLADO ZAGG INVISIBLESHIELD VISION GUARD PARA IPAD PRO 12.9\"\"\"\"\"\"\"',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('200108315','200108315 - IS-GLASS ELITE PLUS-APPLE-WONDER WOMAN-CFS-FG FOR IPHONE 13 PRO MAX',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('20103','020103 - LOCION MARY STUART X 110 C.C.',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('206','206 - HOJA CARTA LASER - CAJA X 5 RM / CAJA X 7 RM',31);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('213-101','213-101 - JALEA COLORANTE BONMETIQUE PRO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('213-41','213-41 - JALEA COLORANTE BONMETIQUE PRO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('213-51','213-51 - JALEA COLORANTE BONMETIQUE PRO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('213-601','213-601 - JALEA COLORANTE BONMETIQUE PROFESSIONNEL X 50 ML. 6.01 CENIZA OSCURO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('213-72','213-72 - JALEA COLORANTE BONMETIQUE PROFESSIONNEL X 50 ML. 7.2 RUBIO GLAC?',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('213-82','213-82 - JALEA COLORANTE BONMETIQUE PROFESSIONNEL X 50 ML. 8.2 RUBIO CLARO GLAC?',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('213-9','213-9 - JALEA COLORANTE BONMETIQUE PRO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('213-91','213-91 - JALEA COLORANTE BONMETIQUE PRO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('213-92','213-92 - JALEA COLORANTE BONMETIQUE PROFESSIONNEL X 50 ML. 9.2 RUBIO MUY CLARO GLAC?',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('217','217 - LIBBEY - STEMLESS - VASO VINO',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('2251','2251 - EXTRA LARGE BRANDY GLOBET 7.5 / 256 OZ',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('2279','2279 - SHAMPOO STRATEGY ANTIAGE X 300M - M.H',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('2294SR','2294SR - LIBBEY - ENVY - VASO BEVERAGE 354 ML - C',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('231','231 - LIBBEY - STEMLESS - VASO VINO BL 451ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('2315','2315 - GRANDE MARGARITA - 2.05 LT / 70OZ',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('2483','2483 - SHAMPOO STRATEGY CASPA X 300 ML',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('2791','2791 - OXIDANTE HAIR FARMACITY 20 VOL.X 75 ML V2',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('2810','2810 - OXIDANTE HAIR FARMACITY 30 VOL.X 75 ML V2',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('2811','2811 - AMPOLLA KERATINA HAIR FARMACITY X 10 ML',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3057','LIBBEY - PERCEPTION - COPA DE VINO 325 M',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('350D5UA#ABA','HP OMEN 15-EK1013 GAMING CORE',75);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('35506606883','RZR XP 1000 EXHAUST SYSTEMS',74);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3603','3603 - CRISA - HIELERA CAMELOT',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3623','3623 - LIBBEY - HURRICANE - COPA HURRICANE 696',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3779','3779 - LIBBEY - EMBASSY - COPA MARTINI 274 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3807','3807 - LIBBEY - BELGIAN BEER - COPA CERVEZA 384ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3808','3808 - LIBBEY - BELGIAN BEER - COPA CERVEZA 473ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3848','3848 - PORTA COMANDAS P/ 16CLIPS 1.21MT',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3849','3849 - CRISA - JARRO FRASCO COUNTRY 488ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3857','3857 - CRISA - JARRA DECANTADORA 0.5 LT.',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3886','3886 - CRISA - MEXICO - JARRA 1LTS',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('3988','3988 - LIBBEY - TEARDROP - COPA SHERRY 89 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('4036','4036 - LIBBEY BRILLIANCE COPA DIAMOND 430ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('4037','4037 - LIBBEY BRILLIANCE COPA DIAMOND 550ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('4078','4078 - LIBBEY BRILLIANCE COPA CERVEZA DIAMOND 500ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('40902','040902 - DEPILATORIA ROSTRO  ALOE VERA',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('427','427 - ACONDICIONADOR BIO-LISS BONMETIQUE PROFESSIONNEL X 350 ML',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('4390','4390 - CRISA - JARRO DE CAF? 142ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('4781240','PINZA M ROJO 30.5 CM',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('4781270','PINZA M VERDE 30.5 CM',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('4781640','PINZA M ROJO 40 CM',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('4781670','PINZA M VERDE 40 CM',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('527','527 - BEER GLASSES',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('5292','5292 - LIBBEY - IRISH COFFEE RECTO 251 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('5298','5298 - LIBBEY - SCANDINAVIA MUG 444 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('5541','5541 - LIBBEY - SELENE DECANTADOR 2 LTS 1700843',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('5671','5671 - CRISA -  SUPER CHOPP CERVEZA 1 LT.',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('5680','5680 - CRISA -  JARRO DE CAF? 251ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('5681','5681 - CRISA - CHOPP CERVEZA  375 LT.',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('60440239931','DISCO DE CORTE GRANO 46, 115 X 1.2 X 22.23 MM',23);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('620440','620440 - NATURALOE SHAMPOO NEUTRO HIDRATA Y BRILLO',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('661-17676','661-17676 - CAMERA, IPHONE 12 MINI',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('661-53','661-53 - COLORACION CREMA ALGALINE HYDRO GLOSS TECHNOLOGY 5',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('6700','6700 - BRAVO - VASO CERVEZA 325ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('6714','6714 - FONDO GRUESO - VASO WHISKY 328ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('7015435','LED HO UFO 80W 6500K',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('702003742','702003742 - FUNDA GEAR4 PICCADILLY PARA IPHONE 11 - BLACK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('70355','70355 - LIBBEY - HERITAGE BOTELLA 222ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-1','712-1 - COLORACI?N CREMA KIT ESTEREOCOLOR  1 NEGRO V3',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-1100','712-1100 - COLORACI?N CREMA KIT ESTEREOCOLOR 1100 GRIS PLATA',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-3','712-3 - COLORACI?N CREMA KIT ESTEREOCOLOR  3 CASTA?O OSCURO V3',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-4','712-4 - COLORACI?N CREMA KIT ESTEREOCOLOR  4 CASTA?O V3',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-5','712-5 - COLORACI?N CREMA KIT ESTEREOCO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-54','712-54 - COLORACI?N CREMA KIT ESTEREOCOLOR  54  CASTA?O CLARO AVELLANA V3',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-56','712-56 - COLORACI?N CREMA KIT ESTEREOCOLOR  56 CASTA?O CLARO CAOBA V3',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-660','712-660 - COLORACI?N CREMA KIT ESTEREOCOLOR  660 RUBIO OSCURO ROJIZO INTENSO V3',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-662','712-662 - COLORACI?N CREMA KIT ESTEREOCO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-663','712-663 - COLORACI?N CREMA KIT ESTEREOCOLOR  663 RUBIO OSCURO CAOBA DORADO V3',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-71','712-71 - COLORACI?N CREMA KIT ESTEREOCO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-8','712-8 - COLORACI?N CREMA KIT ESTEREOCOLOR  8 RUBIO CLARO V3',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-81','712-81 - COLORACI?N CREMA KIT ESTEREOCO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('712-923','712-923 - COLORACI?N CREMA KIT ESTEREOCO',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('73004','073004 - CR. HIDRATANTE/NUTRITIVA X110',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('73006','073006 - CR.ANTIARRUGAS AHA X110ML.',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('74002','074002 - GEL HIDRATANTE VIT.CYRET *110',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('75-LM','75-LM - CRISA-TARROS CAFETEROS - TALL MUG / 473ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('75004','075004 - CONTORNO DE OJOS C/AC.HIALURON',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('75008','075008 - TRAT.ANTIARR.INTEN NOCHE 60 G',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('75008215','075008215 - FRASCO TRAT NOCHE X 60 V2018',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('75009214','075009214 - FRASCO IMPRESO FPS 15*60 V18',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('75011','075011 - SERUM X 30 PHYSIOLOGYQUE',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('75011100','075011100 - ENV. PREMIUM 30ML',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('75011202','075011202 - DROPPER NEGRO',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('7504','7504 - LIBBEY - VINA - COPA VINO ALTA 547 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('7505','7505 - LIBBEY - VINA - COPA VINO BALLOON 540 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('7512','LIBBEY - VINA - COPA MARTINI 237 ML.',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('7519','7519 - LIBBEY - VINA - COPA VINO 355 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('756-57','756-57 - COLOR NATURAL NOUGAT BRILLO CON COLOR N? 57 CHOCOLATE',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('756-81','756-81 - COLOR NATURAL NOUGAT BRILLO CON COLOR N? 81 RUBIO CLARO CENIZA',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('7580','7580 - CONTROL STYLE BONMETIQUE PROFESSIONNEL X 120 ML',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('759','759 - LIBBEY-TEMPO PLATO CUADRADO 26CM 1794708',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('76-LM','76-LM - CRISA-TARROS CAFETEROS - COFFEE MUG / 339ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('763','763 - LIBBEY-TEMPO PLATO CUADRADO 15.2 1797299',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('770','770 - TEMPO - TAZA CAFE 300ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('77002','077002 - CREMA ANTIARRUGAS COL?GENO & HIALUR?NICO SIN TACC *80G',7);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('80610922884','CINTA 2242 AUTOSOLDABLE SIN SEPARADOR 19MMX4,57M',23);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('8208','8208 - EXHIBIDOR DE PIE ESTEREOCOLOR KIT V2',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('82K20015US','82K20015US - LENOVO IDEAPAD GAMING 3 15ACH6 R5 8G 256G 10H',75);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('82VJJ-SAS','DELL INSPIRON 3501 CORE™ I5-1135G7 2.4GHZ 256GB SSD 8GB 15.6\" (1920X1080) WIN10 BLACK.	\"',70);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('8380','8380 - PALLETS NORMALIZADOS',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('8412','SOBRE BOLSA PLATINUM EN CAJA X 500 UN',31);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('8416','ULTRAFORM MAESTRO',31);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('8421','ULTRAFORM BLANCO BNA BECAS',31);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('8444','SOBRE INSERTADORA MECANICA SIN LOGO CAJA X 500 UN',31);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('90304','HARDWAX AEROSOL',5);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('90309','100 PLUS (SELLADOR DE PÍNTURA)',5);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('90310','U.T.P (TAPIZADOS)',5);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('904290','PALLETS CON BOBINAS DE PVC',65);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('9176','9176 - CARTA DE COLORES BONMETIQUE PROFESSIONNEL HD PREMIUM V4',36);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('923-04880','923-04880 - DISPLAY PROTECTIVE COVER, IPHONE 12 PRO MAX, 10PK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('961','961 - CRISA - VOTIVO ESTRIADO / 83 ML',8);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('99MO124902','99MO124902 - \"FUNDA MOSHI IGLAZE PARA MACBOOK PRO DE 13\"\"\"\" - CLEAR\"\"\"',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('A317-52-569E','A317-52-569E',75);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ACS02082','ACS02082 - WATCH BAND NANO POP APPLE WATCH SERIES SE / 6 / 5 / 4 (44MM)- PRUNE CHARCOAL',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('AERO','AERO - GUIA AEROBOX SH - HAWB',56);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('AJZG28628','MASO DE CARTAS TIGRE JAPONES - ROSA',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('AT-LP60X-BK','AT-LP60X-BK - AUDIO-TECHNICA AT-LP60X-BK',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('AT-LP60X-BKB','AUDIO-TECHNICA AT-LP60X-BKB',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('AT-LP60XBT-BK','AT-LP60XBT-BK - GIRADISCOS BLUETOOTH',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ATC','ATC - ENVIO A TU CASA',61);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ATH-M50XMO','AURICULAR -EDICIÓN LIMITADA',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ATH-M50XPB','AURICULAR PROFESIONAL  (PURPURA)',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ATH-SR30BTGY','AUDIO-TECHNICA ATH-SR30BTGY',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('AXXP18482','AXXP18482 - FUNDA PORTANOTEOBOOK STAR WARS TECHY - NEGRO',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('AYLY92773','MATERA RAMBO PAMPERA PORTANOTEBOOK POP - NEGRO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('BAP100E40WW','BAP100E40WW',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('BTELAM2','BOLSA DE TELA LEGION EXTRANJERA',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('CIRQ39625','CIRQ39625 - MATERA DIAMOND POP - NEGRO',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('DEAV02635','MATERA PAMPA RAMBO POP - FUCSIA',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('DFRI29874','FUNDA PORTA CELULAR DIAMOND POP: BAG IN BAG - ROSA OPACA',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('DFUL87697','BANDOLERA CUMBRE DIAMOND JAZZ - ROSA METALIZADA',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('DODL59585','BABY BAG PATAGONIA DIAMOND / MILITAR',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('DR-60DMKII','TASCAM DR-60DMKII',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('DURD19284','DURD19284 - CARTUCHERA XL  STAR WARS TECHY- NEGRO',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('DWPZ93474','DWPZ93474 - LEGIONARIAS EPIC ICE TALLE 37/38',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('DYBU17276','MATERA DIAMOND PAMPERA PORTANOTEBOOK POP BAG IN BAG - FUCSIA',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('EC21AUXGA-128-SGNS','EC21AUXGA-128-SGNS',28);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('EDGE SOLO','ANTELOPE AUDIO EDGE SOLO',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('EKOR13663','TOTE CUMBIA DIAMOND RAP - NEGRO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('EMC20','WHIRLWIND EMC20',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('EML30','EML30 - LUZ DE EMERGENCIA 30 LEDS SMD AC100 240V 50-60 HZ 8 HORAS 6500K',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('EPJU08604','GORRA LEGIONARIA TIGRE - NEGRO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FCYY28489','BANDOLERA CUMBRE JAZZ NEGRO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FHJH35651','FHJH35651 - MOCHILA PACKABLE STAR WARS GOLDEN - AMARILLO',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FLSV2100CW','REFLECTOR LED MACROLED 100W AC100-240V FRIO',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FLSV2150CW','REFLECTOR 150W MLED',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FMQP29260','FUNDA PORTA CELULAR DIAMOND POP: BAG IN BAG - ESMERALDA',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1014012001','FT1014012001 - CERVEZA GOOSE ISLAND IPA LATA 473ML',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1107010001','FT1107010001 - LAT BUDWEISER 410',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1200312001','CER-LAT-473-RUBIA-ANDES',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1200412001','FT1200412001 - CER-LAT-473-ROJA-ANDES',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1200431001','FT1200431001 - CER-LAT-269-ANDES-ROJITA',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1200512001','CER-LAT-473-NEGRA-ANDES',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1200612001','FT1200612001 - CER-LAT-473-ANDES-IPA',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1201212001','FT1201212001 - CER-LAT-473-BRAHMA-PROMO',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1204010001','FT1204010001 - CERVEZA QUILMES DOBLE MALTA LATA 410ML',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1204312001','FT1204312001 - CER-LAT-473-QUILMES-STOUT',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1205131001','FT1205131001 - CER-LAT-269-STELLA-NOIR',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1205212001','FT1205212001 - CER-LAT-473-STELLA-ARTOIS',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1205312001','FT1205312001 - CER-LAT-473-STELLA-ARTOIS-NOIRE',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1300430001','FT1300430001 - CER-BOT-730-PATAGONIA-WEISSE',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1300612001','FT1300612001 - CER-LAT-473-PATAGONIA-24.7',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1300630001','FT1300630001 - CER-BOT-730-PATAGONIA-24-7',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1301030001','FT1301030001 - CER-BOR-710-PATAGONIA-VERA-IPA',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1301113001','FT1301113001 - CER-LAT-473-PATAGONIA-ABRAZO-DE-OSO',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1301212001','FT1301212001 - CER-LAT-473-PATAGONIA-SENDERO-SUR',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT1620012001','FT1620012001 - CER-LAT-473-TEMPLE-WOLF-IPA',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT2044301001','FT2044301001 - VIN-750-ESTANCIA-MENDOZA-MALBEC-RESERVA',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT2044806001','FT2044806001 - VIN-BOT-750-ESTANCIA-MENDOZA-CABERNET SAUV-RESERVA',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT2044907001','FT2044907001 - VIN-BOT-750-ESTANCIA-MENDOZA-CABERNET-FRANC-RESERVA',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT2145000001','FT2145000001 - VINO FINCA MAGNOLIA BLEND DE BLANCAS',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT2344000001','FT2344000001 - VIN-BOT-750-FINCA-MAGNOLIA-PINOT',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT3901012001','FT3901012001 - PATAGONIA ISIDRA 473ML',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT3902007001','FT3902007001 - SIDRA 1930 DEMI SEC LATA 355ML',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4003104001','CRI-COPA-330-CHALICE-STELLA',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4003604001','COPA STELLA VINTAGE 330ML CURVO',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4008013001','FT4008013001 - CRI-VASO-500-PATAGONIA-RIESGEE',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4024004001','CRI-COPA-300-ANDES',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4037014001','FT4037014001 - VASO BRAHMA BXNM ELEGANTE 500ML',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4037015001','FT4037015001 - VASO BRAHMA BXNM DUKI 500ML',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4037016001','FT4037016001 - VASO BRAHMA BXNM LALI 500ML',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4037017001','FT4037017001 - VASO BRAHMA BXNM BZRP 500ML',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4037018001','FT4037018001 - VASO BRAHMA BXNM NICKI NICOLE 500ML',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4046013001','FT4046013001 - CRI-COPA-500-ESTANCIA-MENDOZA-BORDEAUX',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4046113001','FT4046113001 - COPON ESTANCIA MENDOZA',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4105100001','MER-FRAPERRA-STELLA-2021',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4213300001','MER-DESTAPADOR METAL-STELLA-ARTOIS',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4402818001','FT4402818001 - BUZO CORONA UNDERWAVE NEGRO C/CAPUCHA T S',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4402819001','FT4402819001 - BUZO CORONA X UNDERWAVE NEGRO CON CAPUCHA TALLE M',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4402820001','FT4402820001 - BUZO CORONA X UNDERWAVE NEGRO CON CAPUCHA TALLE L',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4402821001','FT4402821001 - BUZO CORONA UNDERWAVE NEGRO C/CAPUCHA T XL',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT4504000001','MER-BEERMAT-STELLA CORTO        ',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FT9600620001','FT9600620001 - LAC-LACHE-ALMENDRAS-TRATENFU',44);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FTRQ63227','MATERA DIAMOND POP - ROSA OPACA',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FX516PR-211.TM15','ASUS TUF 2021 INTEL I7 11GENERACION, PLACA VIDEO EVIDIA RTX 3070, 16 GB RAM, 1TB SSD',75);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('FZUQ35406','GORRA LEGIONARIA - NEGRO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('GARDENPRO50','GARDEN PRO 50W',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('GDOG38567','TAZA EPIC - NEGRO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('GNKU35554','GNKU35554 - CARTUCHERA STAR WARS GOLDEN - AMARILLO',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('GW01001030','FREESTYLE AZUL',66);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('GW01004083','VOYAGUE SMALL 16.5',66);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('GW10001084','HOODIE BUZO CON CIERRE GRIS MEDIUM',66);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('GW11002217','CAMPERA INFLADA JET VERDE BOTELLA CON CAPUCHA XXL',66);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('H1161','H1161 - TABLETA GR?FICA HUION',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('H1162-K','H1162-K - HUION INSPIROY H1162',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('H640P','H640P - TABLETA GR?FICA HUION INSPIROY H640P',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('H642-K','H642-K - HUION INSPIROY H642',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('H950P','H950P - TABLETA GR?FICA HUION',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('H952-K','H952-K - HUION INSPIROY H952',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HFEB03900','NECESER DAN DIAMOND POP BAG IN BAG - NEGRO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HGGR21394','HGGR21394 - LEGIONARIAS ULTRA POP TALLE 37 - NGRO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HGUJ51766','MATERA PAMPA DIAMOND JAZZ / MARINO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HHSC2-CG-SL/G','HHSC2-CG-SL/G - AURICULARES HYPERX CLOUDX PARA XBOX - BLACK',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HKEV01113','MATERA PAMPA RAMBO POP - BEIGE',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HMSH1-A-BK/G','HMSH1-A-BK/G - HYPERX MOUSE PULSEFIRE HASTE OPTICAL, USB 2.0',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HS611-G','HS611-G - TABLETA GR?FICA HUION INSPIROY HS611 - SPACE GRAY',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HS611-R','HS611-R - TABLETA GR?FICA HUION INSPIROY HS611 - CORAL RED',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HS64','HS64 - TABLETA GR?FICA HUION',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HSCDRRN002NDAA3','HSCDRRN002NDAA3 - SENSOR DE PRESION DIFERENCIAL',28);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HSCDRRN005NDAA3','HSCDRRN005NDAA3 - SENSOR DE PRESION DIFERENCIAL',28);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HSCMRRN016MGAA3','HSCMRRN016MGAA3 - HSCMRRN016MGAA3',28);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HX-HSCLS-BL','HX-HSCLS-BL - AURICULARES HYPERX CLOUD GH PARA PS4 - BUE',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('HX-KB6RDX-US','HX-KB6RDX-US - KEYBOARD HYPERX ALLOY ORIGINS BACKLIT - USB US KEY - RED',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('I3505-A542BLK-PUS','I3505-A542BLK-PUS',75);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('IMPOR','IMPOR - IO_IMPORTO ENVIOS',59);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('INS0033764-R0016737-PC','INS0033764-R0016737-PC - DELL G7 17 7700 GAMING CORE?I7-10750H',75);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ITQQ78642','ITQQ78642 - YERBERO DIAMOND POP',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('IUKD14510','FUNDA PORTA CELULAR POP 3 : AZZURRO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLBOOMBOX2BLKAM','JBLBOOMBOX2BLKAM - PARLANTE JBL BOOMBOX 2 - BLACK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLCHARGE5TEALAM','JBLCHARGE5TEALAM - JBL CHARGE 5 SPEAKER BLUETOOTH - TEAL',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLCLIP4REDAM','JBLCLIP4REDAM - PARLANTE JBL CLIP4 - RED',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLENDURSPRINTUAM','JBLENDURSPRINTUAM - AURICULARES JBL ENDURANCE SPRINT - BLUE',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLFLIP5BLKAM','JBLFLIP5BLKAM - PARLANTE JBL FLIP 5 - BLACK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLFLIP5GRENAM','JBLFLIP5GRENAM - PARLANTE JBL FLIP 5 - GREEN',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLFLIP5GRYAM','JBLFLIP5GRYAM - PARLANTE JBL FLIP 5 - GRAY',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLFLIP5PIKAM','JBLFLIP5PIKAM - PARLANTE JBL FLIP 5 - PINK',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLFLIP5SQUADAM','JBLFLIP5SQUADAM - PARLANTE JBL FLIP 5 - SQUAD',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLGO2CYANAM','JBLGO2CYANAM - PARLANTE JBL GO2 PORTABLE - ICECUBE CYAN',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLGO3BLKAM','JBLGO3BLKAM - PARLANTE JBL GO3 PORTABLE - BLACK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLGO3BLUAM','JBLGO3BLUAM - PARLANTE JBL GO3 PORTABLE - BLUE',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLT110WHTAM','JBLT110WHTAM - AURICULARES JBL T110 PURE BASS - WHITE',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLT510BTBLKAM','JBLT510BTBLKAM - AURICULARES JBL T510 BLUETOOTH - BLACK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLT510BTBLUAM','JBLT510BTBLUAM - AURICULARES JBL T510 BLUETOOTH - BLUE',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLT510BTWHTAM','JBLT510BTWHTAM - AURICULARES JBL T510 BLUETOOTH - WHITE',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JBLWIRELESSMICAM','JBLWIRELESSMICAM - JBL WIRELESS TWO MICROPHONE SYSTEM BLACK',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('JR5050AWT-P-B50EBCIL','JR5050AWT-P-B50EBCIL',28);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('KHX-HSCP-RD','KHX-HSCP-RD - AURICULARES HYPERX CLOUD II PRO GAMING HEADSET - RED',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('KKKP34342','GORRA LEGIONARIA TIGRE - MARRON',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('KLOS71112','KLOS71112 - OJOTA TIGRE TALLE 37/38',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',54);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('LAM8881','LAMPARA GOTA ECO LED 5W LUZ DIA E27',54);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('LAM8883','LAMPARA GOTA ECO LED 7W LUZ DIA E27',54);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('LAM8886','LAMPARA VELITA ECO LED 5W LUZ CALIDA E14',54);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('LAM8887','LAMPARA VELITA ECO LED 5W LUZ DIA E14',54);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('LLAVEROLEGCADENA','LLAVERO LEGIONARIO CON CADENA',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('M00J3LZ/A','M00J3LZ/A - APPLE WATCH SERIES 6 44MM -  BLUE',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MAPO009','SOBRE DE PAPEL FSC A4 CON VENTANA PARA ENVIO DE POLIZAS [400 X CAJA]',19);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MAPO016','SOBRE PARA POLIZAS X 200',19);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MGN03LE/A','MGN03LE/A - CARGADOR APPLE 12W USB',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MGYH3AM/A','MGYH3AM/A - AURICULARES AIRPODS MAX - SPACE GRAY',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MGYJ3AM/A','MGYJ3AM/A - AURICULARES AIRPODS MAX - SILVER',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MGYL3AM/A','MGYL3AM/A - AURICULARES AIRPODS MAX - SKY BLUE',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MGYM3AM/A','MGYM3AM/A - AURICULARES AIRPODS MAX - PINK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MHJ03ZM/A','MHJ03ZM/A - AIRTAG LOOP - DEEP NAVY',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MHJC3LE/A','MHJC3LE/A - CARGADOR APPLE 20W USB-C',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MK0C2LZ/A','MK0C2LZ/A - APPLE?PENCIL',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MK2E3AM/A','MK2E3AM/A - APPLE MAGIC MOUSE',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MK2F3LL/A','MK2F3LL/A - AURICULARES BEATS FIT PRO - BLACK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MK2G3LL/A','MK2G3LL/A - AURICULARES BEATS FIT PRO - WHITE',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MK2H3LL/A','MK2H3LL/A - AURICULARES BEATS FIT PRO - STONE PURPLE',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MK2J3LL/A','MK2J3LL/A - AURICULARES BEATS FIT PRO - SAGE GRAY',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MMX62AM/A','ADAPTADOR APPLE LIGHTNING A 3.5 MM HEADPHONE JACK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MWP22AM/A','AIRPODS PRO',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MX532AM/A','MX532AM/A - MX532AM/A - AIRTAG (1 PACK)',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MX542AM/A','MX542AM/A - AIRTAG (4 PACK)',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('MY1W2LE/A','MY1W2LE/A - CARGADOR APPLE 30W USB-C',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('OZQC70742','OZQC70742 - OJOTA TIGRE TALLE 39/40',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PEC40CW','PEC40CW - PANEL 60X60CM CUADRADO MACROLED 40W 6500K',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PEC40NW','PANEL 60X60 CUADRADO MACROLED 40W 4500K',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PFZR18739','PFZR18739 - MOCHILA PACKABLE STAR WARS THE CHILD - MILITAR',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PLT-CAJAS','CAJAS DE CARTON CORRUGADO IMPRESAS',69);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PLT-INS2868','PLT-INS2868 - ENVASE DE OXIDANTE COLORACI?N NATURE & SOIN  X70ML (V.5)',76);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PLT-INS2945','PLT-INS2945 - FISEL ESTEREOCOLOR COLORACION FUND',76);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PLT-INS2950','PLT-INS2950 - ROLLOS DE FISEL P/POUCHE COLORACION PERMANENTE EN CREMA X 47 GRS',76);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PLT-INS2970','PLT-INS2970 - ENVASES',76);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PLT-INS8155','PLT-INS8155 - CAJAS PARA SH. Y ACOND.NOUGAT/BMTQ X12U DE 350ML/BI PHASE NOUGAT X 200ML',76);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PLT-INS8206','PLT-INS8206 - PALLET INSUMO',76);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PLT-INS8217','PLT-INS8217 - STD SHAMPOO STRATGY X300',76);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('POP-00100-02','POP-00100-02 - GARMIN AR/TACX BOTTLE (500ML) BLACK',74);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PR20050DEL0006','DELL INSPIRON 3505 15.6 FHD RYZEN 3-3250U 8GB 256GB SSD W10 BLACK MODELO DELL-3505-22P4C',62);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PR20050DEL0007','DELL INSPIRON 15.6 I5-1135G7 12 GB 256GB SSD IRIS XE GRAPHICS BLACK MODELO DELL-I3501-5081BLK',62);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PR20050LEN0005','LENOVO YOGA C740 15.6 TOUCH I7-1051OU 12GB 512GB SSD MICA MODELO LEN-81TD0077US',62);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PR20050LEN0006','LENOVO IDEAPAD 3 14 I5-1035G1 8GB 512GB SSD W10 PLATINUM GREY MODELO LEN-81WD00U9US',63);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PR20050MSI0001','MSI MODERN 15 A10M-455 I5-10210U 8GB 512GB SSD 15.6 BLACK MODELO MODERN15455',63);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PR20060APP0001','APPLE MAGIC MOUSE 2 SILVER MODELO MLA02LL/A',62);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PR20080APP0014','APPLE IPAD 8TH GENERATION WI-FI 32GB 10.2 GOLD MODELO MYLC2LL/A',62);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PR40015HAR0001','HARMAN KARDON ONYX STUDIO 6 BLUE',62);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PR50005LIN0001','LINCOLN ELECTRIC SOLDADORA ARCWELD 250C MIG',63);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PRO2701','PRO2701 - PROYECTOR DE LED SL-SP 500W 60? LD FORZA',54);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PRO61','MICRÓFONO',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('PSRE463','YAMAHA PSRE463',49);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('Q11KV2','Q11KV2 - TABLETA GR?FICA HUION INSPIROY Q11KV2',58);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('RTIZ01611','RTIZ01611 - LEGIONARIAS BOLD TALLE 39/40',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('SGPO033','HOJA MERCOSUR X 500',19);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('SPMWHD32AMH5XAU0S0','SPMWHD32AMH5XAU0S0',28);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('SPORT PRO 300 L20','SPORT PRO 300 L20 - PROY INY ALUM 300W 20?',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('SPORT PRO 300 L60','SPORT PRO 300 L60 - PROY INY ALUM C300W 60?',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('SSCMRRN001PDAA3','SSCMRRN001PDAA3 - SSCMRRN001PDAA3',28);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ST-CMAM','ST-CMAM - HUB USB-C SATECHI 4 PUERTOS - SPACE GRAY',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ST-ELMPK','ST-ELMPK - MOUSE PAD SATECHI - BLACK',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ST-UCSMA3M','ST-UCSMA3M - HUB USB-C SATECHI MULTIPUERTOS - SPACE GRAY',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ST-UCSMA3S','ST-UCSMA3S - TYPE-C SLIM MULTIPORT WITH ETHERNET ADAPTER - SILVER',46);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('STAR ECO 150F','STAR ECO 150F - COLG EN INY DE ALUM FRIO',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('STAR PRO 200 L90','STAR PRO 200 L90 - COLG INY DE ALUM NEUTRA',60);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('TCXJ18652','TCXJ18652 - BOTINERO RAMBO STAR WARS TECHY - NEGRO',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('TE031211200','3M ESPUMA DE POLIURETANO LATA X 250ML - SPRAY',23);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('TSWV38800','TAZA EPIC ICE - BLANCO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('VIPO014','FORMULARIO DE DESIGNACION DE BENEFICIARIO VIDA OBLIGATORIO (X 3) [50 X BLOCK]',19);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('VLEY85092','MOCHILA ANDES LIGHT DIAMOND / PLATEADA',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('VSBJ21179','FUNDA PORTA CELULAR NASA BLANCO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('WEWT18827','WEWT18827 - CARTUCHERA STAR WARS THE CHILD - MILITAR',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('WGMG07566','WGMG07566 - MOCHILA ANDES LIGHT DIAMOND ROCK / NEGRO',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('WXUT90250','MOCHILA ATLANTYC DIAMOND / NEGRO',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('X512JA-211-SAS','ASUS - VIVOBOOK 15.6\" LAPTOP - INTEL 10TH GEN I7 - 8GB MEMORY - 1TB+256GB PCIE SSD -\"',70);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('X6-150M214','X6-150M214',28);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('XOQC07371','CARTUCHERA DIAMOND JAZZ MICKEY FANTASIA - AZUL',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('XWQS44597','CUADERNO STUDIO RAYADO TIGRE A4 - ROSA',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('YAHN00770','YAHN00770 - BANDOLERA SAN LUIS DIAMOND POP NEGRO',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('YCQF18815','YCQF18815 - CARTUCHERA XL STAR WARS THE CHILD - MILITAR',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('YIKC98937','BANDOLERA CUMBRE DIAMOND JAZZ TIGRE JAPONES - CELESTE',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('YOGY78912','MOCHILA ANDES LIGHT DIAMOND / ROSA METALIZADA',57);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('YZGH01580','YZGH01580 - LEGIONARIAS BOLD TALLE 35/36',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ZBFF34595','ZBFF34595 - FUNDA PORTANOTEBOOK STAR WARS THE CHILD - MILIRTAR',55);
INSERT INTO maestro_producto (`producto_id`,`descripcion_producto`,`cliente_id`) VALUES ('ZGRU93230','BANDOLERA MADRYN DIAMOND RAP - NEGRO',55);

INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('010-02064-00','INSTINCT  GRAPPHITE',74,7,3,4);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('010-02120-30','010-02120-30 - FORERUNNER 245 MUSIC GPS WI-FI EU/PAC BLACK/RE',74,20,19,18);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('010-02156-00','FORERUNNER 45 GPS SMALL NA WHITE',74,8,1,9);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('010-02156-05','FORERUNNER 45 GPS LARGE NA BLACK',74,9,19,7);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('010-02173-12','010-02173-12 - VENU GPS WI-FI BLACK/SLATE WW',74,20,14,20);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('010-02173-32','VENU GPS WI-FI BLACK/GOLD WW',74,3,17,11);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('010-02200-00','APPROACH S62 BLACK',74,13,9,20);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('010-02247-01','010-02247-01 - GARMIN SWIM 2 GPS NA WHITESTONE',74,7,19,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10004','COLLAR PARA PERRO XXS/XS STAR WARS CHEWBACCA',69,20,5,8);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10014','CORREA PERRO S STAR WARS CHEWBACCA',69,1,5,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10015','CORREA PERRO M STAR WARS CHEWBACCA',69,6,2,15);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10025','ARNES PARA PERRO S/M STAR WARS CHEWBACCA',69,15,15,7);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1003-33A','1003-33A - COLORACI?N SEMIPERMANENTE FUNKY COLORS ESTEREOCOLOR EXH.X 12 UN X 47GRS-AZUL',36,15,19,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1003-66V','1003-66V - COLORACI?N SEMIPERMANENTE FUNKY COLORS ESTEREOCOLOR EXH.X 12 UN X 47GRS- VIOLETA',36,17,12,5);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1003-77F','1003-77F - COLORACI?N SEMIPERMANENTE FUNKY COLORS ESTEREOCOLOR EXH.X 12 UN X 47GRS- FUCSIA',36,7,12,16);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10084','MORDEDOR PARA PERRO AVENGERS HULK',69,19,16,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10235','010235 - PROTECTOR SOLAR FPS50 X 200',7,11,4,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10245','010245 - PROTECTOR SOLAR FPS50 X 130',7,9,4,9);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10255','010255 - PROTECTOR SOLAR FPS 50',7,15,5,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10260701','010260701 - BOMBA PREMIUM 20/410 TRAT WHIT',7,18,14,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1027','1027 - SHAMPOO SILVER BONMETIQUE PROFESSIONNEL X 15 ML EXH. X 34 POUCHES',36,5,20,12);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10295','010295 - PROT. SOLAR FPS 50 FAMILY *400 G',7,1,15,17);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('103003159','FUNDA CON TECLADO ZAGG MESSENGER FOLIO PARA IPAD MINI 5',46,13,16,3);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10307','010307 - GEL EXTRA-REF.POST SOLAR 200ML',7,3,17,11);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10327','010327 - GEL POST SOL EXTRA REFX100',7,8,14,18);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('105','105 - CRISA - CAVANA- VASO HB 414 ML',8,11,19,8);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10510','010510 - ACEITE BRONCEADOR FPS6',7,16,5,17);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10706','010706 - RESALTADOR DE BRONCEADO *130',7,6,14,16);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10805','010805 - PROTECTOR SOLAR FPS70 RAYITO X 170ML',7,18,9,8);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10812','010812 - SPRAY SOLAR FPS 30 AERO *250ML',7,20,9,4);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('10813','010813 - SPRAY SOLAR AERO FPS 50 *250ML',7,20,8,9);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('109906908','109906908 - L?PIZ ZAGG  - BLACK',46,5,1,18);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1101','1101 - SHOCK REPARADOR INTENSIVO CON KERATINA ESTEREOCOLOR EXH. X 10 UNID. X 50 GRS',36,12,15,6);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1103','1103 - SHAMPOO SILVER BONMETIQUE PROFESSIONNEL X 350ML',36,17,20,7);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1109','1109 - POLVO DECOLORANTE BONMETIQUE -',36,9,15,2);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1124','1124 - PROTECTOR TERMICO BONMETIQUE PROFESSIONNEL X 120 ML.',36,14,1,18);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1128','1128 - SHAMPOO MATIZADOR BLACK BONMETIQUE PROFESSIONNEL X 900 ML',36,15,9,20);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1156','1156 - SHOCK ORO 24K ESTEREOCOLOR',36,10,16,18);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1203','1203 - MASCARA SILVER BONMETIQUE PROFESSIONEL X 300ML',36,18,1,12);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1206','1206 - ACTIVADOR DE RULOS BONMETIQUE PROFESSIONNEL X 300 ML. V2',36,9,17,12);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1305','1305 - OLEO DE ARGAN ESTEREOCOLOR EXH. X 40 UN DE 4 ML',36,11,1,11);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('15238','15238 - LIBBEY - GIBRALTAR - VASO BEVERAGE 355 M',8,13,13,1);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('15242','15242 - LIBBEY - GIBRALTAR - VASO ROCKS 266 ML',8,6,19,19);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('15713','15713 - LIBBEY - ENDEAVOR - VASO BEVERAGE 355 ML',8,6,10,4);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('15714','15714 - LIBBEY - ENDEAVOR - VASO BEVERAGE 414 ML',8,6,1,8);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1604','1604 - PILSNER 473 ML.',8,1,12,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('163PC01D75','163PC01D75',28,16,17,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('1650','1650 - LIBBEY - CHICAGO - VASO CORDIAL 74ML',8,12,3,11);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('16790','SOMMIER BOX PRINCESS 190 X 140 CM CANNON',47,20,5,20);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('17540','BOX SOÃ‘AR 190 X 140 CANNON (613000190140) 17540',47,5,10,1);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('182-10','182-10 - TC GEL HD BONMETIQUE PROFESSIONNEL 10 ACLARANTE X 100 GRS.',36,16,15,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('182-1100','182-1100 - TC GEL HD BONMETIQUE PROFESSIONNEL GRIS PLATA X 100 GRS.',36,16,10,6);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('182-647','182-647 - TC GEL HD BONMETIQUE PROFESSIONNEL 6.47 CHOCOLATE X 100 GRS.',36,20,18,17);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('182-81','182-81 - TC GEL HD BONMETIQUE PROFESSIONNEL 8.1 RUBIO CLARO CENIZA X 100 GRS.',36,20,7,4);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('182-82','182-82 - TC GEL HD BONMETIQUE PROFESSIONNEL 8.2 RUBIO CLARO GLACE X 100 GRS.',36,13,3,9);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('191','CAJA MI-GGI - PAQUETE X 25 UN',31,2,6,7);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('200105722','200105722 - VIDRIO TEMPLADO ZAGG INVISIBLESHIELD VISION GUARD PARA IPAD PRO 12.9\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"',46,10,1,9);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('200108315','200108315 - IS-GLASS ELITE PLUS-APPLE-WONDER WOMAN-CFS-FG FOR IPHONE 13 PRO MAX',46,12,8,9);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('20103','020103 - LOCION MARY STUART X 110 C.C.',7,11,7,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('206','206 - HOJA CARTA LASER - CAJA X 5 RM / CAJA X 7 RM',31,7,8,1);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('213-101','213-101 - JALEA COLORANTE BONMETIQUE PRO',36,1,9,18);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('213-41','213-41 - JALEA COLORANTE BONMETIQUE PRO',36,10,12,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('213-51','213-51 - JALEA COLORANTE BONMETIQUE PRO',36,12,1,11);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('213-601','213-601 - JALEA COLORANTE BONMETIQUE PROFESSIONNEL X 50 ML. 6.01 CENIZA OSCURO',36,10,9,2);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('213-72','213-72 - JALEA COLORANTE BONMETIQUE PROFESSIONNEL X 50 ML. 7.2 RUBIO GLAC?',36,1,11,13);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('213-82','213-82 - JALEA COLORANTE BONMETIQUE PROFESSIONNEL X 50 ML. 8.2 RUBIO CLARO GLAC?',36,10,4,3);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('213-9','213-9 - JALEA COLORANTE BONMETIQUE PRO',36,17,6,8);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('213-91','213-91 - JALEA COLORANTE BONMETIQUE PRO',36,19,1,11);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('213-92','213-92 - JALEA COLORANTE BONMETIQUE PROFESSIONNEL X 50 ML. 9.2 RUBIO MUY CLARO GLAC?',36,3,15,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('217','217 - LIBBEY - STEMLESS - VASO VINO',8,6,16,13);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('2251','2251 - EXTRA LARGE BRANDY GLOBET 7.5 / 256 OZ',8,19,19,6);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('2279','2279 - SHAMPOO STRATEGY ANTIAGE X 300M - M.H',36,14,11,4);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('2294SR','2294SR - LIBBEY - ENVY - VASO BEVERAGE 354 ML - C',8,15,14,13);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('231','231 - LIBBEY - STEMLESS - VASO VINO BL 451ML',8,20,19,17);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('2315','2315 - GRANDE MARGARITA - 2.05 LT / 70OZ',8,19,6,17);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('2483','2483 - SHAMPOO STRATEGY CASPA X 300 ML',36,14,14,2);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('2791','2791 - OXIDANTE HAIR FARMACITY 20 VOL.X 75 ML V2',36,17,10,12);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('2810','2810 - OXIDANTE HAIR FARMACITY 30 VOL.X 75 ML V2',36,10,18,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('2811','2811 - AMPOLLA KERATINA HAIR FARMACITY X 10 ML',36,16,18,4);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3057','LIBBEY - PERCEPTION - COPA DE VINO 325 M',8,4,16,13);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('350D5UA#ABA','HP OMEN 15-EK1013 GAMING CORE',75,18,7,3);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('35506606883','RZR XP 1000 EXHAUST SYSTEMS',74,16,20,19);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3603','3603 - CRISA - HIELERA CAMELOT',8,12,20,11);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3623','3623 - LIBBEY - HURRICANE - COPA HURRICANE 696',8,17,19,19);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3779','3779 - LIBBEY - EMBASSY - COPA MARTINI 274 ML',8,5,6,1);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3807','3807 - LIBBEY - BELGIAN BEER - COPA CERVEZA 384ML',8,19,9,16);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3808','3808 - LIBBEY - BELGIAN BEER - COPA CERVEZA 473ML',8,16,18,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3848','3848 - PORTA COMANDAS P/ 16CLIPS 1.21MT',8,14,9,8);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3849','3849 - CRISA - JARRO FRASCO COUNTRY 488ML',8,10,4,12);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3857','3857 - CRISA - JARRA DECANTADORA 0.5 LT.',8,15,9,15);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3886','3886 - CRISA - MEXICO - JARRA 1LTS',8,18,16,2);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('3988','3988 - LIBBEY - TEARDROP - COPA SHERRY 89 ML',8,4,19,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('4036','4036 - LIBBEY BRILLIANCE COPA DIAMOND 430ML',8,10,5,15);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('4037','4037 - LIBBEY BRILLIANCE COPA DIAMOND 550ML',8,19,19,19);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('4078','4078 - LIBBEY BRILLIANCE COPA CERVEZA DIAMOND 500ML',8,10,6,17);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('40902','040902 - DEPILATORIA ROSTRO  ALOE VERA',7,11,16,17);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('427','427 - ACONDICIONADOR BIO-LISS BONMETIQUE PROFESSIONNEL X 350 ML',36,9,14,8);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('4390','4390 - CRISA - JARRO DE CAF? 142ML',8,2,17,7);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('4781240','PINZA M ROJO 30.5 CM',8,13,7,7);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('4781270','PINZA M VERDE 30.5 CM',8,15,20,1);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('4781640','PINZA M ROJO 40 CM',8,15,3,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('4781670','PINZA M VERDE 40 CM',8,11,18,4);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('527','527 - BEER GLASSES',8,18,4,9);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('5292','5292 - LIBBEY - IRISH COFFEE RECTO 251 ML',8,6,2,5);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('5298','5298 - LIBBEY - SCANDINAVIA MUG 444 ML',8,18,10,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('5541','5541 - LIBBEY - SELENE DECANTADOR 2 LTS 1700843',8,7,19,16);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('5671','5671 - CRISA -  SUPER CHOPP CERVEZA 1 LT.',8,4,10,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('5680','5680 - CRISA -  JARRO DE CAF? 251ML',8,1,7,16);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('5681','5681 - CRISA - CHOPP CERVEZA  375 LT.',8,19,2,2);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('60440239931','DISCO DE CORTE GRANO 46, 115 X 1.2 X 22.23 MM',23,7,12,14);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('620440','620440 - NATURALOE SHAMPOO NEUTRO HIDRATA Y BRILLO',7,7,13,15);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('661-17676','661-17676 - CAMERA, IPHONE 12 MINI',46,12,6,2);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('661-53','661-53 - COLORACION CREMA ALGALINE HYDRO GLOSS TECHNOLOGY 5',36,4,2,7);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('6700','6700 - BRAVO - VASO CERVEZA 325ML',8,2,4,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('6714','6714 - FONDO GRUESO - VASO WHISKY 328ML',8,1,11,10);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('7015435','LED HO UFO 80W 6500K',60,5,8,4);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('702003742','702003742 - FUNDA GEAR4 PICCADILLY PARA IPHONE 11 - BLACK',46,10,12,4);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('70355','70355 - LIBBEY - HERITAGE BOTELLA 222ML',8,16,16,5);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('712-1','712-1 - COLORACI?N CREMA KIT ESTEREOCOLOR  1 NEGRO V3',36,7,12,4);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('712-1100','712-1100 - COLORACI?N CREMA KIT ESTEREOCOLOR 1100 GRIS PLATA',36,13,6,20);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('712-3','712-3 - COLORACI?N CREMA KIT ESTEREOCOLOR  3 CASTA?O OSCURO V3',36,17,15,1);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('712-4','712-4 - COLORACI?N CREMA KIT ESTEREOCOLOR  4 CASTA?O V3',36,13,3,17);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('712-5','712-5 - COLORACI?N CREMA KIT ESTEREOCO',36,3,13,11);
INSERT INTO maestro_producto_2 (`producto_id`,`descripcion_producto`,`cliente_id`,`largo_cm`,`ancho_cm`,`alto_cm`) VALUES ('712-54','712-54 - COLORACI?N CREMA KIT ESTEREOCOLOR  54  CASTA?O CLARO AVELLANA V3',36,3,17,12);

INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('*FC A 00016-00029548**','ARROW ARGENTINA','SSCMRRN001PDAA3','SSCMRRN001PDAA3',10,'AG-H-13-20','OSCAR ARCE');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('00001-00000058FB','ALISHOP','350D5UA#ABA','HP OMEN 15-EK1013 GAMING CORE',1,'HV-B-02-08','PATRICIA CELIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('00001-00001136','EXOSOUND','ATH-M50XMO','AURICULAR -EDICIÓN LIMITADA',1,'AG-G-04-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('00001-00001142','EXOSOUND','AT-LP60XBT-BK','GIRADISCOS BLUETOOTH',1,'AG-F-14-10','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('00001-00001144','EXOSOUND','ATH-SPORT60BTBK','AURICULAR PARA DEPORTES',1,'AG-F-06-10','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('00001-00001152','EXOSOUND','ZEN Q','ANTELOPE AUDIO ZEN Q SC',1,'AG-G-22-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('00001-00001154','EXOSOUND','AT-LP60X-BK','AUDIO-TECHNICA AT-LP60X-BK',1,'AG-G-07-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('00001-00001155','EXOSOUND','EDGE SOLO','ANTELOPE AUDIO EDGE SOLO',1,'AG-G-04-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003817','NEORED - PROVAR','929414','2032 BP2',228,'AG-H-19-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003818','NEORED - PROVAR','ET000000231','SCOTCH 770 AZUL X20M (45839)',100,'AG-H-02-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003819','NEORED - PROVAR','TE073216117','CINTA DE EMPAQUE 301 / 48MMX50M TRANSPARENTE',36,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003820','NEORED - PROVAR','HB004459218','3M CINTA VHB 4910, 19MM X 5M',12,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003821','NEORED - PROVAR','ET000000017','ET000000017-TEMFLEX 1550 NEGRO X 20 MTS.COD NEO AAA58068',2950,'AG-R-06-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003822','NEORED - PROVAR','ET000000017','ET000000017-TEMFLEX 1550 NEGRO X 20 MTS.COD NEO AAA58068',2650,'AG-R-06-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003823','NEORED - PROVAR','ET000000017','ET000000017-TEMFLEX 1550 NEGRO X 20 MTS.COD NEO AAA58068',1000,'AG-R-06-10','MARTIN MORENO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003824','NEORED - PROVAR','ET000000017','ET000000017-TEMFLEX 1550 NEGRO X 20 MTS.COD NEO AAA58068',500,'AG-R-06-10','MARTIN MORENO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003825','NEORED - PROVAR','ET000000017','ET000000017-TEMFLEX 1550 NEGRO X 20 MTS.COD NEO AAA58068',2000,'AG-R-06-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003826','NEORED - PROVAR','ET000000017','ET000000017-TEMFLEX 1550 NEGRO X 20 MTS.COD NEO AAA58068',4850,'AG-R-06-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003827','NEORED - PROVAR','EE002000010','SCOTCH 2228 RUBBER MASTIC 50,8 MM. X 3 M',10,'AG-H-22-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003828','NEORED - PROVAR','ET000000082','3M-1550 NEGRA X10M',1000,'AG-R-10-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003829','NEORED - PROVAR','TE012700189','3903 FERRETERIA NEGRO',24,'AG-H-18-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003830','NEORED - PROVAR','60440239931','DISCO DE CORTE GRANO 46, 115 X 1.2 X 22.23 MM',100,'AG-H-01-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003831','NEORED - PROVAR','60440239931','DISCO DE CORTE GRANO 46, 115 X 1.2 X 22.23 MM',100,'AG-H-01-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003832','NEORED - PROVAR','ET000000025','ESCOTCH 770 NEGRA X10M (45811)',200,'AG-R-10-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003833','NEORED - PROVAR','ET000000082','3M-1550 NEGRA X10M',700,'AG-R-10-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003834','NEORED - PROVAR','ET000000025','ESCOTCH 770 NEGRA X10M (45811)',400,'AG-R-10-10','MARTIN MORENO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003835','NEORED - PROVAR','ET000000025','ESCOTCH 770 NEGRA X10M (45811)',500,'AG-R-10-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003836','NEORED - PROVAR','ET000000025','ESCOTCH 770 NEGRA X10M (45811)',300,'AG-R-10-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003837','NEORED - PROVAR','ET000000025','ESCOTCH 770 NEGRA X10M (45811)',200,'AG-R-10-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003838','NEORED - PROVAR','ET000000074','3M - 1550 BLANCA X 20M 18MMX20M CAX 100RO',100,'AG-S-16-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003839','NEORED - PROVAR','ET000000082','3M-1550 NEGRA X10M',300,'AG-R-10-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003840','NEORED - PROVAR','ET000000207','CINTA PVC SCOTCH 770 BLANCA 19MMX10M',400,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003841','NEORED - PROVAR','ET000000207','CINTA PVC SCOTCH 770 BLANCA 19MMX10M',100,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003842','NEORED - PROVAR','ET000000207','CINTA PVC SCOTCH 770 BLANCA 19MMX10M',200,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003843','NEORED - PROVAR','ET000000207','CINTA PVC SCOTCH 770 BLANCA 19MMX10M',10,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003844','NEORED - PROVAR','ET000000207','CINTA PVC SCOTCH 770 BLANCA 19MMX10M',200,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003845','NEORED - PROVAR','ET000000223','SCOTCH 770 AMARILLA X20M (45838)',100,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003846','NEORED - PROVAR','ET000000231','SCOTCH 770 AZUL X20M (45839)',100,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003847','NEORED - PROVAR','ET000000306','CINTA PVC SCOTCH 770 GRIS',100,'AG-R-12-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003848','NEORED - PROVAR','ET000000249','SCOTCH 770  X20M BLANCA 19MMX20M',100,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003849','NEORED - PROVAR','ET000000249','SCOTCH 770  X20M BLANCA 19MMX20M',100,'AG-R-14-10','MARTIN MORENO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003850','NEORED - PROVAR','ET000000306','CINTA PVC SCOTCH 770 GRIS',100,'AG-R-13-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003851','NEORED - PROVAR','H0001579970','CINTA DE GOMA 19 MM X 3',160,'AG-R-14-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003853','NEORED - PROVAR','362-BH','SECCIONADOR AUTODESCONECTADOR PORTAFUSIBLE DE 27KV, 100A, 8KA, DE 125KVBIL (LARGO) CON SOPORTE DE INSTALACIÓN',69,'AG-H-15-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003854','NEORED - PROVAR','279-BH','AC15600',3,'AG-R-19-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003855','NEORED - PROVAR','405-BH','IF N63',200,'AG-R-19-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003856','NEORED - PROVAR','7017314','LED VALUE CLASSIC A60 9W/865 220V E27 G3',100,'AG-J-24-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003857','NEORED - PROVAR','80012020386','CINTA DE VIDRIO N27 19MM X 33M',10,'AG-R-15-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003858','NEORED - PROVAR','TE073216117','CINTA DE EMPAQUE 301 / 48MMX50M TRANSPARENTE',36,'AG-R-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003859','NEORED - PROVAR','TE073216117','CINTA DE EMPAQUE 301 / 48MMX50M TRANSPARENTE',100,'AG-R-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003860','NEORED - PROVAR','TE012700197','3903 FERRETERIA GRIS',24,'AG-H-19-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003861','NEORED - PROVAR','TE073216117','CINTA DE EMPAQUE 301 / 48MMX50M TRANSPARENTE',8,'AG-R-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003862','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',400,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003863','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',100,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003864','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',100,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003865','NEORED - PROVAR','TE002000004','SUPER 33+ 19MM X 20MTS',100,'AG-R-15-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003866','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',200,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003867','NEORED - PROVAR','TE002000004','SUPER 33+ 19MM X 20MTS',100,'AG-R-15-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003868','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',200,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003869','NEORED - PROVAR','H0001579970','CINTA DE GOMA 19 MM X 3',160,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003870','NEORED - PROVAR','TE002000004','SUPER 33+ 19MM X 20MTS',100,'AG-R-15-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003871','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',100,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003872','NEORED - PROVAR','80050049008','RO. VINILMASTIC 2210, 0102 X 3.05 M',10,'AG-R-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003873','NEORED - PROVAR','60440239931','DISCO DE CORTE GRANO 46, 115 X 1.2 X 22.23 MM',100,'AG-R-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003874','NEORED - PROVAR','HB004459226','3M CINTA  VHB 4950, 19MM X 5M',12,'AG-R-15-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003875','NEORED - PROVAR','HB004459226','3M CINTA  VHB 4950, 19MM X 5M',24,'AG-R-15-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003876','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',100,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003877','NEORED - PROVAR','HB004459226','3M CINTA  VHB 4950, 19MM X 5M',24,'AG-R-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003878','NEORED - PROVAR','HB004459226','3M CINTA  VHB 4950, 19MM X 5M',12,'AG-R-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003879','NEORED - PROVAR','TE012700189','3903 FERRETERIA NEGRO',24,'AG-H-18-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003880','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',100,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003881','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',100,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003882','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',200,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003883','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',100,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003884','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',100,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003886','NEORED - PROVAR','EE002001265','EE002001265-SCOTCH 43+X 5 MTS.COD NEO AAA62549',200,'AG-R-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003887','NEORED - PROVAR','ET000000207','CINTA PVC SCOTCH 770 BLANCA 19MMX10M',400,'AG-R-11-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003888','NEORED - PROVAR','ET000000223','SCOTCH 770 AMARILLA X20M (45838)',100,'AG-R-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003889','NEORED - PROVAR','ET000000223','SCOTCH 770 AMARILLA X20M (45838)',100,'AG-R-11-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003890','NEORED - PROVAR','ET000000231','SCOTCH 770 AZUL X20M (45839)',100,'AG-R-11-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003892','NEORED - PROVAR','80610922884','CINTA 2242 AUTOSOLDABLE SIN SEPARADOR 19MMX4,57M',24,'AG-H-18-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003893','NEORED - PROVAR','TE031211200','3M ESPUMA DE POLIURETANO LATA X 250ML - SPRAY',24,'AG-R-15-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003895','NEORED - PROVAR','60440239931','DISCO DE CORTE GRANO 46, 115 X 1.2 X 22.23 MM',400,'AG-R-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003896','NEORED - PROVAR','60440239931','DISCO DE CORTE GRANO 46, 115 X 1.2 X 22.23 MM',1000,'AG-R-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00003897','NEORED - PROVAR','60440239931','DISCO DE CORTE GRANO 46, 115 X 1.2 X 22.23 MM',100,'AG-R-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018983','GRIFERÍA COBRA','6714','FONDO GRUESO - VASO WHISKY 328ML',3,'AG-I-27-20','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018985','GRIFERÍA COBRA','4781240','PINZA M ROJO 30.5 CM',1,'AG-I-29-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018986','GRIFERÍA COBRA','15714','LIBBEY - ENDEAVOR - VASO BEVERAGE 414 ML',10,'AG-I-13-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018987','GRIFERÍA COBRA','7505','LIBBEY - VINA - COPA VINO BALLOON 540 ML',4,'AG-I-42-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018988','GRIFERÍA COBRA','37799','LIBBEY - Z STEM - COPA MARTINI 274 ML',8,'AG-I-06-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018989','GRIFERÍA COBRA','6129','CRISA - CAVANA - VASO REFRESCO 473ML',20,'AG-I-44-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018990','GRIFERÍA COBRA','15713','LIBBEY - ENDEAVOR - VASO BEVERAGE 355 ML',3,'AG-I-08-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018991','GRIFERÍA COBRA','15713','LIBBEY - ENDEAVOR - VASO BEVERAGE 355 ML',10,'AG-I-08-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018993','GRIFERÍA COBRA','5541','LIBBEY - SELENE DECANTADOR 2 LTS 1700843',5,'AG-I-35-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018996','GRIFERÍA COBRA','5137','LIBBEY - MIXING GLASS 592 ML',2,'AG-I-48-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018997','GRIFERÍA COBRA','5541','LIBBEY - SELENE DECANTADOR 2 LTS 1700843',1,'AG-I-35-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018998','GRIFERÍA COBRA','15238','LIBBEY - GIBRALTAR - VASO BEVERAGE 355 M',6,'AG-I-02-10','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00018999','GRIFERÍA COBRA','15238','LIBBEY - GIBRALTAR - VASO BEVERAGE 355 M',30,'AG-I-03-20','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019000','GRIFERÍA COBRA','7505','LIBBEY - VINA - COPA VINO BALLOON 540 ML',6,'AG-I-07-20','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019001','GRIFERÍA COBRA','3623','LIBBEY - HURRICANE - COPA HURRICANE 696',1,'AG-I-06-10','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019002','GRIFERÍA COBRA','770','TEMPO - TAZA CAFE 300ML',2,'AG-I-10-10','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019003','GRIFERÍA COBRA','6129','CRISA - CAVANA - VASO REFRESCO 473ML',22,'AG-I-44-10','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019006','GRIFERÍA COBRA','7504','LIBBEY - VINA - COPA VINO ALTA 547 ML',20,'AG-I-10-10','JAVIER MORENO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019007','GRIFERÍA COBRA','3825','LIBBEY - CATALINA - COPA POSTRE DESSERT',3,'AG-I-36-10','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019008','GRIFERÍA COBRA','15238','LIBBEY - GIBRALTAR - VASO BEVERAGE 355 M',10,'AG-I-03-20','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019009','GRIFERÍA COBRA','3623','LIBBEY - HURRICANE - COPA HURRICANE 696',2,'AG-I-06-10','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019010','GRIFERÍA COBRA','5680','CRISA -  JARRO DE CAFÉ 251ML',10,'AG-I-50-20','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019011','GRIFERÍA COBRA','5137','LIBBEY - MIXING GLASS 592 ML',5,'AG-I-48-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019012','GRIFERÍA COBRA','2251','EXTRA LARGE BRANDY GLOBET 7.5 / 256 OZ',2,'AG-H-50-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019014','GRIFERÍA COBRA','7504','LIBBEY - VINA - COPA VINO ALTA 547 ML',20,'AG-I-10-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019016','GRIFERÍA COBRA','3857','CRISA - JARRA DECANTADORA 0.5 LT.',3,'AG-I-04-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019017','GRIFERÍA COBRA','15238','LIBBEY - GIBRALTAR - VASO BEVERAGE 355 M',10,'AG-I-03-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019019','GRIFERÍA COBRA','3886','CRISA - MEXICO - JARRA 1LTS',10,'AG-I-17-20','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019020','GRIFERÍA COBRA','15713','LIBBEY - ENDEAVOR - VASO BEVERAGE 355 ML',14,'AG-I-08-20','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019021','GRIFERÍA COBRA','3096','LIBBEY - PERCEPTION - COPA CHAMPAGNE FLA',5,'AG-I-09-10','ARUIZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019024','GRIFERÍA COBRA','3011','LIBBEY - PERCEPTION - COPA DE AGUA 414 M',22,'AG-I-16-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019027','GRIFERÍA COBRA','3857','CRISA - JARRA DECANTADORA 0.5 LT.',2,'AG-I-04-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019028','GRIFERÍA COBRA','3096','LIBBEY - PERCEPTION - COPA CHAMPAGNE FLA',4,'AG-I-09-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019030','GRIFERÍA COBRA','7504','LIBBEY - VINA - COPA VINO ALTA 547 ML',8,'AG-I-10-20','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019031','GRIFERÍA COBRA','3886','CRISA - MEXICO - JARRA 1LTS',16,'AG-I-17-20','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019032','GRIFERÍA COBRA','3996','LIBBEY - TEARDROP - COPA CHAMPAGNE FLAUT',5,'AG-I-20-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019033','GRIFERÍA COBRA','11010812','STEELITE - PLATO MADISON BLANCO 27 CM.',2,'AG-I-50-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019036','GRIFERÍA COBRA','3096','LIBBEY - PERCEPTION - COPA CHAMPAGNE FLA',20,'AG-I-09-10','MARTIN MORENO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019042','GRIFERÍA COBRA','11330521','STEELITE - CRAFT PLATO FREESTYLE TERRACOTTA 25CM',1,'AG-I-17-10','MARTIN MORENO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019043','GRIFERÍA COBRA','5298','LIBBEY - SCANDINAVIA MUG 444 ML',2,'AG-I-24-10','MARTIN MORENO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019046','GRIFERÍA COBRA','6622','CRISA - FONDO GRUESO - VASO JUGO 230 ML',8,'AG-I-10-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019047','GRIFERÍA COBRA','3886','CRISA - MEXICO - JARRA 1LTS',10,'AG-I-17-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019049','GRIFERÍA COBRA','47144','CUCHARA DE HELADO CREMA 20MM',3,'AG-I-07-10','EBER PRIETO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019053','GRIFERÍA COBRA','54047','UNI - MAROCCO VASO SODA FACETADO 140ML',4,'AG-I-16-10','MATIAS MURO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019055','GRIFERÍA COBRA','54047','UNI - MAROCCO VASO SODA FACETADO 140ML',20,'AG-I-16-10','MATIAS MURO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019057','GRIFERÍA COBRA','CP-65','CARRO PLEGABLE CAPACIDAD 65 KG',1,'AG-I-26-10','MATIAS MURO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019058','GRIFERÍA COBRA','3623','LIBBEY - HURRICANE - COPA HURRICANE 696',10,'AG-I-06-10','MATIAS MURO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('0001-00019059','GRIFERÍA COBRA','5671','CRISA -  SUPER CHOPP CERVEZA 1 LT.',12,'AG-I-20-10','MATIAS MURO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135631R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',20,'AG-M-11-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135632R','ALIC SA','LAM8617','LAMPARA INCANDESC. ANTIQUE ST64 24W E27 230V',40,'AG-L-12-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135633R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',40,'AG-M-11-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135636R','ALIC SA','ART0143','LUMINARIA VINTAGE JAULA CHICA MAX. 40W NEGRO',8,'AG-L-25-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135637R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',20,'AG-M-11-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135641R','ALIC SA','LAM8937','LAMPARA DE LEDS (230V) T115 38EC LD',10,'AG-M-26-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135642R','ALIC SA','LAM8937','LAMPARA DE LEDS (230V) T115 38EC LD',40,'AG-M-26-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135648R','ALIC SA','LAM8925','LAMPARA DE LEDS (230V) A60 9EC LD',500,'AG-M-46-10','MATIAS LEZCANO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135695R','ALIC SA','LAM9462','LAMPARA GOTA LED STYLE 2W ROJA E27',40,'AG-L-18-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135696R','ALIC SA','LAM9421','LAMPARA VELITA LED STYLE 4W CLARA DIMM E14 LC',50,'AG-M-49-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135697R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',200,'AG-M-12-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135698R','ALIC SA','LAM8937','LAMPARA DE LEDS (230V) T115 38EC LD',24,'AG-M-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135699R','ALIC SA','COB0038','PANTALLA REFLECTORA P/LAMP DE LED 38W',100,'AG-N-40-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135700R','ALIC SA','LAM8617','LAMPARA INCANDESC. ANTIQUE ST64 24W E27 230V',200,'AG-L-12-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135701R','ALIC SA','LAM9502','LAMPARA ST64 LED ANTIQUE 4W DIMM LC  AMBAR',1000,'AG-M-19-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135702R','ALIC SA','LAM9304','L MPARA LED ALTA POTENCIA 50W GROWING E27',1,'AG-M-10-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135705R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',300,'AG-M-03-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135706R','ALIC SA','LAM9410','LAMPARA GOTA LED STYLE 4W CLARA LD',400,'AG-M-19-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135707R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',500,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135708R','ALIC SA','LNA0400','GUIRNALDA LUMINOSA SL10 C/10 PORTALAMPARAS E27',16,'AG-L-38-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135709R','ALIC SA','LAM9425','LAMPARA A60 LED STYLE 6W CLARA DIMM LC',50,'AG-L-17-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135711R','ALIC SA','PRO2400','PROYECTOR DE LED SL-SSP 300W LD 25 FORZA',8,'AG-N-49-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135712R','ALIC SA','LAM8882','LAMPARA GOTA ECO LED 7W LUZ CALIDA E27',100,'AG-M-09-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135713R','ALIC SA','LNA0400','GUIRNALDA LUMINOSA SL10 C/10 PORTALAMPARAS E27',12,'AG-L-38-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135714R','ALIC SA','TUB3106','TUBO DE LEDS T8 18W 120CM G13 LC',25,'AG-M-36-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135715R','ALIC SA','LNA0400','GUIRNALDA LUMINOSA SL10 C/10 PORTALAMPARAS E27',16,'AG-L-38-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135716R','ALIC SA','LAM8612','LAMPARA INCANDESC. ANTIQUE ST58 24W E27 230V',35,'AG-M-25-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135717R','ALIC SA','LAM9425','LAMPARA A60 LED STYLE 6W CLARA DIMM LC',50,'AG-L-17-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135718R','ALIC SA','LAM9425','LAMPARA A60 LED STYLE 6W CLARA DIMM LC',50,'AG-L-17-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135719R','ALIC SA','LAM9425','LAMPARA A60 LED STYLE 6W CLARA DIMM LC',50,'AG-L-17-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135720R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',20,'AG-M-11-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135721R','ALIC SA','LAM9425','LAMPARA A60 LED STYLE 6W CLARA DIMM LC',50,'AG-L-17-20','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135722R','ALIC SA','LAM8617','LAMPARA INCANDESC. ANTIQUE ST64 24W E27 230V',40,'AG-L-12-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135723R','ALIC SA','LAM9425','LAMPARA A60 LED STYLE 6W CLARA DIMM LC',50,'AG-L-17-20','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135724R','ALIC SA','LAM8894','LAMPARA VELITA ECO LED 7W LUZ CALIDA E27',200,'AG-L-15-20','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135725R','ALIC SA','LAM9411','LAMPARA GOTA LED STYLE 4W CLARA LC',100,'AG-N-15-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135726R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',40,'AG-M-11-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135727R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',40,'AG-M-11-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135728R','ALIC SA','ART4344','PANEL LED PLAFON CUADRADO 18W LD 225X225MM BLANCO',20,'AG-L-19-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135729R','ALIC SA','LAM8881','LAMPARA GOTA ECO LED 5W LUZ DIA E27',400,'AG-M-55-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135730R','ALIC SA','LNA0400','GUIRNALDA LUMINOSA SL10 C/10 PORTALAMPARAS E27',8,'AG-L-38-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135732R','ALIC SA','PRO0015','PROYECTOR DE LED SMD SL-FL 30W LD C/SENSOR',1,'AG-N-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135733R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',40,'AG-M-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135738R','ALIC SA','ART4615','PANEL LED EMBUTIDO REDONDO 18W LD D225MM FORZA',100,'AG-L-34-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135739R','ALIC SA','LAM9460','LAMPARA G45 LED ANTIQUE 2W LC AMBAR',200,'AG-M-34-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135740R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',300,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135741R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',300,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135742R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',150,'AG-M-12-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135743R','ALIC SA','BAT0112','BATERIA LI-ION PARA LUZ DE EMERGENCIA DE 100 LEDS',20,'AG-O-53-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135744R','ALIC SA','SMW0510','LÁMPARA LEDS P16 5EC105 DIMM LC',50,'AG-N-39-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135745R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',500,'AG-M-03-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135746R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',40,'AG-M-11-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135747R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',200,'AG-M-03-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135748R','ALIC SA','LAM8937','LAMPARA DE LEDS (230V) T115 38EC LD',4,'AG-M-26-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135750R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',800,'AG-M-03-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135751R','ALIC SA','LEM1101','LUZ DE EMERGENCIA 30 LEDS - 1 BATERIA DE LI-ION',240,'AG-L-18-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135752R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',150,'AG-M-11-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135753R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',80,'AG-M-11-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135754R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',300,'AG-M-03-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135755R','ALIC SA','SMW0200','ENCHUFE INTELIGENTE WIFI 10A C/MEDIDOR',36,'AG-O-27-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135756R','ALIC SA','TUB3014','TUBO DE LEDS T8 ECO 36W R17D LUZ DIA 240 CM',100,'AG-L-63-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135757R','ALIC SA','LAM9500','LAMPARA ST64 LED ANTIQUE 4W LC  AMBAR',40,'AG-M-36-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135758R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',100,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135759R','ALIC SA','LAM9419','LAMPARA VELITA LED STYLE 4W CLARA E14 LC',100,'AG-L-40-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135760R','ALIC SA','LIS1003','LUMINARIA ESTANCA PARA 2 TUBOS T8 LED DE 120CM',36,'AG-L-01-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135761R','ALIC SA','LAM8881','LAMPARA GOTA ECO LED 5W LUZ DIA E27',300,'AG-M-55-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135762R','ALIC SA','LAM6897','LAMPARA T120 HI POWER LED 45W LD E40 FORZA',45,'AG-P-10-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135764R','ALIC SA','LAM8612','LAMPARA INCANDESC. ANTIQUE ST58 24W E27 230V',100,'AG-M-25-20','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135765R','ALIC SA','LAM9505','LAMPARA G125 LED ANTIQUE 4W UC  SMOKED',20,'AG-L-24-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135766R','ALIC SA','LAM9462','LAMPARA GOTA LED STYLE 2W ROJA E27',200,'AG-L-18-20','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135767R','ALIC SA','LAM8937','LAMPARA DE LEDS (230V) T115 38EC LD',24,'AG-M-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135768R','ALIC SA','TUB3109','TUBO DE LEDS T8 22W 150CM G13 LC',200,'AG-N-56-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135769R','ALIC SA','TUB3111','TUBO DE LEDS T8 22W 150CM G13 LD',2000,'AG-N-16-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135770R','ALIC SA','LNA0400','GUIRNALDA LUMINOSA SL10 C/10 PORTALAMPARAS E27',12,'AG-L-38-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135771R','ALIC SA','LNA0400','GUIRNALDA LUMINOSA SL10 C/10 PORTALAMPARAS E27',8,'AG-L-38-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135772R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',300,'AG-M-03-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135773R','ALIC SA','LAM8612','LAMPARA INCANDESC. ANTIQUE ST58 24W E27 230V',60,'AG-M-25-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135774R','ALIC SA','LAM8924','LAMPARA DE LEDS (230V) A60 9EC LC',300,'AG-L-13-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135775R','ALIC SA','TUB3111','TUBO DE LEDS T8 22W 150CM G13 LD',175,'AG-N-16-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135776R','ALIC SA','TUB3109','TUBO DE LEDS T8 22W 150CM G13 LC',93,'AG-N-56-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135777R','ALIC SA','LAM8617','LAMPARA INCANDESC. ANTIQUE ST64 24W E27 230V',20,'AG-L-12-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135778R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',306,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135779R','ALIC SA','TUB3111','TUBO DE LEDS T8 22W 150CM G13 LD',21,'AG-N-16-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135780R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',100,'AG-M-12-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135781R','ALIC SA','TUB3111','TUBO DE LEDS T8 22W 150CM G13 LD',375,'AG-Q-01-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135782R','ALIC SA','LAM8888','LAMPARA VELITA ECO LED 7W LUZ CALIDA E14',100,'AG-M-02-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135783R','ALIC SA','TER2040','LLAVE TERMOMAGNETICA 2 X 40A',24,'AG-N-17-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135784R','ALIC SA','LAM9410','LAMPARA GOTA LED STYLE 4W CLARA LD',100,'AG-M-19-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135785R','ALIC SA','LNA0400','GUIRNALDA LUMINOSA SL10 C/10 PORTALAMPARAS E27',76,'AG-L-38-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135786R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',100,'AG-M-12-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135787R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',200,'AG-M-03-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135788R','ALIC SA','LAM8613','LAMPARA INCANDESC. ANTIQUE G95 24W E27 230V',44,'AG-M-27-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135789R','ALIC SA','LAM8617','LAMPARA INCANDESC. ANTIQUE ST64 24W E27 230V',20,'AG-L-12-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135790R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',500,'AG-M-12-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135791R','ALIC SA','PRO2400','PROYECTOR DE LED SL-SSP 300W LD 25 FORZA',1,'AG-N-49-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135792R','ALIC SA','INV0019','INVERTER ON-GRID 3000W PARA PANEL SOLAR',1,'AG-O-48-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135793R','ALIC SA','LAM8612','LAMPARA INCANDESC. ANTIQUE ST58 24W E27 230V',40,'AG-M-25-20','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135794R','ALIC SA','SMW0100','CONTROL REMOTO UNIVERSAL IR-WIFI 360 GRADOS FK-UFO-R4',20,'AG-O-03-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135795R','ALIC SA','SMW0100','CONTROL REMOTO UNIVERSAL IR-WIFI 360 GRADOS FK-UFO-R4',20,'AG-O-03-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135796R','ALIC SA','LIS1003','LUMINARIA ESTANCA PARA 2 TUBOS T8 LED DE 120CM',24,'AG-L-01-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135797R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',100,'AG-M-03-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135799R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',150,'AG-M-12-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135800R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',40,'AG-M-11-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135801R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',50,'AG-M-12-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135802R','ALIC SA','TUB3108','TUBO DE LEDS T8 18W 120CM G13 LD',75,'AG-N-18-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135803R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',500,'AG-M-02-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135804R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',200,'AG-M-02-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135806R','ALIC SA','LAM8888','LAMPARA VELITA ECO LED 7W LUZ CALIDA E14',200,'AG-M-02-20','NAHUEL MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135808R','ALIC SA','TUB3102','TUBO DE LEDS T8 9W 60CM G13 LD',50,'AG-N-07-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135809R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',500,'AG-M-03-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135810R','ALIC SA','LAM9462','LAMPARA GOTA LED STYLE 2W ROJA E27',50,'AG-L-18-20','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135811R','ALIC SA','LAM8882','LAMPARA GOTA ECO LED 7W LUZ CALIDA E27',100,'AG-M-09-20','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135812R','ALIC SA','LAM8302','LAMP INC FANT PERF E14 230V 15W SATIN',100,'AG-M-27-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135813R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',300,'AG-M-03-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135814R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',500,'AG-M-12-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135815R','ALIC SA','LAM8882','LAMPARA GOTA ECO LED 7W LUZ CALIDA E27',100,'AG-M-09-20','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135816R','ALIC SA','LIS1003','LUMINARIA ESTANCA PARA 2 TUBOS T8 LED DE 120CM',24,'AG-L-01-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135817R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',400,'AG-M-02-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135820R','ALIC SA','TER2032','LLAVE TERMOMAGNETICA 2 X 32A',54,'AG-N-03-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135821R','ALIC SA','LAM9460','LAMPARA G45 LED ANTIQUE 2W LC AMBAR',200,'AG-O-14-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135822R','ALIC SA','LAM8937','LAMPARA DE LEDS (230V) T115 38EC LD',28,'AG-M-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135823R','ALIC SA','LAM9414','LAMPARA VELLITA LED STYLE 4W CLARA LD',12,'AG-M-21-20','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135824R','ALIC SA','LNA0400','GUIRNALDA LUMINOSA SL10 C/10 PORTALAMPARAS E27',20,'AG-L-38-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135825R','ALIC SA','LAM8934','LAMPARA DE LEDS (230V) T100 28EC LC',30,'AG-M-22-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135826R','ALIC SA','LAM9462','LAMPARA GOTA LED STYLE 2W ROJA E27',50,'AG-L-18-20','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135827R','ALIC SA','LAM9505','LAMPARA G125 LED ANTIQUE 4W UC  SMOKED',10,'AG-L-24-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135828R','ALIC SA','ART0143','LUMINARIA VINTAGE JAULA CHICA MAX. 40W NEGRO',8,'AG-L-25-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135829R','ALIC SA','LNA0400','GUIRNALDA LUMINOSA SL10 C/10 PORTALAMPARAS E27',24,'AG-L-38-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135830R','ALIC SA','LAM9509','LAMPARA G95 LED ANTIQUE 4W UC  SMOKED',40,'AG-M-22-20','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135831R','ALIC SA','TUB3106','TUBO DE LEDS T8 18W 120CM G13 LC',25,'AG-M-36-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135832R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',80,'AG-M-11-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135833R','ALIC SA','LAM8929','L MPARA DE LEDS (230V) A70 14EC LD',200,'AG-M-53-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135834R','ALIC SA','KIT0003','KIT DE CONVERSIÓN A PLAFÓN 1200X300MM.',50,'AG-M-12-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135835R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',310,'AG-M-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135836R','ALIC SA','TUB3102','TUBO DE LEDS T8 9W 60CM G13 LD',1475,'AG-N-07-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135837R','ALIC SA','PRO2801','PROYECTOR DE LED SL-SP 600W 60º LD FORZA',6,'AG-N-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135838R','ALIC SA','LAM9462','LAMPARA GOTA LED STYLE 2W ROJA E27',100,'AG-L-18-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135839R','ALIC SA','TUB3007','TUBO DE LEDS T8 ECO 18W G13 LUZ NEUTRA 120 CM',200,'AG-N-54-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135840R','ALIC SA','LAM8302','LAMP INC FANT PERF E14 230V 15W SATIN',1000,'AG-M-27-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135841R','ALIC SA','ART0143','LUMINARIA VINTAGE JAULA CHICA MAX. 40W NEGRO',8,'AG-L-25-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135842R','ALIC SA','LAM8928','L MPARA DE LEDS (230V) A70 14EC LC',100,'AG-M-06-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135843R','ALIC SA','CON0012','CONTOLADOR PARA PANELES DE LEDS DE 12W',20,'AG-N-43-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135844R','ALIC SA','TUB9501','TUBO FLUORESCENTE GREMICIDA UV-C T8 15W G13',25,'AG-N-09-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135845R','ALIC SA','SMW0100','CONTROL REMOTO UNIVERSAL IR-WIFI 360 GRADOS FK-UFO-R4',20,'AG-O-03-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135846R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',500,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135848R','ALIC SA','LAM8617','LAMPARA INCANDESC. ANTIQUE ST64 24W E27 230V',40,'AG-L-12-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135849R','ALIC SA','LAM9304','L MPARA LED ALTA POTENCIA 50W GROWING E27',12,'AG-M-10-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135850R','ALIC SA','LAM8934','LAMPARA DE LEDS (230V) T100 28EC LC',80,'AG-M-22-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135851R','ALIC SA','LAM8933','LAMPARA DE LEDS (230V) T80 18EC LD',6,'AG-M-40-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135852R','ALIC SA','PRO0013','PROYECTOR DE LED SMD SL-FL 20W LD C/SENSOR',160,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135853R','ALIC SA','PRO2602','PROYECTOR EXTERIOR A LED SL-FL 20W L/C',31,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135854R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',400,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135855R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',50,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135856R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',10,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135857R','ALIC SA','PRO2602','PROYECTOR EXTERIOR A LED SL-FL 20W L/C',120,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135858R','ALIC SA','PRO0011','PROYECTOR DE LED SMD SL-FL 10W LD C/SENSOR',40,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135859R','ALIC SA','PRO0015','PROYECTOR DE LED SMD SL-FL 30W LD C/SENSOR',40,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135860R','ALIC SA','LAM9460','LAMPARA G45 LED ANTIQUE 2W LC AMBAR',50,'AG-O-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135861R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',40,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135862R','ALIC SA','LAM9417','LAMPARA VELITA LED STYLE 4W CLARA DIMM LC',50,'AG-M-26-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135863R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',15,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135864R','ALIC SA','PRO0015','PROYECTOR DE LED SMD SL-FL 30W LD C/SENSOR',20,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135865R','ALIC SA','TOR9433','TORTUGA LED OVAL LISA 20W NEGRA 6500K',2,'AG-O-08-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135866R','ALIC SA','LIS1003','LUMINARIA ESTANCA PARA 2 TUBOS T8 LED DE 120CM',48,'AG-L-01-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135867R','ALIC SA','LAM8937','LAMPARA DE LEDS (230V) T115 38EC LD',24,'AG-M-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135868R','ALIC SA','PRO2604','PROYECTOR EXTERIOR A LED SL-FL 30W LUZ CALIDA',40,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135869R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',20,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135870R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',400,'AG-M-02-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135873R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',200,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135874R','ALIC SA','PRO0011','PROYECTOR DE LED SMD SL-FL 10W LD C/SENSOR',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135875R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',80,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135876R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',20,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135877R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',120,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135878R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',100,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135879R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',10,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135880R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',10,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135881R','ALIC SA','LAM9304','L MPARA LED ALTA POTENCIA 50W GROWING E27',12,'AG-M-10-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135882R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',80,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135883R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135884R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',80,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135885R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135886R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',60,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135887R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135888R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',20,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135889R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',120,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135890R','ALIC SA','TUB3102','TUBO DE LEDS T8 9W 60CM G13 LD',75,'AG-N-07-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135891R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',80,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135892R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',400,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135893R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',5,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135894R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',60,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135895R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',10,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135896R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',35,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135897R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135898R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',5,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135899R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135900R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',200,'AG-M-02-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135901R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',5,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135902R','ALIC SA','TUB3014','TUBO DE LEDS T8 ECO 36W R17D LUZ DIA 240 CM',50,'AG-L-64-05','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135903R','ALIC SA','TUB3108','TUBO DE LEDS T8 18W 120CM G13 LD',550,'AG-N-18-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135904R','ALIC SA','PRO2400','PROYECTOR DE LED SL-SSP 300W LD 25 FORZA',6,'AG-N-49-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135905R','ALIC SA','TOR9432','TORTUGA LED OVAL LISA 20W BLANCA 6500K',60,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135906R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135907R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',15,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135908R','ALIC SA','PRO0015','PROYECTOR DE LED SMD SL-FL 30W LD C/SENSOR',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135909R','ALIC SA','PRO2602','PROYECTOR EXTERIOR A LED SL-FL 20W L/C',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135910R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',280,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135911R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',120,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135912R','ALIC SA','PRO2602','PROYECTOR EXTERIOR A LED SL-FL 20W L/C',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135913R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',80,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135914R','ALIC SA','PRO0013','PROYECTOR DE LED SMD SL-FL 20W LD C/SENSOR',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135915R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',50,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135917R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',25,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135918R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',25,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135919R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',60,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135920R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',40,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135921R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',30,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135922R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',30,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135923R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',20,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135924R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',15,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135925R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',10,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135926R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',120,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135927R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135928R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135929R','ALIC SA','PRO0011','PROYECTOR DE LED SMD SL-FL 10W LD C/SENSOR',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135930R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',400,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135931R','ALIC SA','PRO2602','PROYECTOR EXTERIOR A LED SL-FL 20W L/C',40,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135933R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',80,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135934R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',20,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135935R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',40,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135936R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',80,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135937R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',140,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135938R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',40,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135939R','ALIC SA','PRO0011','PROYECTOR DE LED SMD SL-FL 10W LD C/SENSOR',20,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135940R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',20,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135941R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',40,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135942R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135943R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',80,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135944R','ALIC SA','PRO2605','PROYECTOR EXTERIOR A LED SL-FL 30W L/D',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135945R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',20,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135946R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',80,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135947R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',40,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135948R','ALIC SA','PRO0011','PROYECTOR DE LED SMD SL-FL 10W LD C/SENSOR',30,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135949R','ALIC SA','PRO0013','PROYECTOR DE LED SMD SL-FL 20W LD C/SENSOR',40,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135950R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',120,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135951R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',200,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135952R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',120,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135953R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',5,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135954R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135955R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',70,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135956R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',30,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135957R','ALIC SA','PRO0011','PROYECTOR DE LED SMD SL-FL 10W LD C/SENSOR',20,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135958R','ALIC SA','PRO0011','PROYECTOR DE LED SMD SL-FL 10W LD C/SENSOR',60,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135959R','ALIC SA','PRO0013','PROYECTOR DE LED SMD SL-FL 20W LD C/SENSOR',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135960R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',400,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135961R','ALIC SA','PRO0015','PROYECTOR DE LED SMD SL-FL 30W LD C/SENSOR',20,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135962R','ALIC SA','PRO0017','PROYECTOR DE LED SMD SL-FL 50W LD C/SENSOR',10,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135963R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135964R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',10,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135965R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135966R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135967R','ALIC SA','PRO2615','PROYECTOR EXTERIOR A LED SL-FL 200W L/D',30,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135968R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135969R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',15,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135970R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',10,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135971R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',5,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135972R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',50,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135973R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',280,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135974R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',80,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135975R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',120,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135976R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135977R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',80,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135978R','ALIC SA','PRO2602','PROYECTOR EXTERIOR A LED SL-FL 20W L/C',40,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135979R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',10,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135980R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135981R','ALIC SA','LAM8302','LAMP INC FANT PERF E14 230V 15W SATIN',1000,'AG-M-27-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135982R','ALIC SA','LAM8936','LAMPARA DE LEDS (230V) T115 38EC LC',24,'AG-M-43-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135983R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',75,'AG-M-03-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135984R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135985R','ALIC SA','PRO0015','PROYECTOR DE LED SMD SL-FL 30W LD C/SENSOR',20,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135986R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',80,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135987R','ALIC SA','BIP5010','LAMPARA BI-PIN ECO LED 6W 220V LUZ CALIDA G9',10,'AG-O-16-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135988R','ALIC SA','LAM9502','LAMPARA ST64 LED ANTIQUE 4W DIMM LC  AMBAR',40,'AG-M-51-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135989R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',700,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135990R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',40,'AG-M-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135991R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135992R','ALIC SA','PRO2604','PROYECTOR EXTERIOR A LED SL-FL 30W LUZ CALIDA',20,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135993R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',20,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135994R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',80,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135995R','ALIC SA','PRO0017','PROYECTOR DE LED SMD SL-FL 50W LD C/SENSOR',20,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135996R','ALIC SA','LAM9462','LAMPARA GOTA LED STYLE 2W ROJA E27',50,'AG-L-18-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135997R','ALIC SA','TUB3108','TUBO DE LEDS T8 18W 120CM G13 LD',150,'AG-N-18-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135998R','ALIC SA','PRO0015','PROYECTOR DE LED SMD SL-FL 30W LD C/SENSOR',20,'AG-A-26-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100135999R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',20,'AG-A-26-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136000R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',36,'AG-L-23-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136001R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',24,'AG-M-31-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136002R','ALIC SA','LAM6899','LAMPARA T120 HI POWER LED 55W LD E40 FORZA',60,'AG-M-44-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136003R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',48,'AG-L-23-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136004R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',80,'AG-A-26-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136005R','ALIC SA','PRO2604','PROYECTOR EXTERIOR A LED SL-FL 30W LUZ CALIDA',20,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136006R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',200,'AG-M-03-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136007R','ALIC SA','LAM6905','LAMPARA T158 HI POWER LED 125W LD E40 FORZA',8,'AG-L-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136008R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',8,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136009R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',192,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136010R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',120,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136011R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',8,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136012R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',12,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136013R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',48,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136014R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',32,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136015R','ALIC SA','LAM6901','LAMPARA T135 HI POWER LED 75W LD E40 FORZA',32,'AG-L-50-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136016R','ALIC SA','LAM6905','LAMPARA T158 HI POWER LED 125W LD E40 FORZA',40,'AG-L-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136017R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',80,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136018R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',8,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136019R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',24,'AG-M-31-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136020R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',6,'AG-L-23-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136021R','ALIC SA','TER2020','LLAVE TERMOMAGNETICA 2 X 20A',120,'AG-N-12-20','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136022R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',16,'AG-M-31-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136023R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',6,'AG-L-23-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136024R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',12,'AG-L-23-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136025R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',66,'AG-L-23-10','EMILIANO MOUSO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136026R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',36,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136027R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',8,'AG-M-31-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136028R','ALIC SA','PRO0013','PROYECTOR DE LED SMD SL-FL 20W LD C/SENSOR',40,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136029R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',24,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136030R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',8,'AG-M-31-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136031R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',24,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136032R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',60,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136033R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',16,'AG-M-31-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136034R','ALIC SA','LAM6905','LAMPARA T158 HI POWER LED 125W LD E40 FORZA',8,'AG-L-31-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136035R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',24,'AG-M-31-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136036R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',6,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136037R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',24,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136038R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',6,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136039R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',60,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136040R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',48,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136041R','ALIC SA','LAM6899','LAMPARA T120 HI POWER LED 55W LD E40 FORZA',60,'AG-M-44-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136042R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',12,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136043R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',30,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136044R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',30,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136045R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',6,'AG-L-23-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136046R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',16,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136047R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',184,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136048R','ALIC SA','LAM6901','LAMPARA T135 HI POWER LED 75W LD E40 FORZA',32,'AG-L-50-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136049R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',48,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136050R','ALIC SA','LAM6901','LAMPARA T135 HI POWER LED 75W LD E40 FORZA',16,'AG-L-50-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136051R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',40,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136052R','ALIC SA','LAM6899','LAMPARA T120 HI POWER LED 55W LD E40 FORZA',60,'AG-M-44-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136053R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',12,'AG-L-23-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136054R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',16,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136055R','ALIC SA','LAM6899','LAMPARA T120 HI POWER LED 55W LD E40 FORZA',90,'AG-M-44-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136056R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',24,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136057R','ALIC SA','LAM6901','LAMPARA T135 HI POWER LED 75W LD E40 FORZA',8,'AG-L-50-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136058R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',24,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136059R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',24,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136060R','ALIC SA','LAM6901','LAMPARA T135 HI POWER LED 75W LD E40 FORZA',16,'AG-L-50-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136061R','ALIC SA','LAM6905','LAMPARA T158 HI POWER LED 125W LD E40 FORZA',16,'AG-L-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136062R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',24,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136063R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',8,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136064R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',18,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136065R','ALIC SA','LAM6905','LAMPARA T158 HI POWER LED 125W LD E40 FORZA',12,'AG-L-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136066R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',30,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136067R','ALIC SA','LAM6899','LAMPARA T120 HI POWER LED 55W LD E40 FORZA',45,'AG-M-44-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136068R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',48,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136069R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',118,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136070R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',32,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136071R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',18,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136072R','ALIC SA','LAM6901','LAMPARA T135 HI POWER LED 75W LD E40 FORZA',32,'AG-L-50-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136073R','ALIC SA','LAM6901','LAMPARA T135 HI POWER LED 75W LD E40 FORZA',24,'AG-L-50-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136074R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',36,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136075R','ALIC SA','LAM6905','LAMPARA T158 HI POWER LED 125W LD E40 FORZA',8,'AG-L-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136076R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',2,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136077R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',36,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136078R','ALIC SA','LAM6901','LAMPARA T135 HI POWER LED 75W LD E40 FORZA',16,'AG-L-50-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136079R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',8,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136081R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',18,'AG-L-23-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136082R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',64,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136083R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',18,'AG-M-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136084R','ALIC SA','LAM6905','LAMPARA T158 HI POWER LED 125W LD E40 FORZA',8,'AG-L-31-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136085R','ALIC SA','BAT0111','BATERIA LI-ION PARA LUZ DE EMERGENCIA 36 LEDS',60,'AG-O-43-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136086R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',18,'AG-M-31-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136087R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',8,'AG-M-31-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136088R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',24,'AG-L-23-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136089R','ALIC SA','LAM9410','LAMPARA GOTA LED STYLE 4W CLARA LD',100,'AG-M-19-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136090R','ALIC SA','LAM6899','LAMPARA T120 HI POWER LED 55W LD E40 FORZA',38,'AG-M-44-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136091R','ALIC SA','LAM6901','LAMPARA T135 HI POWER LED 75W LD E40 FORZA',48,'AG-L-50-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136092R','ALIC SA','VIA0100','LUMINARIA VIAL DE LED 100W ACOM. D 60MM',21,'AG-M-07-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136093R','ALIC SA','VIA0100','LUMINARIA VIAL DE LED 100W ACOM. D 60MM',60,'AG-M-07-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136094R','ALIC SA','VIA0100','LUMINARIA VIAL DE LED 100W ACOM. D 60MM',12,'AG-M-07-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136095R','ALIC SA','VIA0100','LUMINARIA VIAL DE LED 100W ACOM. D 60MM',3,'AG-M-07-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136096R','ALIC SA','TOR9432','TORTUGA LED OVAL LISA 20W BLANCA 6500K',100,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136097R','ALIC SA','VIA0100','LUMINARIA VIAL DE LED 100W ACOM. D 60MM',40,'AG-M-07-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136098R','ALIC SA','VIA0100','LUMINARIA VIAL DE LED 100W ACOM. D 60MM',47,'AG-M-07-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136099R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',20,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136100R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',140,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136101R','ALIC SA','VIA0200','LUMINARIA VIAL DE LED 200W ACOM. D 60MM',30,'AG-M-32-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136102R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',20,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136103R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',20,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136104R','ALIC SA','TOR9432','TORTUGA LED OVAL LISA 20W BLANCA 6500K',60,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136105R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136106R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136107R','ALIC SA','TOR9433','TORTUGA LED OVAL LISA 20W NEGRA 6500K',20,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136108R','ALIC SA','TOR9433','TORTUGA LED OVAL LISA 20W NEGRA 6500K',100,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136109R','ALIC SA','LEM1101','LUZ DE EMERGENCIA 30 LEDS - 1 BATERIA DE LI-ION',40,'AG-L-09-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136110R','ALIC SA','LIS6025','LISTONES P/TUBO LED 1X9W 60 CM',100,'AG-N-13-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136111R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',200,'AG-L-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136112R','ALIC SA','LIS6025','LISTONES P/TUBO LED 1X9W 60 CM',100,'AG-N-13-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136113R','ALIC SA','LIS6027','LISTONES P/TUBO LED 1X18W 120 CM',7,'AG-O-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136114R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',100,'AG-L-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136115R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',60,'AG-L-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136116R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',40,'AG-L-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136117R','ALIC SA','LIS6028','LISTONES P/TUBO LED 2X18W 120 CM',100,'AG-N-15-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136118R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',60,'AG-L-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136119R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',20,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136120R','ALIC SA','LEM1101','LUZ DE EMERGENCIA 30 LEDS - 1 BATERIA DE LI-ION',40,'AG-L-09-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136121R','ALIC SA','LIS6027','LISTONES P/TUBO LED 1X18W 120 CM',300,'AG-O-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136122R','ALIC SA','TOR9432','TORTUGA LED OVAL LISA 20W BLANCA 6500K',20,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136123R','ALIC SA','LIS6028','LISTONES P/TUBO LED 2X18W 120 CM',150,'AG-N-15-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136124R','ALIC SA','LAM6905','LAMPARA T158 HI POWER LED 125W LD E40 FORZA',4,'AG-L-31-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136125R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',20,'AG-A-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136126R','ALIC SA','LIS6028','LISTONES P/TUBO LED 2X18W 120 CM',100,'AG-N-15-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136127R','ALIC SA','LEM1101','LUZ DE EMERGENCIA 30 LEDS - 1 BATERIA DE LI-ION',40,'AG-L-09-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136128R','ALIC SA','LIS6025','LISTONES P/TUBO LED 1X9W 60 CM',100,'AG-N-13-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136129R','ALIC SA','LIS6028','LISTONES P/TUBO LED 2X18W 120 CM',50,'AG-N-15-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136130R','ALIC SA','LEM1101','LUZ DE EMERGENCIA 30 LEDS - 1 BATERIA DE LI-ION',80,'AG-L-09-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136131R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',200,'AG-L-11-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136132R','ALIC SA','LEM1101','LUZ DE EMERGENCIA 30 LEDS - 1 BATERIA DE LI-ION',280,'AG-L-09-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136133R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',800,'AG-M-02-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136134R','ALIC SA','TUB3106','TUBO DE LEDS T8 18W 120CM G13 LC',100,'AG-M-36-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136135R','ALIC SA','ART1702','ARTEFACTO PARED P/DICRO GU10 50W RECTO  NEGRO',24,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136136R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',20,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136137R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',48,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136138R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',24,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136139R','ALIC SA','ART1601','ESTACA JARDIN P/DICRO GU10 50W  GRIS',24,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136140R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',24,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136141R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',48,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136142R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',10,'AG-M-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136143R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',20,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136144R','ALIC SA','LAM8617','LAMPARA INCANDESC. ANTIQUE ST64 24W E27 230V',20,'AG-L-12-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136145R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',48,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136146R','ALIC SA','ART1702','ARTEFACTO PARED P/DICRO GU10 50W RECTO  NEGRO',24,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136147R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',72,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136148R','ALIC SA','LAM8618','LAMPARA INCANDESC. ANTIQUE A130 24W E27 230V',8,'AG-L-08-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136149R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',24,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136150R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',40,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136151R','ALIC SA','ART1701','ARTEFACTO PARED P/DICRO GU10 50W CURVO  GRIS',48,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136152R','ALIC SA','PRO2600','PROYECTOR EXTERIOR A LED SL-FL 10W L/C',30,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136153R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',96,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136154R','ALIC SA','ART1702','ARTEFACTO PARED P/DICRO GU10 50W RECTO  NEGRO',24,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136155R','ALIC SA','ART1701','ARTEFACTO PARED P/DICRO GU10 50W CURVO  GRIS',96,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136156R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',48,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136157R','ALIC SA','ART1702','ARTEFACTO PARED P/DICRO GU10 50W RECTO  NEGRO',24,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136158R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',120,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136159R','ALIC SA','ART1701','ARTEFACTO PARED P/DICRO GU10 50W CURVO  GRIS',72,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136160R','ALIC SA','PRO2613','PROYECTOR EXTERIOR A LED SL-FL 150W L/D',5,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136161R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',96,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136162R','ALIC SA','ART1702','ARTEFACTO PARED P/DICRO GU10 50W RECTO  NEGRO',48,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136163R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',96,'AG-A-26-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136164R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',300,'AG-M-12-10','ALE JUMILLA');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136165R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',24,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136166R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',24,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136167R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',96,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136168R','ALIC SA','LAM6905','LAMPARA T158 HI POWER LED 125W LD E40 FORZA',16,'AG-L-31-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136169R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',24,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136170R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',24,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136171R','ALIC SA','ART1702','ARTEFACTO PARED P/DICRO GU10 50W RECTO  NEGRO',48,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136172R','ALIC SA','ART1701','ARTEFACTO PARED P/DICRO GU10 50W CURVO  GRIS',48,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136173R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',96,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136174R','ALIC SA','ART1702','ARTEFACTO PARED P/DICRO GU10 50W RECTO  NEGRO',48,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136175R','ALIC SA','ART1702','ARTEFACTO PARED P/DICRO GU10 50W RECTO  NEGRO',48,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136176R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',24,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136177R','ALIC SA','ART1702','ARTEFACTO PARED P/DICRO GU10 50W RECTO  NEGRO',72,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136178R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',300,'AG-M-02-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136179R','ALIC SA','ART1701','ARTEFACTO PARED P/DICRO GU10 50W CURVO  GRIS',48,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136180R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',40,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136181R','ALIC SA','PRO0011','PROYECTOR DE LED SMD SL-FL 10W LD C/SENSOR',200,'AG-A-26-10','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136182R','ALIC SA','BIP5010','LAMPARA BI-PIN ECO LED 6W 220V LUZ CALIDA G9',100,'AG-O-16-20','RSUAREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136183R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',6,'AG-L-23-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136185R','ALIC SA','LAM9462','LAMPARA GOTA LED STYLE 2W ROJA E27',50,'AG-L-18-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136186R','ALIC SA','PRO2611','PROYECTOR EXTERIOR A LED SL-FL 100W L/D',5,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136187R','ALIC SA','PRO0015','PROYECTOR DE LED SMD SL-FL 30W LD C/SENSOR',20,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136188R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',60,'AG-L-23-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136189R','ALIC SA','PRO2602','PROYECTOR EXTERIOR A LED SL-FL 20W L/C',80,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136190R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',72,'AG-L-23-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136191R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136192R','ALIC SA','PRO2601','PROYECTOR EXTERIOR A LED SL-FL 10W L/D',40,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136193R','ALIC SA','DIF2040','INTERRUPTOR DIFERENCIAL 2 X 40A',24,'AG-O-44-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136194R','ALIC SA','LAM8933','LAMPARA DE LEDS (230V) T80 18EC LD',160,'AG-M-40-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136195R','ALIC SA','LAM8612','LAMPARA INCANDESC. ANTIQUE ST58 24W E27 230V',40,'AG-M-25-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136196R','ALIC SA','LAM8925','LAMPARA DE LEDS (230V) A60 9EC LD',200,'AG-M-46-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136198R','ALIC SA','ART5102','PANEL LED EMBUTIDO RECTANGULAR 48W LN 1200X300MM',4,'AG-M-34-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136199R','ALIC SA','LAM8617','LAMPARA INCANDESC. ANTIQUE ST64 24W E27 230V',20,'AG-L-12-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136200R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',72,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136202R','ALIC SA','SMW0510','LÁMPARA LEDS P16 5EC105 DIMM LC',150,'AG-N-39-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136203R','ALIC SA','VIA0100','LUMINARIA VIAL DE LED 100W ACOM. D 60MM',18,'AG-M-07-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136207R','ALIC SA','BIP5008','LAMPARA BI-PIN ECO LED 4W 220V LUZ CALIDA G9',20,'AG-O-31-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136208R','ALIC SA','TER2025','LLAVE TERMOMAGNETICA 2 X 25A',6,'AG-O-27-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136213R','ALIC SA','LAM9410','LAMPARA GOTA LED STYLE 4W CLARA LD',42,'AG-M-19-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136215R','ALIC SA','BIP5015','LAMPARA BI-PIN ECO LED 10W 220V LUZ DIA G9',20,'AG-O-19-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136216R','ALIC SA','ART1601','ESTACA JARDIN P/DICRO GU10 50W  GRIS',24,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136218R','ALIC SA','BIP5014','LAMPARA BI-PIN ECO LED 10W 220V LUZ CALIDA G9',200,'AG-N-35-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136221R','ALIC SA','ART1701','ARTEFACTO PARED P/DICRO GU10 50W CURVO  GRIS',24,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136222R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',40,'AG-L-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136223R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',360,'AG-M-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136224R','ALIC SA','BIP5008','LAMPARA BI-PIN ECO LED 4W 220V LUZ CALIDA G9',100,'AG-O-31-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136225R','ALIC SA','TOR9427','TORTUGA LED OVAL LISA 15W NEGRA 6500K',20,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136226R','ALIC SA','PRO0011','PROYECTOR DE LED SMD SL-FL 10W LD C/SENSOR',10,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136230R','ALIC SA','TOR9432','TORTUGA LED OVAL LISA 20W BLANCA 6500K',40,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136233R','ALIC SA','PRO0017','PROYECTOR DE LED SMD SL-FL 50W LD C/SENSOR',10,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136234R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',300,'AG-M-03-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136235R','ALIC SA','LAM6897','LAMPARA T120 HI POWER LED 45W LD E40 FORZA',15,'AG-P-10-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136237R','ALIC SA','LIS6025','LISTONES P/TUBO LED 1X9W 60 CM',50,'AG-N-13-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136238R','ALIC SA','BIP5015','LAMPARA BI-PIN ECO LED 10W 220V LUZ DIA G9',100,'AG-O-19-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136241R','ALIC SA','BIP5014','LAMPARA BI-PIN ECO LED 10W 220V LUZ CALIDA G9',20,'AG-N-35-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136245R','ALIC SA','PRO0011','PROYECTOR DE LED SMD SL-FL 10W LD C/SENSOR',40,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136249R','ALIC SA','LAM7708','LAMPARA PERFUME LED STYLE 2W OPAL LUZ CALIDA E14',500,'AG-N-19-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136254R','ALIC SA','LAM9410','LAMPARA GOTA LED STYLE 4W CLARA LD',50,'AG-M-19-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136255R','ALIC SA','LEM1101','LUZ DE EMERGENCIA 30 LEDS - 1 BATERIA DE LI-ION',380,'AG-L-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136256R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',500,'AG-M-03-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136257R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',20,'AG-L-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136258R','ALIC SA','LAM9505','LAMPARA G125 LED ANTIQUE 4W UC  SMOKED',10,'AG-L-24-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136259R','ALIC SA','LIS6027','LISTONES P/TUBO LED 1X18W 120 CM',600,'AG-O-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136260R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',1800,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136261R','ALIC SA','LEM1101','LUZ DE EMERGENCIA 30 LEDS - 1 BATERIA DE LI-ION',120,'AG-L-09-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136262R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',20,'AG-L-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136263R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',96,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136264R','ALIC SA','ART0143','LUMINARIA VINTAGE JAULA CHICA MAX. 40W NEGRO',32,'AG-L-25-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136265R','ALIC SA','PRO2603','PROYECTOR EXTERIOR A LED SL-FL 20W L/D',120,'AG-A-26-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136266R','ALIC SA','LAM9460','LAMPARA G45 LED ANTIQUE 2W LC AMBAR',50,'AG-O-14-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136267R','ALIC SA','KIT0001','KIT DE SUSPENSION PARA PLAFONES 60X60CMS.',50,'AG-O-41-20','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136268R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',60,'AG-L-11-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136269R','ALIC SA','LAM9505','LAMPARA G125 LED ANTIQUE 4W UC  SMOKED',20,'AG-L-24-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136270R','ALIC SA','LAM8617','LAMPARA INCANDESC. ANTIQUE ST64 24W E27 230V',100,'AG-L-12-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136271R','ALIC SA','LAM8933','LAMPARA DE LEDS (230V) T80 18EC LD',120,'AG-M-40-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136272R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',40,'AG-M-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136273R','ALIC SA','LAM9509','LAMPARA G95 LED ANTIQUE 4W UC  SMOKED',40,'AG-M-22-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136274R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',500,'AG-M-12-10','EDOMINGUEZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136275R','ALIC SA','ART1701','ARTEFACTO PARED P/DICRO GU10 50W CURVO  GRIS',48,'AG-A-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136276R','ALIC SA','LAM6901','LAMPARA T135 HI POWER LED 75W LD E40 FORZA',120,'AG-L-50-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136277R','ALIC SA','POR5100','PORTALAMPARAS GU10 / GZ10',500,'AG-L-30-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136279R','ALIC SA','LEM1101','LUZ DE EMERGENCIA 30 LEDS - 1 BATERIA DE LI-ION',80,'AG-L-09-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136280R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',2000,'AG-M-03-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136281R','ALIC SA','LAM8937','LAMPARA DE LEDS (230V) T115 38EC LD',24,'AG-M-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136282R','ALIC SA','LAM8887','LAMPARA VELITA ECO LED 5W LUZ DIA E14',100,'AG-M-14-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136283R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',100,'AG-M-03-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136284R','ALIC SA','LAM9413','LAMPARA GOTA LED STYLE 4W CLARA DIMM LC',400,'AG-M-12-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136285R','ALIC SA','ART1701','ARTEFACTO PARED P/DICRO GU10 50W CURVO  GRIS',24,'AG-O-12-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136286R','ALIC SA','LIS1003','LUMINARIA ESTANCA PARA 2 TUBOS T8 LED DE 120CM',20,'AG-L-01-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136287R','ALIC SA','LAM9509','LAMPARA G95 LED ANTIQUE 4W UC  SMOKED',40,'AG-M-22-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136288R','ALIC SA','LAM8617','LAMPARA INCANDESC. ANTIQUE ST64 24W E27 230V',20,'AG-L-12-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136289R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',3000,'AG-M-03-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136290R','ALIC SA','KIT0001','KIT DE SUSPENSION PARA PLAFONES 60X60CMS.',21,'AG-O-41-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136291R','ALIC SA','SMW0510','LÁMPARA LEDS P16 5EC105 DIMM LC',100,'AG-N-39-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136292R','ALIC SA','LAM8882','LAMPARA GOTA ECO LED 7W LUZ CALIDA E27',100,'AG-M-09-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136294R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',300,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136295R','ALIC SA','LAM6903','LAMPARA T150 HI POWER LED 95W LD E40 FORZA',2,'AG-M-31-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136296R','ALIC SA','LAM8935','LAMPARA DE LEDS (230V) T100 28EC LD',20,'AG-M-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136297R','ALIC SA','PRO2801','PROYECTOR DE LED SL-SP 600W 60º LD FORZA',16,'AG-N-26-10','JONATHAN RAMIREZ');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136298R','ALIC SA','TUB3102','TUBO DE LEDS T8 9W 60CM G13 LD',50,'AG-N-07-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136299R','ALIC SA','LAM8937','LAMPARA DE LEDS (230V) T115 38EC LD',24,'AG-M-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136300R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',24,'AG-O-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136301R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',200,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136302R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',216,'AG-O-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136303R','ALIC SA','LEM1102','LUZ DE EMERGENCIA 60 LEDS - 2 BATERIA DE LI-ION',80,'AG-L-11-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136304R','ALIC SA','ART1701','ARTEFACTO PARED P/DICRO GU10 50W CURVO  GRIS',48,'AG-O-12-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136305R','ALIC SA','ART4505','PANEL LED EMBUTIDO CUADRADO 12W LD 170X170MM BLANC',30,'AG-L-26-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136306R','ALIC SA','TUB3014','TUBO DE LEDS T8 ECO 36W R17D LUZ DIA 240 CM',100,'AG-L-64-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136307R','ALIC SA','LAM7709','LAMPARA PERFUME LED STYLE 2W OPAL LUZ DIA E14',40,'AG-O-13-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136308R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',24,'AG-L-23-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136310R','ALIC SA','VIA0100','LUMINARIA VIAL DE LED 100W ACOM. D 60MM',18,'AG-M-07-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136311R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',300,'AG-M-03-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136312R','ALIC SA','LAM8927','LAMPARA DE LEDS (230V) A60 12EC LD',400,'AG-M-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136313R','ALIC SA','ART1600','ESTACA JARDIN P/DICRO GU10 50W  NEGRO',48,'AG-O-02-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136314R','ALIC SA','LAM9462','LAMPARA GOTA LED STYLE 2W ROJA E27',50,'AG-L-18-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136315R','ALIC SA','TUB3106','TUBO DE LEDS T8 18W 120CM G13 LC',650,'AG-M-36-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136317R','ALIC SA','LAM6907','LAMPARA T158 HI POWER LED 150W LD E40 FORZA',12,'AG-L-23-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136318R','ALIC SA','LAM8880','LAMPARA GOTA ECO LED 5W LUZ CALIDA E27',300,'AG-M-03-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136319R','ALIC SA','KIT0003','KIT DE CONVERSIÓN A PLAFÓN 1200X300MM.',30,'AG-M-12-20','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136320R','ALIC SA','LAM8926','LAMPARA DE LEDS (230V) A60 12EC LC',100,'AG-M-28-10','ALAN CRISTALDO');
INSERT INTO pedidos (`pedido_id`,`razon_social`,`producto_id`,`descripcion_producto`,`qty_confirmada`,`posicion_producto`,`pickeador`) VALUES ('000100136321R','ALIC SA','LAM8887','LAMPARA VELITA ECO LED 5W LUZ DIA E14',100,'AG-M-14-10','ALAN CRISTALDO');

INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523081,8,'2021-12-02','105','105 - CRISA - CAVANA- VASO HB 414 ML',5);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523761,36,'2021-12-01','1027','1027 - SHAMPOO SILVER BONMETIQUE PROFESSIONNEL X 15 ML EXH. X 34 POUCHES',240);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523812,44,'2021-12-01','FT4008013001','FT4008013001 - CRI-VASO-500-PATAGONIA-RIESGEE',2016);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523849,7,'2021-12-01','10706','010706 - RESALTADOR DE BRONCEADO *130',3022);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523887,75,'2021-12-01','82K20015US','82K20015US - LENOVO IDEAPAD GAMING 3 15ACH6 R5 8G 256G 10H',2);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523888,60,'2021-12-01','SPORT PRO 300 L20','SPORT PRO 300 L20 - PROY INY ALUM 300W 20?',8);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523891,60,'2021-12-01','STAR ECO 150F','STAR ECO 150F - COLG EN INY DE ALUM FRIO',20);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523921,44,'2021-12-01','FT1014012001','FT1014012001 - CERVEZA GOOSE ISLAND IPA LATA 473ML',2400);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523922,36,'2021-12-01','661-53','661-53 - COLORACION CREMA ALGALINE HYDRO GLOSS TECHNOLOGY 5',16);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523973,7,'2021-12-01','10307','010307 - GEL EXTRA-REF.POST SOLAR 200ML',3086);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523988,7,'2021-12-01','75004','075004 - CONTORNO DE OJOS C/AC.HIALURON',7272);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523989,7,'2021-12-01','620440','620440 - NATURALOE SHAMPOO NEUTRO HIDRATA Y BRILLO',2694);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523990,7,'2021-12-01','10805','010805 - PROTECTOR SOLAR FPS70 RAYITO X 170ML',2194);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523991,56,'2021-12-01','AERO','AERO - GUIA AEROBOX SH - HAWB',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523992,59,'2021-12-01','IMPOR','IMPOR - IO_IMPORTO ENVIOS',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523993,61,'2021-12-01','ATC','ATC - ENVIO A TU CASA',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (523996,44,'2021-12-01','FT1200412001','FT1200412001 - CER-LAT-473-ROJA-ANDES',1680);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524103,28,'2021-12-01','HSCDRRN002NDAA3','HSCDRRN002NDAA3 - SENSOR DE PRESION DIFERENCIAL',350);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524134,28,'2021-12-01','HSCDRRN002NDAA3','HSCDRRN002NDAA3 - SENSOR DE PRESION DIFERENCIAL',350);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524185,28,'2021-12-01','HSCMRRN016MGAA3','HSCMRRN016MGAA3 - HSCMRRN016MGAA3',400);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524261,36,'2021-12-01','1305','1305 - OLEO DE ARGAN ESTEREOCOLOR EXH. X 40 UN DE 4 ML',11);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524262,36,'2021-12-01','1101','1101 - SHOCK REPARADOR INTENSIVO CON KERATINA ESTEREOCOLOR EXH. X 10 UNID. X 50 GRS',697);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524403,7,'2021-12-01','75011100','075011100 - ENV. PREMIUM 30ML',3500);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524431,7,'2021-12-01','10260701','010260701 - BOMBA PREMIUM 20/410 TRAT WHIT',20000);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524442,57,'2021-12-01','HGGR21394','HGGR21394 - LEGIONARIAS ULTRA POP TALLE 37 - NGRO',30);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524467,7,'2021-12-01','75008215','075008215 - FRASCO TRAT NOCHE X 60 V2018',3015);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524468,76,'2021-12-01','PLT-INS8155','PLT-INS8155 - CAJAS PARA SH. Y ACOND.NOUGAT/BMTQ X12U DE 350ML/BI PHASE NOUGAT X 200ML',3150);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524472,49,'2021-12-01','AT-LP60X-BK','AT-LP60X-BK - AUDIO-TECHNICA AT-LP60X-BK',1000);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524473,7,'2021-12-02','10327','010327 - GEL POST SOL EXTRA REFX100',2150);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524474,7,'2021-12-02','10295','010295 - PROT. SOLAR FPS 50 FAMILY *400 G',939);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524561,55,'2021-12-02','AXXP18482','AXXP18482 - FUNDA PORTANOTEOBOOK STAR WARS TECHY - NEGRO',45);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524562,55,'2021-12-02','CIRQ39625','CIRQ39625 - MATERA DIAMOND POP - NEGRO',45);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524563,57,'2021-12-02','WGMG07566','WGMG07566 - MOCHILA ANDES LIGHT DIAMOND ROCK / NEGRO',25);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524845,55,'2021-12-02','YAHN00770','YAHN00770 - BANDOLERA SAN LUIS DIAMOND POP NEGRO',44);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524846,36,'2021-12-02','1128','1128 - SHAMPOO MATIZADOR BLACK BONMETIQUE PROFESSIONNEL X 900 ML',723);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524847,36,'2021-12-02','1206','1206 - ACTIVADOR DE RULOS BONMETIQUE PROFESSIONNEL X 300 ML. V2',3414);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524859,54,'2021-12-02','PRO2701','PRO2701 - PROYECTOR DE LED SL-SP 500W 60? LD FORZA',2);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524996,55,'2021-12-02','DWPZ93474','DWPZ93474 - LEGIONARIAS EPIC ICE TALLE 37/38',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (524999,56,'2021-12-02','AERO','AERO - GUIA AEROBOX SH - HAWB',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525015,44,'2021-12-02','FT1200612001','FT1200612001 - CER-LAT-473-ANDES-IPA',2400);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525053,44,'2021-12-02','FT1201212001','FT1201212001 - CER-LAT-473-BRAHMA-PROMO',1200);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525054,44,'2021-12-02','FT1107010001','FT1107010001 - LAT BUDWEISER 410',1440);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525095,57,'2021-12-02','KLOS71112','KLOS71112 - OJOTA TIGRE TALLE 37/38',10);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525185,56,'2021-12-02','AERO','AERO - GUIA AEROBOX SH - HAWB',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525200,44,'2021-12-02','FT2044301001','FT2044301001 - VIN-750-ESTANCIA-MENDOZA-MALBEC-RESERVA',12);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525202,44,'2021-12-02','FT4046113001','FT4046113001 - COPON ESTANCIA MENDOZA',60);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525203,74,'2021-12-02','010-02173-12','010-02173-12 - VENU GPS WI-FI BLACK/SLATE WW',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525204,74,'2021-12-02','010-02247-01','010-02247-01 - GARMIN SWIM 2 GPS NA WHITESTONE',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525208,46,'2021-12-02','109906908','109906908 - L?PIZ ZAGG  - BLACK',40);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525213,58,'2021-12-03','109906908','109906908 - L?PIZ ZAGG  - BLACK',25);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525214,58,'2021-12-02','JBLGO2CYANAM','JBLGO2CYANAM - PARLANTE JBL GO2 PORTABLE - ICECUBE CYAN',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525220,58,'2021-12-02','MK2E3AM/A','MK2E3AM/A - APPLE MAGIC MOUSE',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525226,46,'2021-12-02','200105722','200105722 - \"VIDRIO TEMPLADO ZAGG INVISIBLESHIELD VISION GUARD PARA IPAD PRO 12.9\"\"\"\"\"\"\"',70);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525227,58,'2021-12-02','200105722','200105722 - \"VIDRIO TEMPLADO ZAGG INVISIBLESHIELD VISION GUARD PARA IPAD PRO 12.9\"\"\"\"\"\"\"',10);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525228,7,'2021-12-03','10510','010510 - ACEITE BRONCEADOR FPS6',2505);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525368,7,'2021-12-03','74002','074002 - GEL HIDRATANTE VIT.CYRET *110',6366);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525369,7,'2021-12-03','73004','073004 - CR. HIDRATANTE/NUTRITIVA X110',2184);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525397,76,'2021-12-03','PLT-INS2868','PLT-INS2868 - ENVASE DE OXIDANTE COLORACI?N NATURE & SOIN  X70ML (V.5)',24360);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525526,36,'2021-12-03','1156','1156 - SHOCK ORO 24K ESTEREOCOLOR',648);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525583,36,'2021-12-03','1156','1156 - SHOCK ORO 24K ESTEREOCOLOR',396);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525595,44,'2021-12-03','FT1205312001','FT1205312001 - CER-LAT-473-STELLA-ARTOIS-NOIRE',9600);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525597,31,'2021-12-03','206','206 - HOJA CARTA LASER - CAJA X 5 RM / CAJA X 7 RM',300);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525648,60,'2021-12-03','EML30','EML30 - LUZ DE EMERGENCIA 30 LEDS SMD AC100 240V 50-60 HZ 8 HORAS 6500K',20);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525650,60,'2021-12-03','PEC40CW','PEC40CW - PANEL 60X60CM CUADRADO MACROLED 40W 6500K',20);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525815,55,'2021-12-03','ITQQ78642','ITQQ78642 - YERBERO DIAMOND POP',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525818,44,'2021-12-03','FT1205212001','FT1205212001 - CER-LAT-473-STELLA-ARTOIS',4800);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (525882,7,'2021-12-03','40902','040902 - DEPILATORIA ROSTRO  ALOE VERA',2158);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526031,76,'2021-12-03','PLT-INS2945','PLT-INS2945 - FISEL ESTEREOCOLOR COLORACION FUND',84);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526055,76,'2021-12-03','PLT-INS8206','PLT-INS8206 - PALLET INSUMO',8400);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526069,44,'2021-12-03','FT4046013001','FT4046013001 - CRI-COPA-500-ESTANCIA-MENDOZA-BORDEAUX',60);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526076,44,'2021-12-03','FT4402818001','FT4402818001 - BUZO CORONA UNDERWAVE NEGRO C/CAPUCHA T S',8);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526077,74,'2021-12-03','010-02120-30','010-02120-30 - FORERUNNER 245 MUSIC GPS WI-FI EU/PAC BLACK/RE',1);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526101,74,'2021-12-03','POP-00100-02','POP-00100-02 - GARMIN AR/TACX BOTTLE (500ML) BLACK',5);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526117,44,'2021-12-04','FT1200431001','FT1200431001 - CER-LAT-269-ANDES-ROJITA',820);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526118,44,'2021-12-04','FT1205212001','FT1205212001 - CER-LAT-473-STELLA-ARTOIS',16800);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526119,44,'2021-12-04','FT4037014001','FT4037014001 - VASO BRAHMA BXNM ELEGANTE 500ML',500);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526120,7,'2021-12-04','77002','077002 - CREMA ANTIARRUGAS COL?GENO & HIALUR?NICO SIN TACC *80G',1854);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526121,46,'2021-12-04','200108315','200108315 - IS-GLASS ELITE PLUS-APPLE-WONDER WOMAN-CFS-FG FOR IPHONE 13 PRO MAX',190);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526122,7,'2021-12-04','10235','010235 - PROTECTOR SOLAR FPS50 X 200',1918);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526124,7,'2021-12-04','10245','010245 - PROTECTOR SOLAR FPS50 X 130',124);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526126,7,'2021-12-04','10245','010245 - PROTECTOR SOLAR FPS50 X 130',1086);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526134,58,'2021-12-04','200108315','200108315 - IS-GLASS ELITE PLUS-APPLE-WONDER WOMAN-CFS-FG FOR IPHONE 13 PRO MAX',10);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526139,7,'2021-12-04','10255','010255 - PROTECTOR SOLAR FPS 50',396);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526218,7,'2021-12-04','75011','075011 - SERUM X 30 PHYSIOLOGYQUE',3248);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526497,36,'2021-12-04','1003-33A','1003-33A - COLORACI?N SEMIPERMANENTE FUNKY COLORS ESTEREOCOLOR EXH.X 12 UN X 47GRS-AZUL',4);
INSERT INTO ingresos_producto (`documento_id`,`cliente_id`,`fecha`,`producto_id`,`descripcion_producto`,`qty_recibida`) VALUES (526500,36,'2021-12-04','1103','1103 - SHAMPOO SILVER BONMETIQUE PROFESSIONNEL X 350ML',12);

/*CREACION DE TABLAS VISTA*/

create view total_clientes_activos as
select count(cliente_id)
from cliente
where estado = 'activo';

select * from total_clientes_activos;

create view total_posiciones as 
select sum(qty_posiciones), fecha
from posiciones_ocupadas
group by fecha;

select * from total_posiciones;

create view total_ingresos_diario as 
select fecha, count(distinct documento_id), sum(qty_recibida)
from ingresos_producto
group by fecha;

select * from total_ingresos_diario;

create view pedidos_preparados as 
select cliente_id, count(pedido_id)
from tiempo_preparacion_pedidos
group by cliente_id;

select * from pedidos_preparados;

create view tiempo_preparacion as 
select cliente_id, pedido_id, datediff(fecha_egresado, fecha_entrada) as 'Duracion'
from tiempo_preparacion_pedidos;

select * from tiempo_preparacion;

create view pedidos_demorados as 
select pedido_id, duracion
from tiempo_preparacion
where duracion >= 1;

select * from pedidos_demorados;

create view pedidos_armados as 
select razon_social, count(distinct pedido_id), sum(qty_confirmada)
from pedidos
group by razon_social
order by razon_social;

select * from pedidos_armados;

create view total_productos_por_clientes as 
select cliente_id, count(producto_id) as 'total productos'
from maestro_producto
group by cliente_id
order by cliente_id;

select * from total_productos_por_clientes;

/* FUNCION */

delimiter //
create function cliente_rz (id int) returns varchar(50)
deterministic
begin
	declare resultado varchar(50);
    set resultado = (select razon_social from cliente where cliente_id=id);
    return resultado;
end;    
//
select cliente_id,cliente_rz(cliente_id) as 'Razon social',qty_posiciones from ft_logistica.posiciones_ocupadas;

delimiter //
create function volumetrico (largo int, ancho int, alto int) returns int
deterministic
begin
	declare resultado int;
    set resultado = (largo*ancho*alto);
    return resultado;
end;    
//

SELECT producto_id,descripcion_producto,volumetrico(largo_cm,ancho_cm,alto_cm) as 'volumetrico' FROM maestro_producto_2;

/* PROCEDURE*/

/*EN ESTE CODIGO PODREMOS AGREGAR CLIENTES NUEVOS A LA OPERATORIA DE LA EMPRESA*/

delimiter //
create procedure insertar_cliente ( in cliente_id int, in razon_social varchar(100), in nave_ocupada varchar(50), in estado varchar(50))

begin
	insert into cliente(cliente_id, razon_social, nave_ocupada, estado)
	values(cliente_id, razon_social, nave_ocupada, estado);
end;
//

call insertar_cliente (80, 'NUEVO_CLIENTE', 'AG', 'ACTIVO');

/*EN ESTE CODIGO PODREMOS ACTUALIZAR CLIENTES DE LA OPERATORIA DE LA EMPRESA*/
create procedure actualizar_cliente ( in id int, in razon_social varchar(100), in nave_ocupada varchar(50), in estado varchar(50))

begin
	update cliente
	set cliente_id = id , razon_social = razon_social , nave_ocupada = nave_ocupada, estado = estado where cliente_id = id;
end;
//

call actualizar_cliente (80, 'CLIENTE_ACTUALIZADO', 'AG', 'ACTIVO');

/*EN ESTE CODIGO PODREMOS ELIMINAR CLIENTES DE LA OPERATORIA DE LA EMPRESA*/
delimiter //
create procedure eliminar_cliente ( in id int)

begin
	delete from cliente where cliente_id=id;
end;
//

call eliminar_cliente (80)


/*TRIGGER*/

/*ESTE CODIGO CREA LA TABLA movimientos_cliente QUE TENDRA LOS DATOS DE CUANDO DE CREO Y BORRO UN CLIENTE*/

create table movimientos_cliente (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	accion VARCHAR(45) NULL,
	fecha DATETIME NULL DEFAULT CURRENT_TIMESTAMP
);

/*ESTE CODIGO CREA EL REGISTRO CUANDO SE A CREADO UN CLIENTE NUEVO*/

delimiter //
create trigger registro_insert after insert on cliente
for each row begin
  insert into movimientos_cliente(accion) value (concat('Se inserto el cliente ',new.razon_social, ' y id:' ,new.cliente_id));
end;//

/*ESTE CODIGO CREA EL REGISTRO CUANDO SE A BORRADO UN CLIENTE NUEVO*/

create trigger registro_delete before delete on cliente
for each row begin
  insert into movimientos_cliente(accion) value (concat('Se borro el cliente ',old.razon_social, ' y id:' ,old.cliente_id));
end;//



/*ESTE CODIGO CREA LA TABLA movimientos_maestro_producto QUE TENDRA LOS DATOS DE CUANDO DE CREO Y BORRO UN PRODUCTO*/

create table movimientos_maestro_producto (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	accion VARCHAR(45) NULL,
	fecha DATETIME NULL DEFAULT CURRENT_TIMESTAMP
);

/*ESTE CODIGO CREA EL REGISTRO CUANDO SE A CREADO UN PRODUCTO NUEVO*/

delimiter //
create trigger registro_insert_producto after insert on maestro_producto
for each row begin
  insert into movimientos_maestro_producto(accion) value (concat('Se inserto el producto: ',new.producto_id, 'y cliente id:' ,new.cliente_id));
end;//

/*ESTE CODIGO CREA EL REGISTRO CUANDO SE A BORRADO UN PRODUCTO NUEVO*/

create trigger registro_delete_producto before delete on maestro_producto
for each row begin
  insert into movimientos_maestro_producto(accion) value (concat('Se inserto el producto: ',old.producto_id, 'y cliente id:' ,old.cliente_id));
end;//
