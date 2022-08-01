select nome, profissao, estudando from gafanhotos;
select nome, descricao, ano from cursos;

/*JUNÇÕES DO MYSQL - INNER JOIN E A CLAUSULA ON*/
select gafanhotos.nome, cursos.nome, cursos.descricao, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.estudando;

/*APELIDOS - AS*/
select g.nome, c.nome, c.descricao, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.estudando;

/*OUTER JOIN - PARA CONSIDERAR OS CAMPOS QUE NÃO TEM RELAÇÃO COM OUTRA TABELA*/
select g.nome, c.nome, c.descricao, c.ano
/*para considerar os campos da tabela a esquerda*/
from gafanhotos as g LEFT OUTER join cursos as c
on c.idcurso = g.estudando;

select g.nome, c.nome, c.descricao, c.ano
/*para considerar os campos da tabela a direita*/
from gafanhotos as g RIGHT join cursos as c
on c.idcurso = g.estudando;




