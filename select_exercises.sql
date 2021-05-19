USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT 'The name of all albums by Pink Floyd' AS 'Caption';

SELECT name FROM albums
WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Caption';

SELECT release_date FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT 'The genre for Nevermind' AS 'Caption';

SELECT genre FROM albums
WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT 'Albums that were released in the 1990s';

SELECT * FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
SELECT 'Albums that had less than 20 million certified sales' AS 'Caption';

SELECT * FROM albums
WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT 'All the albums with a genre of "Rock"' AS 'Caption';

SELECT * FROM albums
WHERE genre >= 'Rock';
