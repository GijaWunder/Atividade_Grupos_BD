select ATOR.NomeArtistico, PERSONAGEM.personagem
from ATOR
inner join PERSONAGEM on ATOR.codAtor = PERSONAGEM.codAtor
where ATOR.NomeReal = 'Maria da Silva';

select PERSONAGEM.personagem
from PERSONAGEM
inner join ATOR on ATOR.codAtor = PERSONAGEM.CodAtor
where ATOR.NomeArtistico = 'Jim Carrey';

select p.nome as nome_paciente, m.nome as nome_medico, c.data_consulta 
from  consulta c
inner join paciente p on c.id_paciente = p.id 
inner join medico m on c.id_medico = m.id
where c.data_consulta >= '2025-04-01 00:00:00' and c.data_consulta <= '2025-04-30 23:59:59';
