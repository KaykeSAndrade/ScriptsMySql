create database dbClinicaMedica102;

use dbClinicaMedica102;

create table tbMedico(
codMedico int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
telefone char(10) not null,
primary key(codMedico),
);