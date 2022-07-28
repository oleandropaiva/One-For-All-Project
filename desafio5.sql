SELECT SpotifyClone.cancoes_table.cancoes AS cancao, COUNT(SpotifyClone.reproducoes_table.historico_de_reproducoes) AS reproducoes
FROM  SpotifyClone.cancoes_table INNER JOIN SpotifyClone.reproducoes_table
ON SpotifyClone.cancoes_table.cancao_id = SpotifyClone.reproducoes_table.historico_de_reproducoes 
GROUP BY cancao ORDER BY reproducoes DESC, cancao LIMIT 2;


