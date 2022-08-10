SELECT usuarioss.usuario AS usuario,
IF (YEAR(MAX(reproducoess.data_reproducao)) = 2021,
"Usuário ativo", "Usuário inativo") AS condicao_usuario
FROM SpotifyClone.usuario_table AS usuarioss
INNER JOIN SpotifyClone.reproducoes_table AS reproducoess ON usuarioss.usuario_id = reproducoess.usuario_id
GROUP BY usuario ASC;

