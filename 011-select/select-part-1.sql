use cadastro;
ALTER table users rename to gafanhotos;

select * from cursos
order by nome;

select * from cursos
order by nome desc;

select ano, nome, carga from cursos
order by ano, nome;

select nome, descricao, carga from cursos
where ano = '2016'
order by nome;

select nome, descricao, ano from cursos
where ano <= 2015
order by ano, nome;

select nome, ano from cursos
where carga between 20 and 30
order by ano, nome;

select ano, nome, descricao, carga, totaulas from cursos
where ano in (2015, 2020)
order by ano, carga desc, totaulas desc;

select nome, descricao, carga, totaulas from cursos
where carga > 35 and totaulas >= 30;

select nome, descricao, carga, totaulas from cursos
where carga > 35 or totaulas >= 30;

