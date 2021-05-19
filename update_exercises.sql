USE codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:
-- After each SELECT add an UPDATE statement to:
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.

-- All albums in your table.
SELECT * FROM albums;

-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = sales * 10;

SELECT * FROM albums;

-- All albums released before 1980
SELECT * FROM albums
WHERE release_date < 1980;

-- Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;

SELECT * FROM albums
WHERE release_date = 1800;

-- All albums by Michael Jackson
SELECT * FROM albums
WHERE artist = 'Michael Jackson';


UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums
WHERE artist = 'Peter Jackson';

