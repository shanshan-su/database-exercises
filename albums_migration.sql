-- use codeup test db
USE codeup_test_db;

-- Write some SQL to drop a table named albums if it exists.
DROP TABLE IF EXISTS albums;

-- Create an albums table with the following columns:
-- id — auto-incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100),
    name VARCHAR(100) NOT NULL,
    release_date SMALLINT UNSIGNED NOT NULL,
    sales FLOAT UNSIGNED,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);

