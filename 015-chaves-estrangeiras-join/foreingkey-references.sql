show tables;
select * from gafanhotos;
select * from cursos;
desc cursos;
desc gafanhotos;

alter table gafanhotos add column estudando int;

/*TORNANDO O CAMPO 'estudando' UMA CHAVE ESTRANGEIRA*/
ALTER TABLE gafanhotos 
add foreign key (estudando)
references cursos(idcurso);

/*ASSOCIANDO UMA CHAVE ESTRANGEIRA A UMA OUTRA TABELA*/
update gafanhotos set estudando = '6' where id = '3';

/*INTEGRIDADE REFERENCIAL*/
delete from cursos where idcurso = '6';
/*NÃO ESTÁ ASSOCIADO A NENHUMA CHAVE ESTRANGEIRA*/
delete from cursos where idcurso = '30';






