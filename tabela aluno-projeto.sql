create database aula9;

use aula9;

create table aluno (
ra int primary key,
nome varchar(30),
telefone char(9)
);

create table projeto (
idProjeto int primary key auto_increment,
nome varchar(30),
descricao varchar(40)
);

create table acompanhantes (
idAcomp int primary key auto_increment,
nome varchar(30),
relacao varchar(20)
);

insert into aluno values
(01192118,'Leonardo Packer',961449982);

insert into aluno values
(01192119,'Cristhian Palmieri',977449283),
(01192128,'Rafaella Guedes',182930984),
(01192193,'Madara Uchiha',988792301);

insert into projeto values
(null,'Luxus','Sei la');

insert into projeto values
(null,'Uchiha','Sei la'),
(null,'Uzumaki','Sei la');

insert into acompanhantes values
(null,'Hinata','Namorada');

insert into acompanhantes values
(null,'Ino','Esposa');

select * from aluno, projeto, acompanhantes;

alter table aluno add fkProjeto int;

alter table aluno add foreign key (fkProjeto) references projeto(idProjeto);

alter table acompanhantes add fkAluno int;

alter table acompanhantes add foreign key (fkAluno) references aluno(ra);

update aluno set fkProjeto = 3 where ra = 01192193;

select * from aluno as a, projeto as p
where a.fkProjeto = p.idProjeto;

update acompanhantes set fkAluno = 01192119 where idAcomp = 2;

select * from aluno as a, acompanhantes as b
where b.fkAluno = a.ra;

alter table aluno add representante int;

update aluno set representante = 01192118 where nome = 'Leonardo Packer';