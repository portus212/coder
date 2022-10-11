create database FT_LOGISTICA;

use FT_LOGISTICA;

create table CLIENTE (
	cliente_id int not null primary key,
    razon_social varchar(100) not null,
    nave_ocupada varchar (50) not null,
    estado varchar(50)
    );
    
create table MAESTRO_PRODUCTO (
	producto_id varchar(50) not null primary key,
    descripcion_producto varchar(50) not null,
    cliente_id int not null
);

create table POSICIONES_OCUPADAS (
	cliente_id int not null primary key,
    fecha datetime not null,
    qty_posiciones int not null
);

create table PEDIDOS (
	pedido_id varchar(50) not null primary key,
    razon_social varchar(100) not null,
    producto_id varchar(100) not null,
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
 fecha datetime not null,
 producto_id varchar(100) not null,
 descripcion_producto varchar(150) not null,
 qty_recibida int not null, 
 foreign key (producto_id) references maestro_producto(producto_id)
 );
