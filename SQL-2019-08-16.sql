create database vayne;
use vayne;
create table Aluno ( 
ra int primary key, 
nome varchar(40),
bairro varchar(40)
);
select * from Aluno;
insert into Aluno values 
   (01192027,'Wellington','Vila Brasilandia');
insert into Aluno values
   (01192124,'Roberto','Jardim Primavera'),
   (01192123,'Ranyeri','Jardim Audir'),
   (01192053,'Naomi','Vila Leopoldino'),
   (01192089,'Ricardo','Jardim Alzira');
   select nome from Aluno;
   select nome, bairro from Aluno;
   select bairro, ra from Aluno;
   select * from Aluno;
   select * from Aluno where ra = 1192089;
   select * from Aluno where ra >= 1192089;
   select * from Aluno where ra <> 1192089;
   select * from Aluno where ra != 1192089;
   -- exibe os alunos cjo nome começa com a letra r
   select * from Aluno where nome like 'R%';
   -- exibe os alunos cujo bairro começa com vila
   select * from Aluno where bairro like 'Vila%';
   -- exibe os alunos cujo nome termina com o 
   select * from Aluno where nome like '%o';
   -- exibe os alunos cujo nome tenha a letra I como 2a letra
   select * from aluno where nome like '_i%';
   -- exibe os alunos cujo bairro tenha alguma palavra terminada em m
   select * from aluno where bairro like '%m %';
   -- exibe os alunos cujo bairro tenha a letra E como a 3a letra de tras p frente
   select * from aluno where bairro like '%e__';
   select * from aluno;
   select * from aluno order by nome;
   select * from aluno order by nome desc;
   insert into aluno values
      (01192109,'Natanael','Vila Leopoldina');
   select * from aluno;
   select * from aluno order by bairro,nome desc;
   select * from aluno order by bairro desc, nome desc;
   select * from aluno where nome not like 'r%';
   select * from aluno;
   update aluno set nome = 'Roberto Volpe' where ra = 1192124;
   update aluno set ra = 1192999, bairro='Marechal Deodoro' where ra = 1192109;
   -- exclui o aluno natanael
   delete from aluno where ra = 1192999;
   select * from aluno;
   select * from aluno where ra between 1192060 and 1192120;
   select * from aluno where ra >= 1192060 and ra <= 1192120;
   