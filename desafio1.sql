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

  CREATE TABLE SpotifyClone.album_table(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(100) NOT NULL,
    ano_lancamento INT,
    artista_id INT, FOREIGN KEY(artista_id) REFERENCES artistas_table(artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.album_table (album_name, artista_id, ano_lancamento)
VALUES
  ('Envious', 1, 1990),
  ('Exuberant', 1, 1993),
  ('Hallowed Steam', 2, 1995),
  ('Incandescent', 3, 1998),
  ('Temporary Culture', 5, 2001),
  ('Library of liberty', 5, 2003),
  ('Chained Down', 4, 2007),
  ('Cabinet of fools', 4, 2012),
  ('No guarantees', 4, 2015),
  ('Apparatus', 6, 2015);
