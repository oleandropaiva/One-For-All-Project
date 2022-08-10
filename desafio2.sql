SELECT 
COUNT(DISTINCT cancoess.cancoes) AS cancoes, 
COUNT(DISTINCT artistass.artista_id) AS artistas, 
COUNT(DISTINCT albunss.album_id) AS albuns
FROM SpotifyClone.cancoes_table AS cancoess
INNER JOIN SpotifyClone.album_table AS albunss ON albunss.album_id = cancoess.album_id
INNER JOIN SpotifyClone.artistas_table AS artistass ON artistass.artista_id = albunss.artista_id;

