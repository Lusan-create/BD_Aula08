create database escuela;
use escuela;

create table curso (
codCurso char (3) primary key,
nome varchar(20),
mensalidade numeric
);

create table aluno (
ra char (9) not null primary key,
rg char (9) not null,
nome varchar (30),
codCurso char(3),
foreign key (codCurso) references curso(codCurso)
);

create table disciplina (
codDisc int not null primary key,
nome char (30),
codCurso char(3),
foreign key (codCurso) references curso(codCurso),
numCreditos int(11)
);

create table boletim (
ra char (9) not null,
foreign key (ra) references aluno(ra),
codDisc int,
foreign key (codDisc) references disciplina(codDisc),
nota decimal (10,2)
);