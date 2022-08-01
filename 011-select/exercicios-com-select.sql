select * from gafanhotos;

/*uma lista com o nome de todas os ganfahontos mulheres:*/
select nome, sexo from gafanhotos where sexo = 'F' order by nome;

/*uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/dezembro/2015:*/

select nome, nascimento from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

/*uma lista com o nome de todas os homens que trabalham como programadores:*/

select nome, profissao, sexo from gafanhotos
where profissao = 'programador' and sexo = 'M'
order by nome;

/*uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra 'J':*/

select nome, profissao, sexo from gafanhotos
where nacionalidade = 'Brasil' and sexo = 'F'
order by nome desc;

select nome, nacionalidade, sexo from gafanhotos
where nacionalidade = 'Brasil' and nome like 'J%'
order by nome;


/*uma lista com o nome e nacionalidade de todos os ganfahontos homens que têm Silva
no nome, não nasceram no Brasil e pesam menos de 100Kg:*/

select nome, nacionalidade, sexo from gafanhotos
where nome like '%_Silva%'
order by nome, nacionalidade;

select nome, nacionalidade, sexo from gafanhotos
where nome like '%Silva%' and nacionalidade != 'Brasil' and peso < 100
order by nome, nacionalidade, peso;


/*Qual é a maior altura entre gafanhotos homens que moram no Brasil?*/
select nome, nacionalidade, sexo, max(altura) from gafanhotos
where sexo = 'm' and nacionalidade = 'brasil';

/*Qual é a média de peso dos gafanhotos cadastrados?*/
select avg(peso) from gafanhotos;

/*Qual é o menor peso entre os gafanhotos mulheres que nasceram fora do Brasil
e entre 01/jan/1990  e 31/dezembro/2000?*/

select nome, nascimento, min(peso) from gafanhotos
where sexo = 'f' and nacionalidade != 'Brasil';

select nome, nascimento, nacionalidade, min(peso) from gafanhotos
where sexo = 'f' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

/*Quantos gafanhotos mulheres têm mais de 1.90m de altura?*/

  select count(nome) from gafanhotos
where sexo = 'F' and altura >= '1.90';
