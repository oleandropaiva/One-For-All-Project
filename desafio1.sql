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

  CREATE TABLE SpotifyClone.plano_table(
    plano VARCHAR(100) NOT NULL,
    valor_plano DECIMAL(3,2) NOT NULL,
    plano_id INT PRIMARY KEY AUTO_INCREMENT
) engine = InnoDB;

INSERT INTO SpotifyClone.plano_table (plano, valor_plano, plano_id)
VALUES 
("gratuito", 0, 1),
("familiar", 7.99, 2),
("pessoal", 6.99, 3),
("universitário", 5.99, 4);

CREATE TABLE SpotifyClone.usuario_table(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(100) NOT NULL,
    idade INT,
    data_assinatura DATE,
    plano_id INT, FOREIGN KEY(plano_id) REFERENCES plano_table(plano_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.usuario_table (usuario_id, usuario, idade, data_assinatura, plano_id)
VALUES
(1, "Thati", 23, "2019-10-20", 1),
(2, "Cintia", 35, "2017-12-30", 2),
(3, "Bill", 20, "2019-06-05", 4),
(4, "Roger", 45, "2020-05-13", 3),
(5, "Norman", 58, "2017-02-17", 3),
(6, "Patrick", 33, "2017-01-06", 2),
(7, "Vivian", 26, "2018-01-05", 4),
(8, "Carol", 19, "2018-02-14", 4),
(9, "Angelina", 42, "2018-04-29", 2),
(10, "Paul", 46, "2017-01-17", 2);

CREATE TABLE SpotifyClone.seguindo_artistas(
    usuario_id INT, FOREIGN KEY(usuario_id) REFERENCES usuario_table(usuario_id),
    artistas_seguidos INT, FOREIGN KEY(artistas_seguidos) REFERENCES artistas_table(artista_id),
    CONSTRAINT PRIMARY KEY(usuario_id, artistas_seguidos)
) engine = InnoDB;

INSERT INTO SpotifyClone.seguindo_artistas (usuario_id, artistas_seguidos)
VALUES
(1,1),
(1,5),
(1,3),
(2,1),
(2,3),
(3,2),
(3,1),
(4,5),
(5,4),
(5,6),
(6,6),
(6,1),
(6,3),
(7,2),
(7,4),
(8,1),
(8,4),
(9,6),
(9,5),
(9,3),
(10,2),
(10,6);

