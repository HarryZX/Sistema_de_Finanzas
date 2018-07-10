create database SFB;
use SFB;

create table usuarios(
	idusuario int(10) primary key not null auto_increment,
    nombres varchar(100),
    apellidos varchar(100),
    usuario varchar(25),
    credencial varchar(15),
    fecha_nac date
)engine = innoDB;

create table roles(
	idrol int(10) primary key not null auto_increment,
    rol varchar(100)
)engine = innoDB;

create table permisos(
	idpermiso int(10) primary key not null auto_increment,
    idrol int(10),
    idopcion int(10),
    foreign key(idrol) references roles(idrol),
    foreign key(idopcion) references opciones(idopcion)
)engine = innoDB;

create table opciones(
	idopcion int(10) primary key not null auto_increment,
    opcion varchar(100),
    clasificacion varchar(100),
    fecha_creacion date
)engine = innoDB;

/*modificar estas tablas, aún hay que asignarles la relación y agregarles otros campos*/

create table cuentas(
	idcuenta int primary key not null auto_increment,
    tipocuenta varchar(200)
)engine = innoDB;

create table ingresos(
	idingreso int primary key not null auto_increment,
    tipoingreso varchar(200),
    cantidad double
)engine = innoDB;

create table gastos(
	idgasto int primary key not null auto_increment,
    tipogasto varchar(200),
    cantidad double
)engine = innoDB;