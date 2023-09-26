CREATE DATABASE PLAYLIST

USE PLAYLIST


CREATE TABLE MUSICA(
	CODIGO INT IDENTITY,
	TITULO VARCHAR(50),
	ARTISTA VARCHAR(50),
	NACIONALIDADE VARCHAR(50),
	ALBUM VARCHAR(50),
	ANOLANCAMENTO INT,
	DURACAO TIME,
	STREAMING BIT,
	CONSTRAINT PK_MUSICA_CODIGO PRIMARY KEY(CODIGO)
)

--DROP TABLE MUSICA

INSERT INTO MUSICA(TITULO, ARTISTA, NACIONALIDADE, ALBUM, ANOLANCAMENTO, DURACAO, STREAMING)

VALUES
	('Black Sabbath', 'Black Sabbath', 'Inglaterra', 'Black Sabbath', 1970, '00:06:17',   1),
	('Foxey Lady', 'Jimi Hendrix', 'Estados Unidos', 'Are You Experienced', 1967, '00:03:19', 1),
	('Working Man',               'Rush',            'Canadá',           'Rush',                  1974,             '00:07:09',   1),
	('Communication Breakdown',   'Led Zeppelin',    'Inglaterra',       'Led Zeppelin',          1969,             '00:02:30',   0),
	('Hey Joe',                   'Jimi Hendrix',    'Estados Unidos',   'Are You Experienced',   1968,             '00:03:30',   1),
	('The Trees',                 'Rush',            'Canadá',           'Hemispheres',           1978,             '00:04:42',   1),
	('War Pigs',                  'Black Sabbath',   'Inglaterra',       'Paranoid',              1970,             '00:07:54',   0),
	('Immigrant Song',            'Led Zeppelin',    'Inglaterra',       'Led Zeppelin III',      1970,             '00:02:26',   1),
	('Sweet Leaf',                'Black Sabbath',   'Inglaterra',       'Master Of Reality',     1971,             '00:05:03',   1),
	('Anthem',                    'Rush',            'Canadá',           'Fly By Nigth',          1975,             '00:04:21',   0),
	('Litle Wing',                'Jimi Hendrix',    'Estados Unidos',   'Axis: Bold As Love',    1967,             '00:02:25',   1),
	('Whole Lotta Love',          'Led Zeppelin',    'Inglaterra',       'Led Zeppelin II',       1969,            '00:05:34',   1)


