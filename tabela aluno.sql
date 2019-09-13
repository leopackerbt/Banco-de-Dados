
use seila;

create table Aluno (
 id int primary key auto_increment,
 nome varchar(30),
 ra int,
 telefone int,
 email varchar(40),
 instituicao varchar(30),
 empresa varchar(30));
 
insert into aluno values  (1, 'Leonardo', 01192118, 38816761, 'lpacker@bandtec', 1, 2);

insert into aluno values (2, 'Jairo', 01192119, 39981021, 'jquint@bandtec', 2, 2);
insert into aluno values (3, 'Pedro', 01192101, 29938983, 'phenr@bandtec', 1, 3);
insert into aluno values (4, 'Matheus', 01192144, 13819200, 'msilva@bandtec', 3, 1);

select * from aluno;

alter table aluno add idInst int;

alter table aluno add idEmpresa int;

update aluno set idInst = 1 where id = 1;
update aluno set idInst = 2 where id = 2;
update aluno set idInst = 3 where id = 3;
update aluno set idInst = 1 where id = 4;
update aluno set idEmpresa = 1 where id = 1;
update aluno set idEmpresa = 3 where id = 2;
update aluno set idEmpresa = 3 where id = 3; 
update aluno set idEmpresa = 2 where id = 4;

alter table aluno modify idEmpresa int;
alter table aluno modify idInst int;

alter table aluno add foreign key (idEmpresa) references empresa(idEmpresa);

alter table aluno add foreign key (idInst) references instituicao(idInstituicao);

select * from aluno, empresa, instituicao where idInst = idInstituicao;

select * from aluno, empresa, instituicao where idInst = idInstituicao and aluno.idEmpresa = 1;

select * from aluno, empresa, instituicao where idInst = idInstituicao and idInst = 3;



 
