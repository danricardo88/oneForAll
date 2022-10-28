SELECT
  U.usuario_nome AS usuario,
  COUNT(P.usuario_id) AS qt_de_musicas_ouvidas,
  FORMAT(SUM(S.duracao) / 60, 2) AS total_minutos
  
FROM
  SpotifyClone.tabela_usuario AS U
  INNER JOIN SpotifyClone.tabela_de_reproducoes AS P ON P.usuario_id = U.usuario_id
  INNER JOIN SpotifyClone.tabela_musicas AS S ON P.musica_id = S.musica_id
  
GROUP BY
  U.usuario_id
ORDER BY
  U.usuario_nome;

