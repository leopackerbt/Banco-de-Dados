use seila;

create table Pais (
idPais int primary key auto_increment,
nome varchar(30),
capital varchar(30)
);

insert into pais values (
1, 'Brasil', 'Brasilia');

insert into pais values (
2, 'Austria', 'Auchwitz');

select * from pais;

insert into pais values (
3, 'França', 'Paris');