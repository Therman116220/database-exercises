USE codeup_test_db;

DROP TABLE IF EXISTS album;

CREATE TABLE IF NOT EXISTS album(
    id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR(100) DEFAULT  'artist',
    name VARCHAR(200),
    release_date FLOAT UNSIGNED,
    sales DECIMAL(7,0) ,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);
