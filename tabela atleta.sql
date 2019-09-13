create database seila;

use seila;

create table Atleta (
 idAtleta int primary key,
 nome varchar(40),
 modalide varchar(40),
 qtdMedalha int
 );
 
insert into Atleta values
 (1, 'Leonardo', 'Natação', 2);
 
 select * from atleta;
 
 insert into Atleta values
  (2, 'Jairo', 'Tenis de mesa', 3);
  
 insert into Atleta values
 (3, 'Pedro', 'Futebol', 0);
 
 alter table atleta add fkPais int;
 
 alter table Atleta add foreign key (fkPais) references Pais(idPais);
 
 select * from atleta;
 
 update atleta set fkPais = 2 where idAtleta = 1;
 
 update atleta set fkPais = 3 where idAtleta = 2;
 
 update atleta set fkPais = 1 where idAtleta = 3;
 
 select * from atleta, pais where fkPais = idPais;
 
 select * from atleta, pais where fkPais = idPais and idPais = 2;
 
 