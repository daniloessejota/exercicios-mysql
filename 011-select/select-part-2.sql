select * from cursos
where nome like 'A%';

select nome, carga, totaulas, ano from cursos
where nome like '%s';

select nome, carga, totaulas, ano from cursos
where nome like '%m%';

select nome, carga, totaulas, ano from cursos
where nome not like '%r%';

select nome, carga, totaulas, ano from cursos
where nome not like '%n' and nome like '%h%';

select nome, carga, totaulas, ano from cursos
where nome like 'ph%p%_';

select nome, carga, totaulas, ano from cursos
where nome like 'a__e%';

select * from gafanhotos
where nome like '%_silva%';

select * from gafanhotos;
select distinct nacionalidade from gafanhotos;

select distinct nacionalidade from gafanhotos
order by nome desc;

select * from cursos where carga >=30;
select count(*) from cursos where carga >=30;

select max(carga) from cursos;
select max(totaulas) from cursos where ano = '2017';
select sum(totaulas) from cursos where ano ='2016';
select avg(carga) from cursos;