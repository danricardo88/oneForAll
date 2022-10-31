-- Active: 1666811490131@@127.0.0.1@3307@SpotifyClone
SELECT 
A.artista_nome 
AS artista,
B.album_nome
AS album,
COUNT(DISTINCT C.usuario_id) AS seguidores

FROM 
SpotifyClone.tabela_favoritos 
AS C

INNER JOIN SpotifyClone.tabela_artista AS A 
ON C.artista_id  = A.artista_id

INNER JOIN SpotifyClone.tabela_albuns AS B 
ON B.artista_id  = A.artista_id

GROUP BY 
artista,
album

ORDER BY 
seguidores DESC;
