alter table pessoas 
drop column profissao; 

select * from pessoas;

desc pessoas;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas 
add codigo int first;

alter table pessoas
modify column profissao varchar(30) not null default '';

alter table pessoas
change column codigo cod int;

alter table pessoas
rename to users;




