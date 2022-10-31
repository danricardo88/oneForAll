SELECT 
  A.artista_nome AS artista,
  B.album_nome AS album
FROM
  SpotifyClone.tabela_artista AS A
INNER JOIN SpotifyClone.tabela_albuns AS B ON B.artista_id = A.artista_id
WHERE
  A.artista_nome = 'Elis Regina'
GROUP BY
  artista,
  album;
