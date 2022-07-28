SELECT 
usuarioss.usuario AS usuario, 
COUNT(cancoess.cancao_id) AS qtde_musicas_ouvidas, 
ROUND(SUM(cancoess.duracao_segundos /60), 2) AS total_minutos
	FROM 
		SpotifyClone.usuario_table AS usuarioss
	INNER JOIN 
        SpotifyClone.reproducoes_table AS reproducoess 
      ON usuarioss.usuario_id = reproducoess.usuario_id
	INNER JOIN     
        SpotifyClone.cancoes_table AS cancoess 
      ON cancoess.cancao_id = reproducoess.historico_de_reproducoes
	GROUP BY usuario;

-- fonte: https://www.w3schools.com/sql/func_mysql_round.asp
-- https://www.w3schools.com/sql/sql_groupby.asp
