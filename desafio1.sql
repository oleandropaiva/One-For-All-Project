DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.artistas_table(
    artista_name VARCHAR(100) NOT NULL,
    artista_id INT PRIMARY KEY AUTO_INCREMENT
) engine = InnoDB;


INSERT INTO SpotifyClone.artistas_table (artista_name) 
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Tyler Isle'),
  ('Freedie Shannon'),
  ('Fog');
