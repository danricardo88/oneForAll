SELECT
  nome_musica AS nome,
  COUNT(*) AS reproducoes
FROM
  SpotifyClone.tabela_usuario AS U
  INNER JOIN SpotifyClone.tabela_plano AS P ON U.plano_id = P.plano_id
  INNER JOIN SpotifyClone.tabela_de_reproducoes AS RP ON RP.usuario_id = U.usuario_id
  INNER JOIN SpotifyClone.tabela_musicas AS M ON M.musica_id = RP.musica_id
WHERE
  P.plano_id = 1
  OR P.plano_id = 4
GROUP BY
  nome
ORDER BY
  nome ASC;
