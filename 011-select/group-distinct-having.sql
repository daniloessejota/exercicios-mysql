use cadastro;
show tables;

select * from cursos;

select carga from cursos
order by carga;

/*COMANDO DISTINCT*/
select distinct carga from cursos
order by carga;

/*AGRUPAR*/
select distinct carga from cursos
group by carga; /*o resultado será VISUALMENTE idêntico ao anterior*/

select distinct carga, COUNT(*) from cursos
group by carga; /*o resultado agora mostra q ele funciona bem diferente*/

/*usando HAVING*/
select distinct ano, COUNT(nome) from cursos
group by carga
having carga > 5;

select * from gafanhotos;

/*1 - Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos*/
select profissao, count(*) from gafanhotos group by profissao;
/*PROVA*/
select nome, profissao from gafanhotos where profissao = 'Ator';


/* 2 - Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005*/

select sexo,  count(*) from gafanhotos where nascimento > '2005-01-01' group by sexo;
/*PROVA*/
select nascimento, nome, sexo from gafanhotos where nascimento > '2005-01-01' and sexo = 'F';


/*3 - Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. 
Só nos interessam os países que tiveram mais de 3 gafanhotos com essa nacionalidade.*/

select nacionalidade, count(*) from gafanhotos where nacionalidade != 'Brasil'
group by nacionalidade
having count(*) > 3 ;


/*4 - Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100Kg e que estão acima da média de altura de todos os cadastrados.*/

select avg(altura) from gafanhotos;
select peso, altura, count(*) from gafanhotos where peso > 100 and altura > (select avg(altura) from gafanhotos)
group by altura;




