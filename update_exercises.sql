USE codeup_test_bd;

SELECT name AS 'All Albums' FROM albums  WHERE artist = 'Pink Floyd';
SELECT name AS 'ALL albums released before 1980' FROM albums WHERE release_date <= '1980 -01-01';
SELECT name AS 'ALL albums from Michael Jackson' FROM albums WHERE
-- SELECT name FROM albums WHERE *;