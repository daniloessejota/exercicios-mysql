select * from users;


 create table if not exists cursos (
 nome varchar (30) not null unique,
 descricao text,
 carga int unsigned,
 totalaulas int unsigned,
 ano year default '2006'
 ) default charset=utf8;
 
 alter table cursos
 add column idcurso int first;
 
 describe cursos;
 
 alter table cursos
 add primary key (idcurso);

describe cursos;

create table if not exists teste (
id int,
nome varchar (30),
idade int
);

insert into teste value
('1', 'Pedro', '22'),
('2', 'Felipe', '37'),
('3', 'Gabriela', '28');
select * from teste;

drop table if exists teste;


 
 
 
 