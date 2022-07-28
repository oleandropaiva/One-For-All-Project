SELECT 
MIN(SpotifyClone.plano_table.valor_plano) AS faturamento_minimo,
MAX(SpotifyClone.plano_table.valor_plano) AS faturamento_maximo,
ROUND(AVG(SpotifyClone.plano_table.valor_plano), 2) AS faturamento_medio,
SUM(SpotifyClone.plano_table.valor_plano) AS faturamento_total
FROM SpotifyClone.plano_table INNER JOIN SpotifyClone.usuario_table
ON SpotifyClone.usuario_table.plano_id = SpotifyClone.plano_table.plano_id;
