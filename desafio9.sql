SELECT COUNT(SpotifyClone.reproducoes_table.historico_de_reproducoes)
AS quantidade_musicas_no_historico
FROM SpotifyClone.reproducoes_table
INNER JOIN SpotifyClone.usuario_table 
ON SpotifyClone.usuario_table.usuario_id = SpotifyClone.reproducoes_table.usuario_id
WHERE SpotifyClone.reproducoes_table.usuario_id = 3;
