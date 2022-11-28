CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends (id, name, birthday)
VALUES (1,'Ororo Munroe', '1940-05-30');

SELECT *
FROM friends;

INSERT INTO friends (id, name, birthday)
VALUES (2, 'Bern Alejandre', '1990-02-26');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'Drew Lee', '1994-12-07');

UPDATE friends
SET name = 'Storm'
WHERE id = 1;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'storm@codecademy.com'
where id = 1;

UPDATE friends
SET email = 'Bern@codecademy.com'
where id = 2;

UPDATE friends
SET email = 'Drew@codecademy.com'
where id = 3;

DELETE FROM friends
where id = 1;

SELECT *
FROM friends;
