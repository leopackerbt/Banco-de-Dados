use vayne;

create table cliente (
idCliente int primary key auto_increment,
nome varchar(30),
telefone char(9),
bairro varchar(30),
sexo char(1),
check ( sexo = 'f' or sexo = 'm')
);

insert into cliente values
(null,'Leonardo','961449982','Vila Carrão','m');

insert into cliente values
(null,'Keli','967955433','Vila Carrão','f');

insert into cliente values
(null,'Cristhiam','972330178','Jacutinga','m');