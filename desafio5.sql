-- Active: 1666811490131@@127.0.0.1@3307@SpotifyClone
SELECT
S.nome_musica AS cancao,
COUNT(P.musica_id) as reproducoes
FROM
tabela_musicas S
INNER JOIN tabela_de_reproducoes P on S.musica_id = P.musica_id
GROUP BY S.nome_musica
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
