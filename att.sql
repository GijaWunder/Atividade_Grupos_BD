select ATOR.NomeArtistico, PERSONAGEM.personagem
from ATOR
inner join PERSONAGEM on ATOR.codAtor = PERSONAGEM.codAtor
where ATOR.NomeReal = 'Maria da Silva';

select PERSONAGEM.personagem
from PERSONAGEM
inner join ATOR on ATOR.codAtor = PERSONAGEM.CodAtor
where ATOR.NomeArtistico = 'Jim Carrey';
