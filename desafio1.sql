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

CREATE TABLE SpotifyClone.cancoes_table(
    cancoes VARCHAR(100) NOT NULL,
    duracao_segundos INT NOT NULL,
    album_id INT, FOREIGN KEY(album_id) REFERENCES album_table(album_id),
    cancao_id INT PRIMARY KEY AUTO_INCREMENT
) engine = InnoDB;

INSERT INTO SpotifyClone.cancoes_table (cancoes, duracao_segundos, album_id, cancao_id)
VALUES
("Soul For Us", 200, 1, 1),
("Reflections Of Magic",163, 1, 2),
("Dance With Her Own",116,1,3),
("Troubles Of My Inner Fire", 203, 2, 4),
("Time Fireworks", 152, 2, 5),
("Magic Circus", 105, 3, 6),
("Honey, So Do I", 207, 3, 7),
("Sweetie, Let's Go Wild", 139, 3, 8),
("She Knows", 244, 3, 9),
("Fantasy For Me", 100, 4, 10),
("Celebration Of More", 146, 4, 11),
("Rock His Everything", 223, 4, 12),
("Home Forever", 231, 4, 13),
("Diamond Power", 241, 4, 14),
("Let's Be Silly", 132, 4, 15),
("Thang Of Thunder", 240, 5, 16),
("Words Of Her Life", 185, 5, 17),
("Without My Streets", 176, 5, 18),
("Need Of The Evening", 190, 6, 19),
("History Of My Roses", 222, 6, 20),
("Without My Love", 111, 6, 21),
("Walking And Game", 123, 6, 22),
("Young And Father", 197, 6, 23),
("Finding My Traditions", 179, 7, 24),
("Walking And Man", 229, 7, 25),
("Hard And Time", 135, 7, 26),
("Honey, I'm A Lone Wolf", 150, 7, 27),
("She Thinks I Won't Stay Tonight", 166, 8, 28),
( "He Heard You're Bad For Me", 154, 8, 29),
("He Hopes We Can't Stay", 210, 8, 30),
("I Know I Know", 117, 8, 31),
("He's Walking Away", 159, 9, 32),
("He's Trouble", 138, 9, 33),
("I Heard I Want To Bo Alone", 120, 9, 34),
("I Ride Alone", 151, 9, 35),
("'Honey", 79, 10, 36),
("You Cheated On Me", 95, 10, 37),
("Wouldn't It Be Nice", 213, 10, 38),
("Baby", 136, 10, 39),
("You Make Me Feel So..", 83, 10, 40);
