use seila;

create table instituicao (
 idInstituicao int primary key,
 nome varchar(30),
 bairro varchar(30));
 
 insert into instituicao values (1, 'Bandtec', 'Paulista');
 insert into instituicao values (2, 'Mackenzie', 'Higienópolis');
 insert into instituicao values (3, 'USP', 'Paulista');