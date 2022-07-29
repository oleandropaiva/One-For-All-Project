SELECT SpotifyClone.artistas_table.artista_name AS artista,
SpotifyClone.album_table.album_name AS album,
COUNT(SpotifyClone.seguindo_artistas.artistas_seguidos) AS seguidores
FROM SpotifyClone.album_table
INNER JOIN SpotifyClone.album_table ON SpotifyClone.album_table.artista_id = SpotifyClone.artistas_table.artista_id
INNER JOIN SpotifyClone.seguindo_artistas ON SpotifyClone.album_table.artista_id = SpotifyClone.seguindo_artistas.artistas_seguidos

