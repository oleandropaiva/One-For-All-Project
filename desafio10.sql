SELECT SpotifyClone.cancoes_table.cancoes As nome, Count(SpotifyClone.reproducoes_table.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes_table
INNER JOIN SpotifyClone.reproducoes_table
ON SpotifyClone.cancoes_table.cancao_id = SpotifyClone.reproducoes_table.historico_de_reproducoes
INNER JOIN SpotifyClone.usuario_table
ON SpotifyClone.reproducoes_table.usuario_id = SpotifyClone.usuario_table.usuario_id
INNER JOIN SpotifyClone.plano_table
ON SpotifyClone.plano_table.plano_id = SpotifyClone.usuario_table.plano_id
WHERE SpotifyClone.plano_table.plano IN ('gratuito', 'pessoal')
GROUP BY SpotifyClone.cancoes_table.cancoes ORDER BY nome;
