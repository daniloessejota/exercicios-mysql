desc users;
desc cursos;

select * from users;

delete from users
where id = '3';

update users
set id = '3'
where nacionalidade = 'Portugal'
limit 1;

update users
set id='4'
where id= '6'
limit 1;

update users
set id='5'
where id = '6'
limit 1;
