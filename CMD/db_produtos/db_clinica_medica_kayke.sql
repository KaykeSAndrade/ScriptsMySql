drop database dbClinicaMedica102;

create database dbClinicaMedica102;

use dbClinicaMedica102;

create table tbMedico(
codMedico int not null auto_increment,
nome varchar(100) not null,
crm char(10) not null unique,
email varchar(100),
telefone char(10) not null,
primary key(codMedico)
);

create table tbPaciente(
codPaciente int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
telefone char(10) not null,
cpf char(14)not null unique,
convenio char(19) not null,
primary key(codPaciente)
);

create table tbReceita(
codReceita int not null auto_increment,
descricao varchar(250),
primary key(codReceita)
);

create table tbConsulta(
codConsulta int not null auto_increment,
dataConsulta datetime,
codMedico int not null,
codPaciente int not null,
codReceita int not null,
primary key(codConsulta),
foreign key(codMedico)references tbMedico(codMedico),
foreign key(codPaciente)references tbPaciente(codPaciente),
foreign key(codReceita)references tbReceita(codReceita)
);

-- inserindo valores nas tabelas -- 
insert into tbReceita(descricao)
	values('tomar dipirona 500mg duas vezes na semana por 5 dias');

insert into tbPaciente(nome,email,telefone,cpf,convenio)
	values('Geraldo Antunes','geraldo.antunes@gmail.com',
		'98742-5214','258.147.369.22','251.147.369.852.785');


insert into tbMedico(nome,crm,email,telefone)
	values('Dra.Christine Taranto','364716871-1',
		'christine.taranto@medicos.com',
		'94712-3641');

insert into tbConsulta(dataConsulta,codMedico,codPaciente,codReceita)
	values('2022/05/05',1,1,1);