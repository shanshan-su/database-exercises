USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT name AS 'The name of all albums by Pink Floyd' FROM albums
WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT genre AS 'The genre for Nevermind' FROM albums
WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT 'Albums that were released in the 1990s' AS 'Caption';

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
