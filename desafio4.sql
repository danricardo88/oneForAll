SELECT
U.usuario_nome AS usuario,
IF( MAX(P.data_de_reproducao) >= '2021-01-01',
    'Usuário ativo',
    'Usuário inativo'
  )
AS status_usuario

FROM
SpotifyClone.tabela_usuario
AS U
INNER JOIN SpotifyClone.tabela_de_reproducoes
AS P ON P.usuario_id = U.usuario_id
GROUP BY
U.usuario_nome
ORDER BY
U.usuario_nome;
