SELECT
  COUNT(*) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.tabela_usuario A
  INNER JOIN SpotifyClone.tabela_de_reproducoes AS R ON A.usuario_id = R.usuario_id
WHERE
  A.usuario_nome = "Barbara Liskov";
