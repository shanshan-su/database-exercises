USE codeup_test_db;
TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop, post-disco, funk, rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('AC/DC', 'Back in Black', 1980, 29.4, 'Hard rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard rock, glam rock, progressive rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.4, 'Progressive rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Whitney Houston', 'The Bodyguard', 1992, 28.4, 'R&B, soul, pop, soundtrack');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 41.2, 'Country rock, soft rock, folk rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country, pop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture',1978, 14.4, 'Rock and roll');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard rock, heavy metal, folk rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Bad', 1987, 22.2, 'Pop, rhythm and blues, funk and rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.4, 'Alternative rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Dangerous', 1991, 17.0, 'New jack swing, R&B and pop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Celine Dion', 'Falling into You', 1996, 21.2, 'Pop, soft rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Eagles', 'Hotel California', 1976, 31.5, 'Soft rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 18.2, 'Rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Various artists', 'Dirty Dancing', 1987, 17.9, 'Pop, rock, R&B');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Adele', '21', 2011, 30.8, 'Pop, soul');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Madonna', 'The Immaculate Collection', 1990, 19.4, 'Pop, dance');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Celine Dion', 'Let''s Talk About Love', 1997, 19.3, 'Pop, soft rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Metallica', 'Metallica', 1991, 25.2, 'Heavy metal');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('The Beatles', '1', 2000, 23.4, 'Rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('ABBA', 'Gold: Greatest Hits', 1992, 23.0, 'Pop, disco');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 19.6, 'Heartland rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 18.1, 'Film score');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Roots rock, blues rock, soft rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge, alternative rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Santana', 'Supernatural', 1999, 20.5, 'Latin rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Guns N'' Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Elton John', 'Goodbye Yellow Brick Road', 1973,  8.5, 'Rock, pop rock, glam rock');

-- delete all the duplicate records
TRUNCATE albums;

-- insert new records
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop, post-disco, funk, rock'),
       ('AC/DC', 'Back in Black', 1980, 29.4, 'Hard rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard rock, glam rock, progressive rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.4, 'Progressive rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 28.4, 'R&B, soul, pop, soundtrack'),
       ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 41.2, 'Country rock, soft rock, folk rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
       ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft rock'),
       ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country, pop'),
       ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture',1978, 14.4, 'Rock and roll'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard rock, heavy metal, folk rock'),
       ('Michael Jackson', 'Bad', 1987, 22.2, 'Pop, rhythm and blues, funk and rock'),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.4, 'Alternative rock'),
       ('Michael Jackson', 'Dangerous', 1991, 17.0, 'New jack swing, R&B and pop'),
       ('Celine Dion', 'Falling into You', 1996, 21.2, 'Pop, soft rock'),
       ('Eagles', 'Hotel California', 1976, 31.5, 'Soft rock'),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 18.2, 'Rock'),
       ('Various artists', 'Dirty Dancing', 1987, 17.9, 'Pop, rock, R&B'),
       ('Adele', '21', 2011, 30.8, 'Pop, soul'),
       ('Madonna', 'The Immaculate Collection', 1990, 19.4, 'Pop, dance'),
       ('Celine Dion', 'Let''s Talk About Love', 1997, 19.3, 'Pop, soft rock'),
       ('Metallica', 'Metallica', 1991, 25.2, 'Heavy metal'),
       ('The Beatles', '1', 2000, 23.4, 'Rock'),
       ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 23.0, 'Pop, disco'),
       ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 19.6, 'Heartland rock'),
       ('Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive rock'),
       ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 18.1, 'Film score'),
       ('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Roots rock, blues rock, soft rock'),
       ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge, alternative rock'),
       ('Santana', 'Supernatural', 1999, 20.5, 'Latin rock'),
       ('Guns N'' Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard rock'),
       ('Elton John', 'Goodbye Yellow Brick Road', 1973, 8.5, 'Rock, pop rock, glam rock');

