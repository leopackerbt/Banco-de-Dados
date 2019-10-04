use vayne;

create table pet (
idPet int primary key auto_increment,
nome varchar(30),
dataNasc varchar(10),
tipo varchar(30),
raça varchar(30)
);

alter table pet add fkCliente int;

select * from pet;

insert into pet values 
(null,'Sasha','06/06/2003','Cachorro','Beagle', null);

insert into pet values 
(null,'Pandora','06/06/2003','Cachorro','Beagle', null);

insert into pet values 
(null,'Jade','20/08/2017','Cachorro','Lhasa', null);

insert into pet values 
(null,'Cristal','11/05/2019','Gato','Vira-lata', null);

alter table pet add foreign key (fkCliente) references cliente(idCliente);

update pet set fkCliente = 3 where idPet = 4;

select * from pet, cliente;

alter table pet modify nome varchar(60);

select * from pet where tipo = 'cachorro';

select nome,dataNasc from pet;

select * from pet order by nome;

select * from cliente order by bairro desc;

select * from pet where nome like 's%';

update cliente set telefone = '3881-6761' where idCliente = 2;

select * from cliente;

select * from pet as p, cliente as c
where p.fkCliente = c.idCliente;

select * from cliente where sexo = 'f';

alter table cliente drop sexo;

delete from pet where idPet = 4;

select * from pet;