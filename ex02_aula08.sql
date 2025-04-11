create database EmpresaX;
use EmpresaX;

create table Departamentos(
idDepartamento int primary key,
nomeDepartamento varchar (30),
localizacao varchar (40)
);

create table Funcionarios(
	idFuncionario int primary key,
	nome varchar(30),
	cargo varchar (40),
	salario decimal,
	dataContratacao date,
    idDepartamento int,
    foreign key (idDepartamento) references Departamentos (idDepartamento)
);

insert into Departamentos values (0001,"Segurança de dados","Escritório Principal");
insert into Funcionarios values (0001,"Kleber","analista segurança júnior", 1800.00, '2025-12-25',0001);
insert into Funcionarios values (0002,"Jorgin","analista segurança pleno", 4000.00, '2025-12-25',0001);
insert into Funcionarios values (0003,"Lourival","analista segurança senior", 10000.00, '2025-12-25',0001);

show databases;
show tables;
desc Departamentos;
