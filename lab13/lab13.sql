.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet  FROM students WHERE pet="dog" and color="blue"
  ;

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song  FROM students WHERE pet="dog" and color="blue"
  ;


CREATE TABLE smallest_int_having AS
  SELECT smallest, count(*) as smallest_count
  FROM students
  GROUP BY smallest 
  having smallest_count=1
  LIMIT 1
  ;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color
  FROM students AS a, students AS b
  WHERE a.time < b.time AND a.pet = b.pet AND a.song = b.song
  ;


CREATE TABLE sevens AS
  SELECT a.seven
  FROM students AS a, numbers AS n
  WHERE n."7"='True' AND a.smallest<=7 AND n.time=a.time
  ;

