select * from curso;
select * from categoria;

select id from categoria where nome not like '% %';

select curso.nome from curso where categoria_id in(
	select id from categoria where nome not like '% de %'
);

select *
from aluno
join aluno_curso on aluno_curso.aluno_id = aluno.id
join curso on curso.id = aluno_curso.curso_id;

select * from cursos_por_categoria where numero_cursos > 3;

SELECT categoria.nome AS categoria,
        COUNT(curso.id) as numero_cursos
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria
having COUNT(curso.id);


select categoria
from (
SELECT categoria.nome AS categoria,
        COUNT(curso.id) as numero_cursos
		    FROM categoria
		    JOIN curso ON curso.categoria_id = categoria.id
		GROUP BY categoria
		) as categoria_cursos
where numero_cursos >= 3;

select categoria.id as categoria_id, vw_cursos_por_categoria.* 
	from vw_cursos_por_categoria
	join categoria on categoria.nome = vw_cursos_por_categoria.categoria;


create view vw_cursos_por_categoria as SELECT categoria.nome AS categoria,
        COUNT(curso.id) as numero_cursos
		    FROM categoria
		    JOIN curso ON curso.categoria_id = categoria.id
		GROUP BY categoria


create view vw_cursos_programacao as select nome from curso where categoria_id = 2;

select * from vw_cursos_programacao where nome = 'PHP';

