SELECT
  MIN(FORMAT(P.valor, 2))
AS faturamento_minimo,
  MAX(FORMAT(P.valor, 2))
AS faturamento_maximo,
  FORMAT(AVG(P.valor), 2)
AS faturamento_medio,
  FORMAT(SUM(P.valor), 2)
AS faturamento_total

FROM
SpotifyClone.tabela_plano AS P

INNER JOIN
SpotifyClone.tabela_usuario AS U ON P.plano_id = U.plano_id;
