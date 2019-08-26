create database filme;

use filme;

create table filme (
   idFilme int primary key,
   titulo varchar(40),
   genero varchar(30),
   diretor varchar(40)
   );
   
select * from filme;
insert into filme values
  (1, 'Vingadores','Ação','Anthony e Joel Russo');
  
insert into filme (idFilme,titulo) values
  (2,'Big Hero 6');
  
insert into filme (titulo, idFilme) values
  ('Shrek 2', 3);
  
  insert into filme (idFilme, titulo) values
  (4,'Tarzan'),
  (5,'Shrek para sempre'),
  (6,'Cidade de Deus');

select * from filme;

update filme set genero='Animação',
				 diretor='Andrew Adamson'
	where idFilme in (3, 5);

update filme set genero='Animação',
				 diretor='Don Hall'
	where idFilme = 2 or idFilme = 4;
    
update filme set genero = 'drama',
                 diretor = 'Fernando Meirelles'
	where idFilme = 6;
    
create table Pessoa (
   idPessoa int primary key auto_increment,
   nome varchar(40),
   dataNasc date
   );
   
select * from Pessoa;
insert into pessoa values
   (null, 'Maria Oliveira', '2000-05-10');
   
insert into pessoa (nome,dataNasc) values
   ('Claudia Raia','1900-10-23');

insert into pessoa values
   (5, 'Antonio Fagundes','1980-02-15');
select * from pessoa;

update pessoa set dataNasc = '1990-10-23' where idPessoa = 2;

insert into pessoa values
   (6, 'Mickey', '1950-11-05');
   
desc pessoa;
-- Descreve toda a tabela

describe filme;

alter table pessoa add bairro varchar(30);
-- Adicionar coluna numa tabela existente

alter table pessoa modify bairro varchar(45);
-- Modifica tamanho da coluna bairro

alter table pessoa drop bairro;
-- Exclui a coluna bairro

select * from pessoa;

alter table pessoa auto_increment= 50;

insert into pessoa values
(null, 'Minnie', '1960-03-11');

create table comida (
idComida int primary key auto_increment,
nome varchar(40)
) auto_increment= 1000;

insert into Comida values
(null, 'Pizza com borda de cheddar' ),
(null, 'Lasanha' ),
(null, 'Nhoque' ),
(null, 'Paçoca' );

select * from comida;