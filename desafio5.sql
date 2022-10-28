-- Active: 1666811490131@@127.0.0.1@3307@SpotifyClone
SELECT
S.nome_musica AS cancao,
COUNT(P.musica_id) as reproducoes
FROM
SpotifyClone.tabela_musicas AS S
INNER JOIN SpotifyClone.tabela_de_reproducoes AS P on S.musica_id = P.musica_id
GROUP BY S.nome_musica
ORDER BY COUNT(P.musica_id) DESC, cancao ASC
LIMIT 2;
