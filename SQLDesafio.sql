-- 1
SELECT
	Nome,
	Ano 
FROM Filmes 


-- 2
SELECT 
    Nome,
	Ano
FROM 
    Filmes
ORDER BY
	Ano ASC;


-- 3
SELECT
	Nome = 'De Volta para o Futuro',
	Ano,
	Duracao
FROM Filmes
ORDER BY 
    Ano ASC;


-- 4
SELECT
	Nome,
	Ano = '1997',
	Duracao
FROM Filmes


-- 5
SELECT 
    Nome,
	Ano,
	Duracao
FROM 
    Filmes
WHERE 
    Ano > 2000
ORDER BY 
    Ano ASC;


-- 6
SELECT
	Nome,
	Duracao,
	Ano
FROM 
	Filmes
WHERE
	Duracao > 100 AND Duracao < 150
ORDER BY 
	Duracao ASC;



--7
SELECT 
    Ano,
    COUNT(*) AS Quantidade
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    Quantidade DESC;


-- 8
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero = 'M'
FROM Atores;


--9
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero = 'F'
FROM Atores
ORDER BY
	PrimeiroNome ASC;


-- 10
SELECT
	Nome,
	Genero
FROM Filmes, Generos


-- 11
SELECT
	Nome,
	Genero = 'Mistério'
FROM Filmes, Generos


-- 12
SELECT
    F.Nome AS NomeFilme,
    A.PrimeiroNome,
    A.UltimoNome,
    E.Papel
FROM
    Filmes F
JOIN
    ElencoFilme E ON F.Id = E.IdFilme
JOIN
    Atores A ON E.IdAtor = A.Id
JOIN
    FilmesGenero FG ON F.Id = FG.IdFilme;
