create database Exercicio2;

create table musica (
   idMusica int primary key,
   titulo varchar(40),
   artista varchar(40),
   genero varchar(40)
   );
   
insert into musica values
   (1, 'Sweet Child o Mine', 'Guns N Roses', 'Rock');
   
select * from musica;

insert into musica values
   (2, 'Smells Like Teens Spirit', 'Nirvana', 'Rock');
   
insert into musica values
   (3, 'Dream On', 'Aerosmith', 'Rock');
   
insert into musica values
   (4, 'Diário de um Detento', 'Racionais', 'Rap');
   
insert into musica values
   (5, 'Dormi na Praça', 'Bruno e Marrone', 'Sertanejo');

insert into musica values
   (6, 'Paradise City', 'Guns N Roses', 'Rock');
   
insert into musica values
   (7, 'Detalhes', 'Hungria', 'Hip Hop');
   
select * from musica;
select titulo, artista from musica;
select * from musica where genero = 'rock';
select * from musica where artista = 'guns n roses';
select * from musica order by  titulo;
select * from musica order by titulo desc;
select * from musica where titulo like 'S%';
select * from musica;
select * from musica where titulo like '%o';
select * from musica where titulo like '_m%';
select * from musica where titulo like '%t_';

alter table musica add fkAlbum int;
alter table musica add foreign key (fkAlbum) references Album(idAlbum);

update Musica set fkAlbum = 2 where idMusica = 1;

update Musica set fkAlbum = 2 where idMusica = 6;

update Musica set fkAlbum = 1 where idMusica = 2;
update Musica set fkAlbum = 1 where idMusica = 3;
update Musica set fkAlbum = 3 where idMusica = 4;
update Musica set fkAlbum = 3 where idMusica = 5;
update Musica set fkAlbum = 1 where idMusica = 7;

select * from musica;

select * from musica, album where fkAlbum = idAlbum;

select * from musica, album where fkAlbum = idAlbum and idAlbum = 1;

select * from musica, album where fkAlbum = idAlbum and gravadora = 'Marvel';


