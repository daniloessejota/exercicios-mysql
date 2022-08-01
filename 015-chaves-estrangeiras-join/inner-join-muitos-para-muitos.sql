/*INNER JOIN COM VÁRIAS TABELAS*/

select * from tb_gafanhoto_assiste_curso;

create table tb_gafanhoto_assiste_curso (
	id int NOT NULL AUTO_INCREMENT,
  data DATE,
  idgafanhoto INT,
  idcurso int,
  PRIMARY KEY (id),
  foreign key (idgafanhoto) references gafanhotos(id),
  foreign key (idcurso) references cursos(idcurso)
) default charset = utf8;

/*INSERINDO DADOS NA TABELA gafanhoto_assiste_curso*/
insert into tb_gafanhoto_assiste_curso values (DEFAULT, '2020-05-25', '1', '2');
insert into tb_gafanhoto_assiste_curso values (DEFAULT, '2021-12-03', '2', '16');
insert into tb_gafanhoto_assiste_curso values (DEFAULT, '2021-08-19', '3', '20');
insert into tb_gafanhoto_assiste_curso values (DEFAULT, '2022-02-08', '4', '5');
insert into tb_gafanhoto_assiste_curso values (DEFAULT, '2020-06-23', '5', '8');
insert into tb_gafanhoto_assiste_curso values (DEFAULT, '2021-07-25', '1', '21');

/*UNINDO AS INFORMAÇÕES DAS TABELAS*/
select g.id, g.nome, g.profissao, a.idcurso, c.nome, c.descricao from gafanhotos g 
join tb_gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso;