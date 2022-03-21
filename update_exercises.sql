USE codeup_test_db;


SELECT name AS 'All Albums' FROM albums;
SELECT name AS 'All Albums released before 1980' FROM albums WHERE artist = 'Pink Floyd';
SELECT name AS 'Michael Jackson\'s albums' FROM albums WHERE artist = 'Michael Jackson';
-- SELECT name AS 'ALL albums from Michael Jackson' FROM albums WHERE;
-- SELECT name FROM albums WHERE *;

UPDATE albums
SET sales = sales *10
WHERE sales > 0;

SELECT sales FROM albums;
SELECT * FROM albums;


UPDATE albums
SET release_date = release_date -180
WHERE release_date < 1980;
-- WHERE release_date < 1980;


 SELECT * FROM albums;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist ='Michael Jackson';

SELECT * FROM albums;