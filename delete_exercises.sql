USE codeup_test_db;

-- Write SELECT statements for:
-- Albums released after 1991
SELECT * FROM albums
WHERE release_date > 1991;

DELETE FROM albums
WHERE release_date > 1991;

-- Albums with the genre 'disco'
SELECT * FROM albums
WHERE genre = 'disco';

DELETE FROM albums
WHERE genre = 'disco';

-- Albums by 'Madonna'
SELECT * FROM albums
WHERE artist = 'Madonna';

DELETE FROM albums
WHERE artist = 'Madonna';