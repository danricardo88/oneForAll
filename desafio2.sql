SELECT
(SELECT COUNT(*) FROM tabela_musicas) AS cancoes,
(SELECT COUNT(*) FROM tabela_artista) AS artistas,
(SELECT COUNT(*) FROM tabela_albuns) AS albuns;
