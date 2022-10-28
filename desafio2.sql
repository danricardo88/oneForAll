SELECT
(SELECT COUNT(*) FROM tabela_musicas) AS cancoes,
(SELECT COUNT(*) FROM tabela_artista) AS artistas,
(SELECT COUNT(*) FROM tabela_albuns) AS albuns;


-- SELECT
-- COUNT(DISTINCT C.nome_musica) AS cancoes,
-- COUNT(DISTINCT A.artista_nome) AS artistas,
-- COUNT(DISTINCT AL.album_nome) AS albuns
-- FROM
--   SpotifyClone.tabela_artista AS A
--   JOIN SpotifyClone.tabela_albuns AS AL
--   JOIN SpotifyClone.tabela_musicas AS C;
