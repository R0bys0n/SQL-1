select (primeiro_nome || ' ' || ultimo_nome) as nome_completo from aluno;


select trim(upper(concat('vinicius', ' ', 'Dias')) || ' ');

select (primeiro_nome || ' ' || ultimo_nome) as nome_completo,
	extract (year from age(data_nascimento)) as idade
from aluno;

