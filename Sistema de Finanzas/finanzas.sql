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