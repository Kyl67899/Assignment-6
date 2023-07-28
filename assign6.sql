SELECT count(*) FROM movies_actors
UNION ALL
SELECT count(*) FROM directors
UNION ALL
SELECT count(*) FROM movies
UNION ALL
SELECT count(*) FROM movie_revenues
UNION ALL
SELECT count(*) FROM movies_actors

-- Part B.

-- Select the movie and release date of every movie

SELECT movie_name, release_date
FROM movie
ORDER BY release_date

-- Select first and last name of all american directors

SELECT first_name, last_name
FROM directors

-- Select all male born after 1st of jan 1970
SELECT *
FROM movies_actors
WHERE gender = 'M'
AND date_of_birth >= '1970-01-01'
ORDER BY date_of_birth;

-- Select names of all movies that are over 90 minutes long and movies == english
SELECT *
FROM movies
WHERE movie_length >= 90
AND movie_lang = 'English';

-- Part C.

-- Select movies name and languages == English, spanish, or korean
SELECT *
FROM movies
WHERE (movie_lang = 'English' AND movie_lang = 'Spanish' 
OR movie_lang = 'Korean');

-- Select first and last names of the actors last name begins w/ M 
-- & born btwn 01/01/1940 and 12/31/1980
SELECT *, first_name, last_name as Name
FROM movies_actors
WHERE last_name = '%M'
AND date_of_birth BETWEEN '1940-01-01' AND '1969-12-31';

-- Select first and last name of directors w/ nationality == Britsh, french 
-- or german born bwtn 01/01/1950 and 12/31/1980
SELECT *, first_name, last_name as Name
FROM directors
WHERE nationality IN ('British', 'French', 'German')
AND date_of_birth BETWEEN '1950-01-01' AND '1980-12-31';