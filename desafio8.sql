SELECT SpotifyClone.artistas_table.artista_name AS artista,
SpotifyClone.album_table.album_name AS album FROM SpotifyClone.artistas_table 
INNER JOIN SpotifyClone.album_table ON SpotifyClone.artistas_table.artista_id = SpotifyClone.album_table.artista_id
WHERE SpotifyClone.artistas_table.artista_name = "Walter Phoenix" ORDER BY album;
